; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_find_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_find_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.sway_workspace = type { i32 }

@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_workspace* @root_find_workspace(i32 (%struct.sway_workspace*, i8*)* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca i32 (%struct.sway_workspace*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_output*, align 8
  store i32 (%struct.sway_workspace*, i8*)* %0, i32 (%struct.sway_workspace*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sway_workspace* null, %struct.sway_workspace** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.sway_output**, %struct.sway_output*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %22, i64 %24
  %26 = load %struct.sway_output*, %struct.sway_output** %25, align 8
  store %struct.sway_output* %26, %struct.sway_output** %8, align 8
  %27 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %28 = load i32 (%struct.sway_workspace*, i8*)*, i32 (%struct.sway_workspace*, i8*)** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call %struct.sway_workspace* @output_find_workspace(%struct.sway_output* %27, i32 (%struct.sway_workspace*, i8*)* %28, i8* %29)
  store %struct.sway_workspace* %30, %struct.sway_workspace** %6, align 8
  %31 = icmp ne %struct.sway_workspace* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  store %struct.sway_workspace* %33, %struct.sway_workspace** %3, align 8
  br label %39

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %9

38:                                               ; preds = %9
  store %struct.sway_workspace* null, %struct.sway_workspace** %3, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  ret %struct.sway_workspace* %40
}

declare dso_local %struct.sway_workspace* @output_find_workspace(%struct.sway_output*, i32 (%struct.sway_workspace*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
