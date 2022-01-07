; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c__sink_check_saved.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c__sink_check_saved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FOCUS_IGNORE = common dso_local global i32* null, align 8
@test_FirstPrevFocus = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s expected prev focus %p got %p\0A\00", align 1
@test_LastCurrentFocus = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"%s expected current focus %p got %p\0A\00", align 1
@FOCUS_SAVE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @_sink_check_saved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sink_check_saved(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @expected_count(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @_sink_check_ok(i32* %12, i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** @FOCUS_IGNORE, align 8
  %17 = icmp ne i32* %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** @test_FirstPrevFocus, align 8
  %24 = icmp eq i32* %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** @test_FirstPrevFocus, align 8
  %29 = call i32 @winetest_ok(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %26, i32* %27, i32* %28)
  br label %30

30:                                               ; preds = %21, %18, %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** @FOCUS_IGNORE, align 8
  %33 = icmp ne i32* %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** @test_LastCurrentFocus, align 8
  %40 = icmp eq i32* %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** @test_LastCurrentFocus, align 8
  %45 = call i32 @winetest_ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %42, i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %37, %34, %30
  %47 = load i32*, i32** @FOCUS_SAVE, align 8
  store i32* %47, i32** @test_FirstPrevFocus, align 8
  %48 = load i32*, i32** @FOCUS_SAVE, align 8
  store i32* %48, i32** @test_LastCurrentFocus, align 8
  ret void
}

declare dso_local i32 @expected_count(i32*) #1

declare dso_local i32 @_sink_check_ok(i32*, i32*) #1

declare dso_local i32 @winetest_ok(i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
