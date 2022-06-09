#^ DEPENDENCIES
function title() {
	# clear
	echo $1
}

function installExtensions() {
	extensions=$1
	for extension in "${extensions[@]}"; do
		code --install-extension $extension
	done
}

function tasks() {
	title "Tasks"

	extensions=(
		"spmeesseman.vscode-taskexplorer" 				# Task Explorer - tasks on Activity Bar
		"actboy168.tasks" 								# Tasks - tasks on statusbar
	)
	installExtensions "${extensions[@]}"
}