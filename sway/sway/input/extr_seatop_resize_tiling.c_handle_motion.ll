; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_tiling.c_handle_motion.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_resize_tiling.c_handle_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.TYPE_5__*, %struct.seatop_resize_tiling_event* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.seatop_resize_tiling_event = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, double, double)* @handle_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_motion(%struct.sway_seat* %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.seatop_resize_tiling_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %15 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %14, i32 0, i32 1
  %16 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %15, align 8
  store %struct.seatop_resize_tiling_event* %16, %struct.seatop_resize_tiling_event** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %25 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %29 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %36 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %40 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %39, i32 0, i32 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %4
  %44 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %45 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %52 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %57 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %56, i32 0, i32 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %55, %60
  store i32 %61, i32* %10, align 4
  br label %82

62:                                               ; preds = %43
  %63 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %64 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %71 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %76 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %75, i32 0, i32 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %74, %79
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %69, %62
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %4
  %84 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %85 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %84, i32 0, i32 6
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %128

88:                                               ; preds = %83
  %89 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %90 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @WLR_EDGE_TOP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %97 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %102 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %101, i32 0, i32 6
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %100, %105
  store i32 %106, i32* %11, align 4
  br label %127

107:                                              ; preds = %88
  %108 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %109 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %107
  %115 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %116 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %121 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %120, i32 0, i32 6
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %119, %124
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %114, %107
  br label %127

127:                                              ; preds = %126, %95
  br label %128

128:                                              ; preds = %127, %83
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %133 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %132, i32 0, i32 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %136 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @container_resize_tiled(%struct.TYPE_6__* %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %131, %128
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %145 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %144, i32 0, i32 6
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load %struct.seatop_resize_tiling_event*, %struct.seatop_resize_tiling_event** %9, align 8
  %148 = getelementptr inbounds %struct.seatop_resize_tiling_event, %struct.seatop_resize_tiling_event* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @container_resize_tiled(%struct.TYPE_6__* %146, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %140
  ret void
}

declare dso_local i32 @container_resize_tiled(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
