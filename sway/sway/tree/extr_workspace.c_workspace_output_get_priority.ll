; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_get_priority.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_get_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32 }
%struct.sway_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@find_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_workspace*, %struct.sway_output*)* @workspace_output_get_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspace_output_get_priority(%struct.sway_workspace* %0, %struct.sway_output* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store %struct.sway_output* %1, %struct.sway_output** %4, align 8
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %9 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %10 = call i32 @output_get_identifier(i8* %8, i32 128, %struct.sway_output* %9)
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %12 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @find_output, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %16 = call i32 @list_seq_find(i32 %13, i32 %14, i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %18 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @find_output, align 4
  %21 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %22 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @list_seq_find(i32 %19, i32 %20, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %6, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  ret i32 %38
}

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local i32 @list_seq_find(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
