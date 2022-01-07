; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_display_cleanup.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_display_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32*, i32*, i32, i32*, i32*, i32 }

@xcb = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cleaning up XCB and XKB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_cleanup() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 2
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %60

6:                                                ; preds = %0
  %7 = call i32 @g_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @nk_bindings_seat_free(i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sn_launchee_context_unref(i32* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @sn_display_unref(i32* %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = call i32 (...) @x11_monitors_free()
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = call i32 @xcb_ewmh_connection_wipe(i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @xcb_flush(i32* %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @xcb_aux_sync(i32* %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @g_water_xcb_source_free(i32* %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcb, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %35, %5
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @nk_bindings_seat_free(i32) #1

declare dso_local i32 @sn_launchee_context_unref(i32*) #1

declare dso_local i32 @sn_display_unref(i32*) #1

declare dso_local i32 @x11_monitors_free(...) #1

declare dso_local i32 @xcb_ewmh_connection_wipe(i32*) #1

declare dso_local i32 @xcb_flush(i32*) #1

declare dso_local i32 @xcb_aux_sync(i32*) #1

declare dso_local i32 @g_water_xcb_source_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
