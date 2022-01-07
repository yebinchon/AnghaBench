; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_prevent_invalid_outer_gaps.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_prevent_invalid_outer_gaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspace_config = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workspace_config*)* @prevent_invalid_outer_gaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prevent_invalid_outer_gaps(%struct.workspace_config* %0) #0 {
  %2 = alloca %struct.workspace_config*, align 8
  store %struct.workspace_config* %0, %struct.workspace_config** %2, align 8
  %3 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %4 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @INT_MIN, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %11 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %15 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %21 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %25 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %9, %1
  %28 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %29 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INT_MIN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %36 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %40 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %46 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %50 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %34, %27
  %53 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %54 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INT_MIN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %61 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %65 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %71 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 0, %72
  %74 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %75 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %59, %52
  %78 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %79 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @INT_MIN, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %77
  %85 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %86 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %90 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %96 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 0, %97
  %99 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  %100 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %84, %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
