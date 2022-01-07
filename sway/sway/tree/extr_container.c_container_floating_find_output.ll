; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_find_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_find_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.sway_container = type { i32, i32, i32, i32 }
%struct.wlr_box = type { i32 }

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @container_floating_find_output(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_output*, align 8
  %10 = alloca %struct.wlr_box, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %18, %22
  %24 = sitofp i32 %23 to double
  store double %24, double* %4, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  %32 = add nsw i32 %27, %31
  %33 = sitofp i32 %32 to double
  store double %33, double* %5, align 8
  store %struct.sway_output* null, %struct.sway_output** %6, align 8
  %34 = load double, double* @DBL_MAX, align 8
  store double %34, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %88, %1
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.sway_output**, %struct.sway_output*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %48, i64 %50
  %52 = load %struct.sway_output*, %struct.sway_output** %51, align 8
  store %struct.sway_output* %52, %struct.sway_output** %9, align 8
  %53 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %54 = call i32 @output_get_box(%struct.sway_output* %53, %struct.wlr_box* %10)
  %55 = load double, double* %4, align 8
  %56 = load double, double* %5, align 8
  %57 = call i32 @wlr_box_closest_point(%struct.wlr_box* %10, double %55, double %56, double* %11, double* %12)
  %58 = load double, double* %4, align 8
  %59 = load double, double* %11, align 8
  %60 = fcmp oeq double %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load double, double* %5, align 8
  %63 = load double, double* %12, align 8
  %64 = fcmp oeq double %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  store %struct.sway_output* %66, %struct.sway_output** %2, align 8
  br label %93

67:                                               ; preds = %61, %43
  %68 = load double, double* %11, align 8
  %69 = load double, double* %4, align 8
  %70 = fsub double %68, %69
  store double %70, double* %13, align 8
  %71 = load double, double* %12, align 8
  %72 = load double, double* %5, align 8
  %73 = fsub double %71, %72
  store double %73, double* %14, align 8
  %74 = load double, double* %13, align 8
  %75 = load double, double* %13, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %14, align 8
  %78 = load double, double* %14, align 8
  %79 = fmul double %77, %78
  %80 = fadd double %76, %79
  store double %80, double* %15, align 8
  %81 = load double, double* %15, align 8
  %82 = load double, double* %7, align 8
  %83 = fcmp olt double %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  store %struct.sway_output* %85, %struct.sway_output** %6, align 8
  %86 = load double, double* %15, align 8
  store double %86, double* %7, align 8
  br label %87

87:                                               ; preds = %84, %67
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %35

91:                                               ; preds = %35
  %92 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  store %struct.sway_output* %92, %struct.sway_output** %2, align 8
  br label %93

93:                                               ; preds = %91, %65
  %94 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  ret %struct.sway_output* %94
}

declare dso_local i32 @output_get_box(%struct.sway_output*, %struct.wlr_box*) #1

declare dso_local i32 @wlr_box_closest_point(%struct.wlr_box*, double, double, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
