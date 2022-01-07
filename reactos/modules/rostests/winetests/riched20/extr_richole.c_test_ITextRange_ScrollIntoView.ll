; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_ScrollIntoView.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_ScrollIntoView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextRange_ScrollIntoView.test_text1 = internal constant [21 x i8] c"1\0A2\0A3\0A4\0A5\0A6\0A7\0A8\0A9\0A10\00", align 16
@WM_SETTEXT = common dso_local global i32 0, align 4
@tomStart = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@CO_E_RELEASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextRange_ScrollIntoView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextRange_ScrollIntoView() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @WM_SETTEXT, align 4
  %9 = call i32 @SendMessageA(i32 %7, i32 %8, i32 0, i32 ptrtoint ([21 x i8]* @test_ITextRange_ScrollIntoView.test_text1 to i32))
  %10 = load i32, i32* %1, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @tomStart, align 4
  %13 = call i32 @check_range(i32 %10, i32* %11, i32 0, i32 1, i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @tomStart, align 4
  %17 = call i32 @check_range(i32 %14, i32* %15, i32 19, i32 20, i32 %16, i32 1)
  %18 = load i32, i32* %1, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @tomStart, align 4
  %21 = call i32 @check_range(i32 %18, i32* %19, i32 0, i32 1, i32 %20, i32 0)
  %22 = load i32, i32* %1, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @tomStart, align 4
  %25 = call i32 @check_range(i32 %22, i32* %23, i32 0, i32 20, i32 %24, i32 0)
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @ITextDocument_Range(i32* %26, i32 0, i32 0, i32** %4)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @tomStart, align 4
  %37 = call i64 @ITextRange_ScrollIntoView(i32* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @CO_E_RELEASED, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ITextRange_Release(i32* %44)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @check_range(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i64 @ITextRange_ScrollIntoView(i32*, i32) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
