; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/conio/extr_kbhit.c__kbhit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/conio/extr_kbhit.c__kbhit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@CriticalSectionInitialized = common dso_local global i64 0, align 8
@CriticalSection = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@char_avail = common dso_local global i64 0, align 8
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_INPUT = common dso_local global i32 0, align 4
@KEY_EVENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kbhit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @CriticalSectionInitialized, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call i32 @InitializeCriticalSectionAndSpinCount(i32* @CriticalSection, i32 -2147482624)
  %13 = load i64, i64* @TRUE, align 8
  store i64 %13, i64* @CriticalSectionInitialized, align 8
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 @EnterCriticalSection(i32* @CriticalSection)
  %16 = load i64, i64* @char_avail, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @LeaveCriticalSection(i32* @CriticalSection)
  store i32 1, i32* %1, align 4
  br label %98

20:                                               ; preds = %14
  %21 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %22 = call i32 @GetStdHandle(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @GetConsoleMode(i32 %23, i32* %8)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @SetConsoleMode(i32 %25, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @GetNumberOfConsoleInputEvents(i32 %31, i32* %4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %20
  %35 = call i32 @LeaveCriticalSection(i32* @CriticalSection)
  store i32 0, i32* %1, align 4
  br label %98

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @LeaveCriticalSection(i32* @CriticalSection)
  store i32 0, i32* %1, align 4
  br label %98

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %2, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = call i32 @LeaveCriticalSection(i32* @CriticalSection)
  store i32 0, i32* %1, align 4
  br label %98

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @PeekConsoleInput(i32 %52, %struct.TYPE_8__* %53, i32 %54, i32* %3)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = call i32 @free(%struct.TYPE_8__* %58)
  %60 = call i32 @LeaveCriticalSection(i32* @CriticalSection)
  store i32 0, i32* %1, align 4
  br label %98

61:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @KEY_EVENT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 1, i32* %6, align 4
  br label %90

86:                                               ; preds = %75, %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %62

90:                                               ; preds = %85, %62
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = call i32 @free(%struct.TYPE_8__* %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @SetConsoleMode(i32 %93, i32 %94)
  %96 = call i32 @LeaveCriticalSection(i32* @CriticalSection)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %1, align 4
  br label %98

98:                                               ; preds = %90, %57, %49, %39, %34, %18
  %99 = load i32, i32* %1, align 4
  ret i32 %99
}

declare dso_local i32 @InitializeCriticalSectionAndSpinCount(i32*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @GetNumberOfConsoleInputEvents(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @PeekConsoleInput(i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
