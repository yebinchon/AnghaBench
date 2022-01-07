; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_tooltip.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_tooltip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@TB_ADDBUTTONSA = common dso_local global i32 0, align 4
@TTN_GETDISPINFOW = common dso_local global i32 0, align 4
@CCM_SETUNICODEFORMAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@PARENT_SEQ_INDEX = common dso_local global i32 0, align 4
@ttgetdispinfo_parent_seq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dispinfo from tooltip\00", align 1
@TRUE = common dso_local global i32 0, align 4
@g_ResetDispTextPtr = common dso_local global i32 0, align 4
@TOOLBARCLASSNAMEA = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@TB_GETTOOLTIPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_tooltip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tooltip() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x %struct.TYPE_8__], align 16
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %5 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 20, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %9 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i32 -1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i64 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 21, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %19 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  store i32 -1, i32* %24, align 4
  %25 = call i32 @rebuild_toolbar(i32** %1)
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @TB_ADDBUTTONSA, align 4
  %28 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 0
  %29 = ptrtoint %struct.TYPE_8__* %28 to i32
  %30 = call i64 @SendMessageA(i32* %26, i32 %27, i32 2, i32 %29)
  %31 = call i32 @memset(%struct.TYPE_9__* %3, i32 0, i32 8)
  %32 = load i32, i32* @TTN_GETDISPINFOW, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 20, i32* %36, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @CCM_SETUNICODEFORMAT, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i64 @SendMessageA(i32* %37, i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @sequences, align 4
  %42 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %43 = call i32 @flush_sequences(i32 %41, i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @WM_NOTIFY, align 4
  %46 = ptrtoint %struct.TYPE_9__* %3 to i32
  %47 = call i64 @SendMessageA(i32* %44, i32 %45, i32 0, i32 %46)
  %48 = load i32, i32* @sequences, align 4
  %49 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %50 = load i32, i32* @ttgetdispinfo_parent_seq, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @ok_sequence(i32 %48, i32 %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* @g_ResetDispTextPtr, align 4
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @WM_NOTIFY, align 4
  %56 = ptrtoint %struct.TYPE_9__* %3 to i32
  %57 = call i64 @SendMessageA(i32* %54, i32 %55, i32 0, i32 %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* @g_ResetDispTextPtr, align 4
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @DestroyWindow(i32* %59)
  %61 = load i32, i32* @TOOLBARCLASSNAMEA, align 4
  %62 = load i32, i32* @WS_CHILD, align 4
  %63 = load i32, i32* @WS_VISIBLE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @hMainWnd, align 4
  %66 = call i32 @GetModuleHandleA(i32* null)
  %67 = call i32* @CreateWindowExA(i32 0, i32 %61, i32* null, i32 %64, i32 0, i32 0, i32 0, i32 0, i32 %65, i32 5, i32 %66, i32* null)
  store i32* %67, i32** %1, align 8
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* @TB_GETTOOLTIPS, align 4
  %70 = call i64 @SendMessageA(i32* %68, i32 %69, i32 0, i32 0)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @DestroyWindow(i32* %77)
  ret void
}

declare dso_local i32 @rebuild_toolbar(i32**) #1

declare dso_local i64 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32* @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
