; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tooltips.c_test_TTN_SHOW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tooltips.c_test_TTN_SHOW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to create parent window.\0A\00", align 1
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@WS_EX_TOPMOST = common dso_local global i32 0, align 4
@TOOLTIPS_CLASSA = common dso_local global i32 0, align 4
@TTS_ALWAYSTIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create tooltip window.\0A\00", align 1
@HWND_TOPMOST = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@TTF_SUBCLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"This is a test tooltip\00", align 1
@TTM_ADDTOOLA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to add a tool.\0A\00", align 1
@TTM_SETDELAYTIME = common dso_local global i32 0, align 4
@TTDT_INITIAL = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@PARENT_SEQ_INDEX = common dso_local global i32 0, align 4
@ttn_show_parent_seq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"TTN_SHOW parent seq\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TTN_SHOW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TTN_SHOW() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = call i32* (...) @create_parent_window()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GetWindowRect(i32* %11, %struct.TYPE_5__* %4)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 200
  %16 = call i32 @SetCursorPos(i32 %15, i32 0)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @SW_SHOWNORMAL, align 4
  %19 = call i32 @ShowWindow(i32* %17, i32 %18)
  %20 = call i32 @flush_events(i32 100)
  %21 = load i32, i32* @WS_EX_TOPMOST, align 4
  %22 = load i32, i32* @TOOLTIPS_CLASSA, align 4
  %23 = load i32, i32* @TTS_ALWAYSTIP, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @CreateWindowExA(i32 %21, i32 %22, i32* null, i32 %23, i32 10, i32 10, i32 300, i32 300, i32* %24, i32* null, i32* null, i32 0)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @HWND_TOPMOST, align 4
  %32 = load i32, i32* @SWP_NOMOVE, align 4
  %33 = load i32, i32* @SWP_NOSIZE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SWP_NOACTIVATE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @SetWindowPos(i32* %30, i32 %31, i32 0, i32 0, i32 0, i32 0, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 40, i32* %38, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  store i32* %39, i32** %40, align 8
  %41 = call i32 @GetModuleHandleA(i32* null)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @TTF_SUBCLASS, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 305441741, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  store i64 ptrtoint ([23 x i8]* @.str.2 to i64), i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 -559038737, i32* %47, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %50 = call i32 @GetClientRect(i32* %48, i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @TTM_ADDTOOLA, align 4
  %53 = ptrtoint %struct.TYPE_4__* %3 to i32
  %54 = call i32 @SendMessageA(i32* %51, i32 %52, i32 0, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @TTM_SETDELAYTIME, align 4
  %59 = load i32, i32* @TTDT_INITIAL, align 4
  %60 = call i32 @MAKELPARAM(i32 1, i32 0)
  %61 = call i32 @SendMessageA(i32* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @sequences, align 4
  %63 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %64 = call i32 @flush_sequences(i32 %62, i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @GetWindowRect(i32* %65, %struct.TYPE_5__* %4)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %68, %70
  %72 = sdiv i32 %71, 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %74, %76
  %78 = sdiv i32 %77, 2
  %79 = call i32 @SetCursorPos(i32 %72, i32 %78)
  %80 = call i32 @flush_events(i32 200)
  %81 = load i32, i32* @sequences, align 4
  %82 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %83 = load i32, i32* @ttn_show_parent_seq, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @ok_sequence(i32 %81, i32 %82, i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @DestroyWindow(i32* %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @DestroyWindow(i32* %88)
  ret void
}

declare dso_local i32* @create_parent_window(...) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GetWindowRect(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @SetCursorPos(i32, i32) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @flush_events(i32) #1

declare dso_local i32* @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SetWindowPos(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @GetClientRect(i32*, i32*) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
