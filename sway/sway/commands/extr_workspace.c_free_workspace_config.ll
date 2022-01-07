; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_free_workspace_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_free_workspace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspace_config = type { i32, %struct.workspace_config* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_workspace_config(%struct.workspace_config* %0) #0 {
  %2 = alloca %struct.workspace_config*, align 8
  store %struct.workspace_config* %0, %struct.workspace_config** %2, align 8
  %3 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %4 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %3, i32 0, i32 1
  %5 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %6 = call i32 @free(%struct.workspace_config* %5)
  %7 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %8 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @list_free_items_and_destroy(i32 %9)
  %11 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %12 = call i32 @free(%struct.workspace_config* %11)
  ret void
}

declare dso_local i32 @free(%struct.workspace_config*) #1

declare dso_local i32 @list_free_items_and_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
