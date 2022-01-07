; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_EM_FINDTEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_EM_FINDTEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@find_tests = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@haystack = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@find_tests2 = common dso_local global i32 0, align 4
@haystack2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@find_tests3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EM_FINDTEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EM_FINDTEXT() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @new_richedit(i32* null)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @find_tests, align 4
  %5 = load i32, i32* @find_tests, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = call i32 @run_tests_EM_FINDTEXT(i32 %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @WM_SETTEXT, align 4
  %10 = load i64, i64* @haystack, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @SendMessageA(i32 %8, i32 %9, i32 0, i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @find_tests2, align 4
  %15 = load i32, i32* @find_tests2, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @run_tests_EM_FINDTEXT(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @WM_SETTEXT, align 4
  %20 = load i64, i64* @haystack2, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @SendMessageA(i32 %18, i32 %19, i32 0, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @find_tests3, align 4
  %25 = load i32, i32* @find_tests3, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @run_tests_EM_FINDTEXT(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @DestroyWindow(i32 %28)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

declare dso_local i32 @run_tests_EM_FINDTEXT(i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
