; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_set_active.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_active_menu = common dso_local global i32* null, align 8
@CacheState = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"stack view.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pop view.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_set_active(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** @current_active_menu, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32*, i32** @current_active_menu, align 8
  %10 = call i32 @g_queue_push_head(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 0), i32* %9)
  %11 = load i32*, i32** %2, align 8
  store i32* %11, i32** @current_active_menu, align 8
  %12 = call i32 @g_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** @current_active_menu, align 8
  %14 = call i32 @rofi_view_window_update_size(i32* %13)
  %15 = call i32 (...) @rofi_view_queue_redraw()
  br label %49

16:                                               ; preds = %5, %1
  %17 = load i32*, i32** %2, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call i32 @g_queue_is_empty(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = call i32 @g_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32* @g_queue_pop_head(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 0))
  store i32* %24, i32** @current_active_menu, align 8
  %25 = load i32*, i32** @current_active_menu, align 8
  %26 = call i32 @rofi_view_window_update_size(i32* %25)
  %27 = call i32 (...) @rofi_view_queue_redraw()
  br label %49

28:                                               ; preds = %19, %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** @current_active_menu, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32, %29
  %36 = load i32*, i32** @current_active_menu, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %2, align 8
  %40 = icmp eq i32* %39, null
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi i1 [ true, %32 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @g_assert(i32 %45)
  %47 = load i32*, i32** %2, align 8
  store i32* %47, i32** @current_active_menu, align 8
  %48 = call i32 (...) @rofi_view_queue_redraw()
  br label %49

49:                                               ; preds = %43, %22, %8
  ret void
}

declare dso_local i32 @g_queue_push_head(i32*, i32*) #1

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @rofi_view_window_update_size(i32*) #1

declare dso_local i32 @rofi_view_queue_redraw(...) #1

declare dso_local i32 @g_queue_is_empty(i32*) #1

declare dso_local i32* @g_queue_pop_head(i32*) #1

declare dso_local i32 @g_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
