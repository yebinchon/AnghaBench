; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_EM_SCROLLCARET.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_EM_SCROLLCARET.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_EM_SCROLLCARET.text = private unnamed_addr constant [97 x i8] c"aa\0Athis is a long line of text that should be longer than the control's width\0Acc\0Add\0Aee\0Aff\0Agg\0Ahh\0A\00", align 16
@RICHEDIT_CLASS20A = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@hmoduleRichEdit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"class: %s, error: %d\0A\00", align 1
@EM_SCROLLCARET = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%d == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EM_SCROLLCARET to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EM_SCROLLCARET() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [97 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = bitcast [97 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([97 x i8], [97 x i8]* @__const.test_EM_SCROLLCARET.text, i32 0, i32 0), i64 97, i1 false)
  %6 = load i32, i32* @RICHEDIT_CLASS20A, align 4
  %7 = load i32, i32* @ES_MULTILINE, align 4
  %8 = load i32, i32* @WS_POPUP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WS_HSCROLL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WS_VSCROLL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WS_VISIBLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @hmoduleRichEdit, align 4
  %17 = call i32* @CreateWindowA(i32 %6, i32* null, i32 %15, i32 0, i32 0, i32 200, i32 80, i32* null, i32* null, i32 %16, i32* null)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @RICHEDIT_CLASS20A, align 4
  %22 = call i64 (...) @GetLastError()
  %23 = trunc i64 %22 to i32
  %24 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @EM_SCROLLCARET, align 4
  %27 = call i32 @SendMessageA(i32* %25, i32 %26, i32 0, i32 0)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @WM_SETTEXT, align 4
  %30 = getelementptr inbounds [97 x i8], [97 x i8]* %3, i64 0, i64 0
  %31 = ptrtoint i8* %30 to i32
  %32 = call i32 @SendMessageA(i32* %28, i32 %29, i32 0, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @line_scroll(i32* %33, i32 3)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @get_scroll_pos_y(i32* %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @EM_SCROLLCARET, align 4
  %39 = call i32 @SendMessageA(i32* %37, i32 %38, i32 0, i32 0)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @get_scroll_pos_y(i32* %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @move_cursor(i32* %49, i32 96)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @line_scroll(i32* %51, i32 -3)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @get_scroll_pos_y(i32* %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @EM_SCROLLCARET, align 4
  %57 = call i32 @SendMessageA(i32* %55, i32 %56, i32 0, i32 0)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @get_scroll_pos_y(i32* %58)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @move_cursor(i32* %67, i32 95)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @get_scroll_pos_y(i32* %69)
  store i32 %70, i32* %1, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @EM_SCROLLCARET, align 4
  %73 = call i32 @SendMessageA(i32* %71, i32 %72, i32 0, i32 0)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @get_scroll_pos_y(i32* %74)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @line_scroll(i32* %83, i32 -1)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @get_scroll_pos_y(i32* %85)
  store i32 %86, i32* %1, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @EM_SCROLLCARET, align 4
  %89 = call i32 @SendMessageA(i32* %87, i32 %88, i32 0, i32 0)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @get_scroll_pos_y(i32* %90)
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @DestroyWindow(i32* %99)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @CreateWindowA(i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #2

declare dso_local i32 @line_scroll(i32*, i32) #2

declare dso_local i32 @get_scroll_pos_y(i32*) #2

declare dso_local i32 @move_cursor(i32*, i32) #2

declare dso_local i32 @DestroyWindow(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
