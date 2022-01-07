; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_node_get_in_direction_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_node_get_in_direction_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32 }
%struct.sway_container = type { i32, i32, i32, i32, %struct.sway_node, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_seat = type { i32 }

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_node* (%struct.sway_container*, %struct.sway_seat*, i32)* @node_get_in_direction_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_node* @node_get_in_direction_floating(%struct.sway_container* %0, %struct.sway_seat* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca float, align 4
  store %struct.sway_container* %0, %struct.sway_container** %5, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %17, %21
  %23 = sitofp i32 %22 to double
  store double %23, double* %8, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 %26, %30
  %32 = sitofp i32 %31 to double
  store double %32, double* %9, align 8
  %33 = load double, double* @DBL_MAX, align 8
  store double %33, double* %10, align 8
  store %struct.sway_container* null, %struct.sway_container** %11, align 8
  %34 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  store %struct.sway_node* null, %struct.sway_node** %4, align 8
  br label %137

39:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %125, %39
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %43 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %128

50:                                               ; preds = %40
  %51 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.sway_container**, %struct.sway_container*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %57, i64 %59
  %61 = load %struct.sway_container*, %struct.sway_container** %60, align 8
  store %struct.sway_container* %61, %struct.sway_container** %13, align 8
  %62 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %63 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %64 = icmp eq %struct.sway_container* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %125

66:                                               ; preds = %50
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70, %66
  %75 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 2
  %82 = add nsw i32 %77, %81
  %83 = sitofp i32 %82 to double
  %84 = load double, double* %8, align 8
  %85 = fsub double %83, %84
  br label %98

86:                                               ; preds = %70
  %87 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %88 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %91 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  %94 = add nsw i32 %89, %93
  %95 = sitofp i32 %94 to double
  %96 = load double, double* %9, align 8
  %97 = fsub double %95, %96
  br label %98

98:                                               ; preds = %86, %74
  %99 = phi double [ %85, %74 ], [ %97, %86 ]
  %100 = fptrunc double %99 to float
  store float %100, float* %14, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %98
  %109 = load float, float* %14, align 4
  %110 = fneg float %109
  store float %110, float* %14, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = load float, float* %14, align 4
  %113 = fcmp olt float %112, 0.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %125

115:                                              ; preds = %111
  %116 = load float, float* %14, align 4
  %117 = fpext float %116 to double
  %118 = load double, double* %10, align 8
  %119 = fcmp olt double %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load float, float* %14, align 4
  %122 = fpext float %121 to double
  store double %122, double* %10, align 8
  %123 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  store %struct.sway_container* %123, %struct.sway_container** %11, align 8
  br label %124

124:                                              ; preds = %120, %115
  br label %125

125:                                              ; preds = %124, %114, %65
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %40

128:                                              ; preds = %40
  %129 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %130 = icmp ne %struct.sway_container* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %133 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %132, i32 0, i32 4
  br label %135

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %131
  %136 = phi %struct.sway_node* [ %133, %131 ], [ null, %134 ]
  store %struct.sway_node* %136, %struct.sway_node** %4, align 8
  br label %137

137:                                              ; preds = %135, %38
  %138 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  ret %struct.sway_node* %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
