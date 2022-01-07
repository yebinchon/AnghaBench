; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_tgetch.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_tgetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@g_hConIn = common dso_local global i32 0, align 4
@did_create_conin = common dso_local global i64 0, align 8
@KEY_EVENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FOCUS_EVENT = common dso_local global i64 0, align 8
@WINDOW_BUFFER_SIZE_EVENT = common dso_local global i64 0, align 8
@MOUSE_EVENT = common dso_local global i64 0, align 8
@g_nMouseClick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @tgetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgetch(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %8

8:                                                ; preds = %56, %17, %2
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @g_hConIn, align 4
  %10 = call i64 @ReadConsoleInput(i32 %9, %struct.TYPE_6__* %6, i32 1, i32* %7)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i64, i64* @did_create_conin, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @read_error_exit()
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 (...) @create_conin()
  br label %8

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KEY_EVENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i64 @decode_key_event(i32* %26, i32* %5, i32* %27, i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  ret i32 %33

34:                                               ; preds = %24
  br label %56

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FOCUS_EVENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = bitcast %struct.TYPE_6__* %6 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @handle_focus_event(i64 %43, i64 %45)
  br label %55

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WINDOW_BUFFER_SIZE_EVENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (...) @shell_resized()
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %34
  br label %8
}

declare dso_local i64 @ReadConsoleInput(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @read_error_exit(...) #1

declare dso_local i32 @create_conin(...) #1

declare dso_local i64 @decode_key_event(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @handle_focus_event(i64, i64) #1

declare dso_local i32 @shell_resized(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
