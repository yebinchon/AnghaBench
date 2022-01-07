; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@InputHandle = common dso_local global i8* null, align 8
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@OutputHandle = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"choose test :\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"  0=Exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  1=Ntxxx read functions\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"  2=Ntxxx write functions : volatile keys\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  3=Ntxxx write functions : non volatile keys\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  4=Regxxx functions\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  5=FlushKey \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  6=Registry link create test\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"  7=Registry link delete test\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"  8=Not available\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"  9=Ntxx read tcp/ip key test\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @AllocConsole()
  %9 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %10 = call i8* @GetStdHandle(i32 %9)
  store i8* %10, i8** @InputHandle, align 8
  %11 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %12 = call i8* @GetStdHandle(i32 %11)
  store i8* %12, i8** @OutputHandle, align 8
  br label %13

13:                                               ; preds = %2, %48
  %14 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %21 = call i32 @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %22 = call i32 @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %23 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %25 = load i8*, i8** @InputHandle, align 8
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %27 = call i32 @ReadConsoleA(i8* %25, i8* %26, i32 3, i32* %7, i32* null)
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %48 [
    i32 48, label %31
    i32 49, label %32
    i32 50, label %34
    i32 51, label %36
    i32 52, label %38
    i32 53, label %40
    i32 54, label %42
    i32 55, label %44
    i32 57, label %46
  ]

31:                                               ; preds = %13
  ret i32 0

32:                                               ; preds = %13
  %33 = call i32 (...) @test1()
  br label %48

34:                                               ; preds = %13
  %35 = call i32 (...) @test2()
  br label %48

36:                                               ; preds = %13
  %37 = call i32 (...) @test3()
  br label %48

38:                                               ; preds = %13
  %39 = call i32 (...) @test4()
  br label %48

40:                                               ; preds = %13
  %41 = call i32 (...) @test5()
  br label %48

42:                                               ; preds = %13
  %43 = call i32 (...) @test6()
  br label %48

44:                                               ; preds = %13
  %45 = call i32 (...) @test7()
  br label %48

46:                                               ; preds = %13
  %47 = call i32 (...) @test9()
  br label %48

48:                                               ; preds = %13, %46, %44, %42, %40, %38, %36, %34, %32
  br label %13
}

declare dso_local i32 @AllocConsole(...) #1

declare dso_local i8* @GetStdHandle(i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @ReadConsoleA(i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @test1(...) #1

declare dso_local i32 @test2(...) #1

declare dso_local i32 @test3(...) #1

declare dso_local i32 @test4(...) #1

declare dso_local i32 @test5(...) #1

declare dso_local i32 @test6(...) #1

declare dso_local i32 @test7(...) #1

declare dso_local i32 @test9(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
