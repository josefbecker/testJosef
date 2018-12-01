all: draw_tree oc_commands list
draw_tree:
	./tree.sh ${hoch} ${breit}
oc_commands:
	oc projects
	oc get pods
	oc explain pod
list:
	echo '__________________________________________'
	cat Makefile | grep '[a-z]:'
