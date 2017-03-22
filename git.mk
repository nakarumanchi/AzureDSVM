########################################################################
# Version Control - git

status:
	@echo "-------------------------------------------------------"
	git status --untracked-files=no
ifneq ($(APP),)
	@echo "-------------------------------------------------------"
	(cd $(APP); git status --untracked-files=no)
endif
	@echo "-------------------------------------------------------"

pull:
	@echo "-------------------------------------------------------"
	git pull
ifneq ($(APP),)
	@echo "-------------------------------------------------------"
	(cd $(APP); git pull)
endif
	@echo "-------------------------------------------------------"

push:
	@echo "-------------------------------------------------------"
	git push
ifneq ($(APP),)
	@echo "-------------------------------------------------------"
	(cd $(APP); git push)
endif
	@echo "-------------------------------------------------------"

diff:
	@echo "-------------------------------------------------------"
	git --no-pager diff --color
ifneq ($(APP),)
	@echo "-------------------------------------------------------"
	(cd rattle; git --no-pager diff --color)
endif
	@echo "-------------------------------------------------------"

difftool:
	git difftool
ifneq ($(APP),)
	(cd rattle; git difftool)
endif

log:
	@echo "-------------------------------------------------------"
	git --no-pager log --stat --max-count=10
ifneq ($(APP),)
	@echo "-------------------------------------------------------"
	(cd $(APP); git --no-pager log --stat --max-count=10)
endif
	@echo "-------------------------------------------------------"

fulllog:
	@echo "-------------------------------------------------------"
	git --no-pager log
ifneq ($(APP),)
	@echo "-------------------------------------------------------"
	(cd $(APP); git --no-pager log)
endif
	@echo "-------------------------------------------------------"

