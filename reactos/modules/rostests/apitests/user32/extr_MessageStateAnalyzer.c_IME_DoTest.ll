; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_MessageStateAnalyzer.c_IME_DoTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_MessageStateAnalyzer.c_IME_DoTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64, i32, i32, i32, i32 }

@IME_DoTest.s_szName = internal constant [24 x i8] c"MessageStateAnalyzerIME\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"IME_DoTest\0A\00", align 1
@s_IMEStages = common dso_local global i32 0, align 4
@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@CS_DBLCLKS = common dso_local global i32 0, align 4
@WindowProc = common dso_local global i32 0, align 4
@IDI_APPLICATION = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i32 0, align 4
@COLOR_3DFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"RegisterClassW failed.\0A\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"CreateWindowW failed.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IME_DoTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IME_DoTest() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @s_IMEStages, align 4
  %6 = load i32, i32* @s_IMEStages, align 4
  %7 = call i32 @ARRAYSIZE(i32 %6)
  %8 = call i32 @DoInitialize(i32 %5, i32 %7)
  %9 = call i32 @ZeroMemory(%struct.TYPE_4__* %1, i32 40)
  %10 = load i32, i32* @CS_HREDRAW, align 4
  %11 = load i32, i32* @CS_VREDRAW, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CS_DBLCLKS, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @WindowProc, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  %18 = call i32 @GetModuleHandleA(i32* null)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @IDI_APPLICATION, align 4
  %21 = call i32 @LoadIcon(i32* null, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @IDC_ARROW, align 4
  %24 = call i32 @LoadCursor(i32* null, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load i64, i64* @COLOR_3DFACE, align 8
  %27 = add nsw i64 %26, 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @IME_DoTest.s_szName, i64 0, i64 0), i8** %29, align 8
  %30 = call i32 @RegisterClassA(%struct.TYPE_4__* %1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %0
  %33 = call i32 @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %57

34:                                               ; preds = %0
  %35 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %36 = load i32, i32* @WIDTH, align 4
  %37 = load i32, i32* @HEIGHT, align 4
  %38 = call i32 @GetModuleHandleW(i32* null)
  %39 = call i32 @CreateWindowA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @IME_DoTest.s_szName, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @IME_DoTest.s_szName, i64 0, i64 0), i32 %35, i32 0, i32 0, i32 %36, i32 %37, i32* null, i32* null, i32 %38, i32* null)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = call i32 @skip(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %57

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %48, %44
  %46 = call i64 @GetMessageA(i32* %3, i32* null, i32 0, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @TranslateMessage(i32* %3)
  %50 = call i32 @DispatchMessageA(i32* %3)
  br label %45

51:                                               ; preds = %45
  %52 = call i32 @GetModuleHandleA(i32* null)
  %53 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @IME_DoTest.s_szName, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @ok_int(i32 %53, i32 %54)
  %56 = call i32 (...) @DoFinish()
  br label %57

57:                                               ; preds = %51, %42, %32
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @DoInitialize(i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @LoadIcon(i32*, i32) #1

declare dso_local i32 @LoadCursor(i32*, i32) #1

declare dso_local i32 @RegisterClassA(%struct.TYPE_4__*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i64 @GetMessageA(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @UnregisterClassA(i8*, i32) #1

declare dso_local i32 @DoFinish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
