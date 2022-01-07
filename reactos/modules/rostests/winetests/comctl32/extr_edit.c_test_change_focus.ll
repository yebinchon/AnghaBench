; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_test_change_focus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_test_change_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ParentWnd\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create control parent.\0A\00", align 1
@HWND_TOPMOST = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@WC_EDITA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to create Edit control.\0A\00", align 1
@GWLP_WNDPROC = common dso_local global i32 0, align 4
@edit_subclass_proc = common dso_local global i64 0, align 8
@GWLP_USERDATA = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@COMBINED_SEQ_INDEX = common dso_local global i32 0, align 4
@setfocus_combined_seq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Set focus\00", align 1
@TRUE = common dso_local global i32 0, align 4
@killfocus_combined_seq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Kill focus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_change_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_change_focus() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = call i32 @GetCursorPos(%struct.TYPE_3__* %5)
  %7 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %8 = call i32 @GetModuleHandleA(i32* null)
  %9 = call i32* @CreateWindowA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 0, i32 0, i32 200, i32 200, i32* null, i32* null, i32 %8, i32* null)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @HWND_TOPMOST, align 4
  %16 = load i32, i32* @SWP_NOSIZE, align 4
  %17 = load i32, i32* @SWP_NOMOVE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @SetWindowPos(i32* %14, i32 %15, i32 0, i32 0, i32 0, i32 0, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @SW_SHOW, align 4
  %22 = call i32 @ShowWindow(i32* %20, i32 %21)
  %23 = load i32, i32* @WC_EDITA, align 4
  %24 = load i32, i32* @WS_CHILD, align 4
  %25 = load i32, i32* @WS_VISIBLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GetModuleHandleA(i32* null)
  %29 = call i32* @CreateWindowExA(i32 0, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 0, i32 0, i32 100, i32 100, i32* %27, i32 1, i32 %28, i32* null)
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @GWLP_WNDPROC, align 4
  %36 = load i64, i64* @edit_subclass_proc, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @SetWindowLongPtrA(i32* %34, i32 %35, i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @GWLP_USERDATA, align 4
  %41 = load i64, i64* %3, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @SetWindowLongPtrA(i32* %39, i32 %40, i32 %42)
  %44 = call i32 @SetCursorPos(i32 400, i32 400)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @SetFocus(i32* %45)
  %47 = load i32, i32* @sequences, align 4
  %48 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %49 = call i32 @flush_sequences(i32 %47, i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @SetFocus(i32* %50)
  br label %52

52:                                               ; preds = %56, %0
  %53 = load i32, i32* @PM_REMOVE, align 4
  %54 = call i64 @PeekMessageA(i32* %4, i32 0, i32 0, i32 0, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @DispatchMessageA(i32* %4)
  br label %52

58:                                               ; preds = %52
  %59 = load i32, i32* @sequences, align 4
  %60 = load i32, i32* @COMBINED_SEQ_INDEX, align 4
  %61 = load i32, i32* @setfocus_combined_seq, align 4
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @ok_sequence(i32 %59, i32 %60, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @sequences, align 4
  %65 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %66 = call i32 @flush_sequences(i32 %64, i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @SetFocus(i32* %67)
  br label %69

69:                                               ; preds = %73, %58
  %70 = load i32, i32* @PM_REMOVE, align 4
  %71 = call i64 @PeekMessageA(i32* %4, i32 0, i32 0, i32 0, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @DispatchMessageA(i32* %4)
  br label %69

75:                                               ; preds = %69
  %76 = load i32, i32* @sequences, align 4
  %77 = load i32, i32* @COMBINED_SEQ_INDEX, align 4
  %78 = load i32, i32* @killfocus_combined_seq, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @ok_sequence(i32 %76, i32 %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SetCursorPos(i32 %82, i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @DestroyWindow(i32* %86)
  ret void
}

declare dso_local i32 @GetCursorPos(%struct.TYPE_3__*) #1

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SetWindowPos(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32* @CreateWindowExA(i32, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @SetWindowLongPtrA(i32*, i32, i32) #1

declare dso_local i32 @SetCursorPos(i32, i32) #1

declare dso_local i32 @SetFocus(i32*) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i64 @PeekMessageA(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
