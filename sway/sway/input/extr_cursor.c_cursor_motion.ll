; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_motion.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sway_cursor = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.wlr_surface* }
%struct.wlr_surface = type { i32 }
%struct.wlr_input_device = type { i32 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_cursor*, i64, %struct.wlr_input_device*, double, double, double, double)* @cursor_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursor_motion(%struct.sway_cursor* %0, i64 %1, %struct.wlr_input_device* %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.sway_cursor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wlr_input_device*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.wlr_surface*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.wlr_input_device* %2, %struct.wlr_input_device** %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %20 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %21 = call i32 @cursor_handle_activity(%struct.sway_cursor* %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %24 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %29, 1000
  %31 = load double, double* %11, align 8
  %32 = load double, double* %12, align 8
  %33 = load double, double* %13, align 8
  %34 = load double, double* %14, align 8
  %35 = call i32 @wlr_relative_pointer_manager_v1_send_relative_motion(i32 %22, i32 %27, i32 %30, double %31, double %32, double %33, double %34)
  store %struct.wlr_surface* null, %struct.wlr_surface** %15, align 8
  %36 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %37 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %84

40:                                               ; preds = %7
  %41 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %42 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %45 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %50 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @node_at_coords(%struct.TYPE_9__* %43, i32 %48, i32 %53, %struct.wlr_surface** %15, double* %16, double* %17)
  %55 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %56 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.wlr_surface*, %struct.wlr_surface** %58, align 8
  %60 = load %struct.wlr_surface*, %struct.wlr_surface** %15, align 8
  %61 = icmp ne %struct.wlr_surface* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %40
  br label %99

63:                                               ; preds = %40
  %64 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %65 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %64, i32 0, i32 2
  %66 = load double, double* %16, align 8
  %67 = load double, double* %17, align 8
  %68 = load double, double* %16, align 8
  %69 = load double, double* %11, align 8
  %70 = fadd double %68, %69
  %71 = load double, double* %17, align 8
  %72 = load double, double* %12, align 8
  %73 = fadd double %71, %72
  %74 = call i32 @wlr_region_confine(i32* %65, double %66, double %67, double %70, double %73, double* %18, double* %19)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  br label %99

77:                                               ; preds = %63
  %78 = load double, double* %18, align 8
  %79 = load double, double* %16, align 8
  %80 = fsub double %78, %79
  store double %80, double* %11, align 8
  %81 = load double, double* %19, align 8
  %82 = load double, double* %17, align 8
  %83 = fsub double %81, %82
  store double %83, double* %12, align 8
  br label %84

84:                                               ; preds = %77, %7
  %85 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %86 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load %struct.wlr_input_device*, %struct.wlr_input_device** %10, align 8
  %89 = load double, double* %11, align 8
  %90 = load double, double* %12, align 8
  %91 = call i32 @wlr_cursor_move(%struct.TYPE_7__* %87, %struct.wlr_input_device* %88, double %89, double %90)
  %92 = load %struct.sway_cursor*, %struct.sway_cursor** %8, align 8
  %93 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load double, double* %11, align 8
  %97 = load double, double* %12, align 8
  %98 = call i32 @seatop_motion(%struct.TYPE_9__* %94, i64 %95, double %96, double %97)
  br label %99

99:                                               ; preds = %84, %76, %62
  ret void
}

declare dso_local i32 @cursor_handle_activity(%struct.sway_cursor*) #1

declare dso_local i32 @wlr_relative_pointer_manager_v1_send_relative_motion(i32, i32, i32, double, double, double, double) #1

declare dso_local i32 @node_at_coords(%struct.TYPE_9__*, i32, i32, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @wlr_region_confine(i32*, double, double, double, double, double*, double*) #1

declare dso_local i32 @wlr_cursor_move(%struct.TYPE_7__*, %struct.wlr_input_device*, double, double) #1

declare dso_local i32 @seatop_motion(%struct.TYPE_9__*, i64, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
