; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_floating_container_at.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_floating_container_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32, i32, i32, i32, i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@root = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_container* (double, double, %struct.wlr_surface**, double*, double*)* @floating_container_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_container* @floating_container_at(double %0, double %1, %struct.wlr_surface** %2, double* %3, double* %4) #0 {
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.wlr_surface**, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sway_output*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sway_workspace*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sway_container*, align 8
  %18 = alloca %struct.wlr_box, align 4
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store %struct.wlr_surface** %2, %struct.wlr_surface*** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %117, %5
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %120

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.sway_output**, %struct.sway_output*** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %32, i64 %34
  %36 = load %struct.sway_output*, %struct.sway_output** %35, align 8
  store %struct.sway_output* %36, %struct.sway_output** %13, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %113, %27
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %40 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %116

45:                                               ; preds = %37
  %46 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %47 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.sway_workspace**, %struct.sway_workspace*** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %50, i64 %52
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %53, align 8
  store %struct.sway_workspace* %54, %struct.sway_workspace** %15, align 8
  %55 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %56 = call i32 @workspace_is_visible(%struct.sway_workspace* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %45
  br label %113

59:                                               ; preds = %45
  %60 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %61 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %109, %59
  %67 = load i32, i32* %16, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %66
  %70 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %71 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.sway_container**, %struct.sway_container*** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %74, i64 %76
  %78 = load %struct.sway_container*, %struct.sway_container** %77, align 8
  store %struct.sway_container* %78, %struct.sway_container** %17, align 8
  %79 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %18, i32 0, i32 0
  %80 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %79, align 4
  %83 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %18, i32 0, i32 1
  %84 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %85 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %83, align 4
  %87 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %18, i32 0, i32 2
  %88 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %89 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %87, align 4
  %91 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %18, i32 0, i32 3
  %92 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %93 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %91, align 4
  %95 = load double, double* %7, align 8
  %96 = load double, double* %8, align 8
  %97 = call i64 @wlr_box_contains_point(%struct.wlr_box* %18, double %95, double %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %69
  %100 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %101 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %100, i32 0, i32 0
  %102 = load double, double* %7, align 8
  %103 = load double, double* %8, align 8
  %104 = load %struct.wlr_surface**, %struct.wlr_surface*** %9, align 8
  %105 = load double*, double** %10, align 8
  %106 = load double*, double** %11, align 8
  %107 = call %struct.sway_container* @tiling_container_at(i32* %101, double %102, double %103, %struct.wlr_surface** %104, double* %105, double* %106)
  store %struct.sway_container* %107, %struct.sway_container** %6, align 8
  br label %121

108:                                              ; preds = %69
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %16, align 4
  br label %66

112:                                              ; preds = %66
  br label %113

113:                                              ; preds = %112, %58
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %37

116:                                              ; preds = %37
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %19

120:                                              ; preds = %19
  store %struct.sway_container* null, %struct.sway_container** %6, align 8
  br label %121

121:                                              ; preds = %120, %99
  %122 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  ret %struct.sway_container* %122
}

declare dso_local i32 @workspace_is_visible(%struct.sway_workspace*) #1

declare dso_local i64 @wlr_box_contains_point(%struct.wlr_box*, double, double) #1

declare dso_local %struct.sway_container* @tiling_container_at(i32*, double, double, %struct.wlr_surface**, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
