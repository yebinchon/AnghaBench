; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_add_priority.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_add_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32 }
%struct.sway_output = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_output_add_priority(%struct.sway_workspace* %0, %struct.sway_output* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca [128 x i8], align 16
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store %struct.sway_output* %1, %struct.sway_output** %4, align 8
  %6 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %7 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %8 = call i64 @workspace_output_get_priority(%struct.sway_workspace* %6, %struct.sway_output* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %12 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %13 = call i32 @output_get_identifier(i8* %11, i32 128, %struct.sway_output* %12)
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %15 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %18 = call i32 @strdup(i8* %17)
  %19 = call i32 @list_add(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @workspace_output_get_priority(%struct.sway_workspace*, %struct.sway_output*) #1

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local i32 @list_add(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
