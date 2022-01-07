; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_find_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_find_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_workspace = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.TYPE_4__ = type { i32, %struct.sway_container** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @workspace_find_container(%struct.sway_workspace* %0, i32 (%struct.sway_container*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca i32 (%struct.sway_container*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %5, align 8
  store i32 (%struct.sway_container*, i8*)* %1, i32 (%struct.sway_container*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sway_container* null, %struct.sway_container** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %47, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %16 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %13
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %23 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.sway_container**, %struct.sway_container*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %26, i64 %28
  %30 = load %struct.sway_container*, %struct.sway_container** %29, align 8
  store %struct.sway_container* %30, %struct.sway_container** %10, align 8
  %31 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %32 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 %31(%struct.sway_container* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  store %struct.sway_container* %37, %struct.sway_container** %4, align 8
  br label %89

38:                                               ; preds = %21
  %39 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %40 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call %struct.sway_container* @container_find_child(%struct.sway_container* %39, i32 (%struct.sway_container*, i8*)* %40, i8* %41)
  store %struct.sway_container* %42, %struct.sway_container** %8, align 8
  %43 = icmp ne %struct.sway_container* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %45, %struct.sway_container** %4, align 8
  br label %89

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %13

50:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %85, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %54 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %51
  %60 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %61 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.sway_container**, %struct.sway_container*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %64, i64 %66
  %68 = load %struct.sway_container*, %struct.sway_container** %67, align 8
  store %struct.sway_container* %68, %struct.sway_container** %12, align 8
  %69 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 %69(%struct.sway_container* %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  store %struct.sway_container* %75, %struct.sway_container** %4, align 8
  br label %89

76:                                               ; preds = %59
  %77 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %78 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call %struct.sway_container* @container_find_child(%struct.sway_container* %77, i32 (%struct.sway_container*, i8*)* %78, i8* %79)
  store %struct.sway_container* %80, %struct.sway_container** %8, align 8
  %81 = icmp ne %struct.sway_container* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %83, %struct.sway_container** %4, align 8
  br label %89

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %51

88:                                               ; preds = %51
  store %struct.sway_container* null, %struct.sway_container** %4, align 8
  br label %89

89:                                               ; preds = %88, %82, %74, %44, %36
  %90 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  ret %struct.sway_container* %90
}

declare dso_local %struct.sway_container* @container_find_child(%struct.sway_container*, i32 (%struct.sway_container*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
