; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_EmptyClipboard.c_TestMessages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_EmptyClipboard.c_TestMessages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CritSect = common dso_local global i32 0, align 4
@ClipTestProc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 99, i32 108, i32 105, i32 112, i32 115, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@hWnd2 = common dso_local global i32* null, align 8
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@hWnd1 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"CreateWindowW failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"OpenClipboard failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EmptyClipboard failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CloseClipboard failed\0A\00", align 1
@empty_chain = common dso_local global i32 0, align 4
@ClipThread = common dso_local global i32 0, align 4
@EmptyClipboard_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestMessages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @InitializeCriticalSection(i32* @CritSect)
  %6 = load i32, i32* @ClipTestProc, align 4
  %7 = call i32 @RegisterSimpleClass(i32 %6, i8* bitcast ([10 x i32]* @.str to i8*))
  store i32* null, i32** @hWnd2, align 8
  %8 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %9 = call i32* @CreateWindowW(i8* bitcast ([10 x i32]* @.str to i8*), i8* bitcast ([10 x i32]* @.str to i8*), i32 %8, i32 20, i32 20, i32 300, i32 300, i32* null, i32* null, i32 0, i32* null)
  store i32* %9, i32** @hWnd1, align 8
  %10 = load i32*, i32** @hWnd1, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @EMPTY_CACHE()
  %15 = load i32*, i32** @hWnd1, align 8
  %16 = call i32 @OpenClipboard(i32* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (...) @EmptyClipboard()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 (...) @CloseClipboard()
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 (...) @FlushMessages()
  %26 = load i32, i32* @empty_chain, align 4
  %27 = call i32 @COMPARE_CACHE(i32 %26)
  %28 = load i32, i32* @ClipThread, align 4
  %29 = call i32 @CreateThread(i32* null, i32 0, i32 %28, i32* null, i32 0, i32* %2)
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %33, %0
  %31 = call i64 @GetMessage(i32* %4, i32 0, i32 0, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @RecordAndDispatch(i32* %4)
  br label %30

35:                                               ; preds = %30
  %36 = load i32, i32* @EmptyClipboard_chain, align 4
  %37 = call i32 @COMPARE_CACHE(i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @CloseHandle(i32 %38)
  ret void
}

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i32 @RegisterSimpleClass(i32, i8*) #1

declare dso_local i32* @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @EMPTY_CACHE(...) #1

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i32 @EmptyClipboard(...) #1

declare dso_local i32 @CloseClipboard(...) #1

declare dso_local i32 @FlushMessages(...) #1

declare dso_local i32 @COMPARE_CACHE(i32) #1

declare dso_local i32 @CreateThread(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetMessage(i32*, i32, i32, i32) #1

declare dso_local i32 @RecordAndDispatch(i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
