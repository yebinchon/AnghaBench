; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_WaitForChar.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_WaitForChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i64 }

@INFINITE = common dso_local global i64 0, align 8
@g_hConIn = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@KEY_EVENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FOCUS_EVENT = common dso_local global i64 0, align 8
@WINDOW_BUFFER_SIZE_EVENT = common dso_local global i64 0, align 8
@CLEAR = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@MOUSE_EVENT = common dso_local global i64 0, align 8
@QS_SENDMESSAGE = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@cmdline_row = common dso_local global i32 0, align 4
@g_hConOut = common dso_local global i32 0, align 4
@g_nMouseClick = common dso_local global i32 0, align 4
@msg_row = common dso_local global i32 0, align 4
@p_mzq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @WaitForChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WaitForChar(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i64 (...) @GetTickCount()
  %15 = load i64, i64* %3, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %5, align 8
  br label %23

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @INFINITE, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %13
  br label %24

24:                                               ; preds = %98, %48, %23
  %25 = load i64, i64* %3, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = call i64 (...) @GetTickCount()
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %99

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* @g_hConIn, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @WaitForSingleObject(i32 %43, i64 %44)
  %46 = load i64, i64* @WAIT_OBJECT_0, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %24

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %36
  store i64 0, i64* %7, align 8
  %51 = load i32, i32* @g_hConIn, align 4
  %52 = call i32 @PeekConsoleInput(i32 %51, %struct.TYPE_14__* %6, i32 1, i64* %7)
  %53 = load i64, i64* %7, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KEY_EVENT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i64 @decode_key_event(%struct.TYPE_16__* %68, i32* %8, i32* %9, i32* null, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %101

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %60, %55
  %76 = load i32, i32* @g_hConIn, align 4
  %77 = call i32 @ReadConsoleInput(i32 %76, %struct.TYPE_14__* %6, i32 1, i64* %7)
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FOCUS_EVENT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 @handle_focus_event(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %6)
  br label %92

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @WINDOW_BUFFER_SIZE_EVENT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (...) @shell_resized()
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %82
  br label %98

93:                                               ; preds = %50
  %94 = load i64, i64* %3, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %92
  br label %24

99:                                               ; preds = %96, %34
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %72
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i64 @WaitForSingleObject(i32, i64) #1

declare dso_local i32 @PeekConsoleInput(i32, %struct.TYPE_14__*, i32, i64*) #1

declare dso_local i64 @decode_key_event(%struct.TYPE_16__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ReadConsoleInput(i32, %struct.TYPE_14__*, i32, i64*) #1

declare dso_local i32 @handle_focus_event(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @shell_resized(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
