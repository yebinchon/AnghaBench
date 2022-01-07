; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/extr_planner.c_tsl_create_upper_paths_hook.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/extr_planner.c_tsl_create_upper_paths_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@UPPERREL_GROUP_AGG = common dso_local global i64 0, align 8
@UPPERREL_WINDOW = common dso_local global i64 0, align 8
@CustomPath = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsl_create_upper_paths_hook(i32* %0, i64 %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %9 = load i64, i64* @UPPERREL_GROUP_AGG, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = call i32 @plan_add_gapfill(i32* %13, %struct.TYPE_7__* %14)
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i64, i64* @UPPERREL_WINDOW, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @linitial(i32 %23)
  %25 = load i32, i32* @CustomPath, align 4
  %26 = call i64 @IsA(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = call i32 @gapfill_adjust_window_targetlist(i32* %29, %struct.TYPE_7__* %30, %struct.TYPE_7__* %31)
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @plan_add_gapfill(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @IsA(i32, i32) #1

declare dso_local i32 @linitial(i32) #1

declare dso_local i32 @gapfill_adjust_window_targetlist(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
