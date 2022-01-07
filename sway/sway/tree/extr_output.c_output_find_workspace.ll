; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_find_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_find_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32 }
%struct.sway_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sway_workspace** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_workspace* @output_find_workspace(%struct.sway_output* %0, i32 (%struct.sway_workspace*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i32 (%struct.sway_workspace*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %5, align 8
  store i32 (%struct.sway_workspace*, i8*)* %1, i32 (%struct.sway_workspace*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %36, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %13 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %20 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.sway_workspace**, %struct.sway_workspace*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %23, i64 %25
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %26, align 8
  store %struct.sway_workspace* %27, %struct.sway_workspace** %9, align 8
  %28 = load i32 (%struct.sway_workspace*, i8*)*, i32 (%struct.sway_workspace*, i8*)** %6, align 8
  %29 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 %28(%struct.sway_workspace* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  store %struct.sway_workspace* %34, %struct.sway_workspace** %4, align 8
  br label %40

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %10

39:                                               ; preds = %10
  store %struct.sway_workspace* null, %struct.sway_workspace** %4, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  ret %struct.sway_workspace* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
