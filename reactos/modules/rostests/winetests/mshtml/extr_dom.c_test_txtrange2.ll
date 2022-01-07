; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_txtrange2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_txtrange2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"abc\0D\0A\0D\0A123\0D\0A\0D\0A\0D\0Adef\00", align 1
@characterW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"c\0D\0A\0D\0A1\00", align 1
@VARIANT_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"23\0D\0A\0D\0A\0D\0Ad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_txtrange2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_txtrange2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @test_create_body_range(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @test_range_text(i32* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @characterW, align 4
  %10 = call i32 @test_range_move(i32* %8, i32 %9, i32 5, i32 5)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @characterW, align 4
  %13 = call i32 @test_range_moveend(i32* %11, i32 %12, i32 1, i32 1)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @test_range_text(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @characterW, align 4
  %18 = call i32 @test_range_move(i32* %16, i32 %17, i32 -3, i32 -3)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @characterW, align 4
  %21 = call i32 @test_range_moveend(i32* %19, i32 %20, i32 3, i32 3)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @test_range_text(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @VARIANT_FALSE, align 4
  %26 = call i32 @test_range_collapse(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @characterW, align 4
  %29 = call i32 @test_range_moveend(i32* %27, i32 %28, i32 4, i32 4)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @test_range_text(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @characterW, align 4
  %34 = call i32 @test_range_moveend(i32* %32, i32 %33, i32 1, i32 1)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @test_range_text(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @characterW, align 4
  %39 = call i32 @test_range_moveend(i32* %37, i32 %38, i32 -1, i32 -1)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @test_range_text(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @characterW, align 4
  %44 = call i32 @test_range_moveend(i32* %42, i32 %43, i32 -1, i32 -1)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @test_range_text(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @characterW, align 4
  %49 = call i32 @test_range_moveend(i32* %47, i32 %48, i32 -2, i32 -2)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @test_range_text(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @IHTMLTxtRange_Release(i32* %52)
  ret void
}

declare dso_local i32* @test_create_body_range(i32*) #1

declare dso_local i32 @test_range_text(i32*, i8*) #1

declare dso_local i32 @test_range_move(i32*, i32, i32, i32) #1

declare dso_local i32 @test_range_moveend(i32*, i32, i32, i32) #1

declare dso_local i32 @test_range_collapse(i32*, i32) #1

declare dso_local i32 @IHTMLTxtRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
