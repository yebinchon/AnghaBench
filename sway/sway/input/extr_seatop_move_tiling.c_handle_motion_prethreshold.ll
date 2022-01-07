; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_motion_prethreshold.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_motion_prethreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { double }
%struct.sway_seat = type { %struct.TYPE_7__*, %struct.seatop_move_tiling_event* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double, double }
%struct.seatop_move_tiling_event = type { double, double, i32 }
%struct.wlr_output = type { i32 }

@root = common dso_local global %struct.TYPE_6__* null, align 8
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"grab\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*)* @handle_motion_prethreshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_motion_prethreshold(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_seat*, align 8
  %3 = alloca %struct.seatop_move_tiling_event*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.wlr_output*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %2, align 8
  %11 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %12 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %11, i32 0, i32 1
  %13 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %12, align 8
  store %struct.seatop_move_tiling_event* %13, %struct.seatop_move_tiling_event** %3, align 8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %15 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %4, align 8
  %21 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %22 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  store double %27, double* %5, align 8
  %28 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %29 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  store double %30, double* %6, align 8
  %31 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %32 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  store double %33, double* %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load double, double* %4, align 8
  %38 = load double, double* %5, align 8
  %39 = call %struct.wlr_output* @wlr_output_layout_output_at(i32 %36, double %37, double %38)
  store %struct.wlr_output* %39, %struct.wlr_output** %8, align 8
  %40 = load %struct.wlr_output*, %struct.wlr_output** %8, align 8
  %41 = icmp ne %struct.wlr_output* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load %struct.wlr_output*, %struct.wlr_output** %8, align 8
  %44 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 1, %46 ]
  %49 = sitofp i32 %48 to double
  store double %49, double* %9, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load double, double* %9, align 8
  %54 = fmul double %52, %53
  store double %54, double* %10, align 8
  %55 = load double, double* %10, align 8
  %56 = load double, double* %10, align 8
  %57 = fmul double %56, %55
  store double %57, double* %10, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* %6, align 8
  %60 = fsub double %58, %59
  %61 = load double, double* %4, align 8
  %62 = load double, double* %6, align 8
  %63 = fsub double %61, %62
  %64 = fmul double %60, %63
  %65 = load double, double* %5, align 8
  %66 = load double, double* %7, align 8
  %67 = fsub double %65, %66
  %68 = load double, double* %5, align 8
  %69 = load double, double* %7, align 8
  %70 = fsub double %68, %69
  %71 = fmul double %67, %70
  %72 = fadd double %64, %71
  %73 = load double, double* %10, align 8
  %74 = fcmp ogt double %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %47
  %76 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %77 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %79 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @cursor_set_image(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %82

82:                                               ; preds = %75, %47
  ret void
}

declare dso_local %struct.wlr_output* @wlr_output_layout_output_at(i32, double, double) #1

declare dso_local i32 @cursor_set_image(%struct.TYPE_7__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
