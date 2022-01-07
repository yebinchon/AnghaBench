; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_check_constraint_region.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_check_constraint_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32, %struct.TYPE_7__*, %struct.wlr_pointer_constraint_v1* }
%struct.TYPE_7__ = type { double, double }
%struct.wlr_pointer_constraint_v1 = type { i64, i32, i32 }
%struct.sway_view = type { %struct.TYPE_5__, %struct.sway_container* }
%struct.TYPE_5__ = type { double, double }
%struct.sway_container = type { double, double }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@WLR_POINTER_CONSTRAINT_V1_CONFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_cursor*)* @check_constraint_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_constraint_region(%struct.sway_cursor* %0) #0 {
  %2 = alloca %struct.sway_cursor*, align 8
  %3 = alloca %struct.wlr_pointer_constraint_v1*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %2, align 8
  %13 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %14 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %13, i32 0, i32 2
  %15 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %14, align 8
  store %struct.wlr_pointer_constraint_v1* %15, %struct.wlr_pointer_constraint_v1** %3, align 8
  %16 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %17 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %16, i32 0, i32 2
  store i32* %17, i32** %4, align 8
  %18 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %19 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.sway_view* @view_from_wlr_surface(i32 %20)
  store %struct.sway_view* %21, %struct.sway_view** %5, align 8
  %22 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %23 = icmp ne %struct.sway_view* %22, null
  br i1 %23, label %24, label %117

24:                                               ; preds = %1
  %25 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %26 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %25, i32 0, i32 1
  %27 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  store %struct.sway_container* %27, %struct.sway_container** %6, align 8
  %28 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %29 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = fsub double %32, %35
  %37 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %38 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fadd double %36, %40
  store double %41, double* %7, align 8
  %42 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %43 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fsub double %46, %49
  %51 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %52 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fadd double %50, %54
  store double %55, double* %8, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load double, double* %7, align 8
  %58 = call i32 @floor(double %57)
  %59 = load double, double* %8, align 8
  %60 = call i32 @floor(double %59)
  %61 = call i32 @pixman_region32_contains_point(i32* %56, i32 %58, i32 %60, i32* null)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %116, label %63

63:                                               ; preds = %24
  %64 = load i32*, i32** %4, align 8
  %65 = call %struct.TYPE_6__* @pixman_region32_rectangles(i32* %64, i32* %9)
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %72, %76
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 2.000000e+00
  store double %79, double* %11, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %83, %87
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %89, 2.000000e+00
  store double %90, double* %12, align 8
  %91 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %92 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load double, double* %11, align 8
  %95 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %96 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %95, i32 0, i32 0
  %97 = load double, double* %96, align 8
  %98 = fadd double %94, %97
  %99 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %100 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fsub double %98, %102
  %104 = load double, double* %12, align 8
  %105 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %106 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = fadd double %104, %107
  %109 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %110 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load double, double* %111, align 8
  %113 = fsub double %108, %112
  %114 = call i32 @wlr_cursor_warp_closest(%struct.TYPE_7__* %93, i32* null, double %103, double %113)
  br label %115

115:                                              ; preds = %68, %63
  br label %116

116:                                              ; preds = %115, %24
  br label %117

117:                                              ; preds = %116, %1
  %118 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %3, align 8
  %119 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WLR_POINTER_CONSTRAINT_V1_CONFINED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %125 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %124, i32 0, i32 0
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @pixman_region32_copy(i32* %125, i32* %126)
  br label %132

128:                                              ; preds = %117
  %129 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %130 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %129, i32 0, i32 0
  %131 = call i32 @pixman_region32_clear(i32* %130)
  br label %132

132:                                              ; preds = %128, %123
  ret void
}

declare dso_local %struct.sway_view* @view_from_wlr_surface(i32) #1

declare dso_local i32 @pixman_region32_contains_point(i32*, i32, i32, i32*) #1

declare dso_local i32 @floor(double) #1

declare dso_local %struct.TYPE_6__* @pixman_region32_rectangles(i32*, i32*) #1

declare dso_local i32 @wlr_cursor_warp_closest(%struct.TYPE_7__*, i32*, double, double) #1

declare dso_local i32 @pixman_region32_copy(i32*, i32*) #1

declare dso_local i32 @pixman_region32_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
