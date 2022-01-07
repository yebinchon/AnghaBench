; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetThreadPreferredUILanguages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetThreadPreferredUILanguages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUI_LANGUAGE_ID = common dso_local global i32 0, align 4
@MUI_UI_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"expected count > 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"expected size > 0\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetThreadPreferredUILanguages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetThreadPreferredUILanguages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %6 = load i32, i32* @MUI_UI_FALLBACK, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @pGetThreadPreferredUILanguages(i32 %7, i32* %2, i32* null, i32* %3)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (...) @GetLastError()
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32* @HeapAlloc(i32 %16, i32 %17, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32, i32* @MUI_LANGUAGE_ID, align 4
  %24 = load i32, i32* @MUI_UI_FALLBACK, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @pGetThreadPreferredUILanguages(i32 %25, i32* %2, i32* %26, i32* %3)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @HeapFree(i32 %33, i32 0, i32* %34)
  ret void
}

declare dso_local i32 @pGetThreadPreferredUILanguages(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
