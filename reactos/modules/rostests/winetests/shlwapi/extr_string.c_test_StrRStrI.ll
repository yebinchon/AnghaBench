; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrRStrI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrRStrI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_StrRStrI.szTest = internal constant [9 x i8] c"yAxxxxAy\00", align 1
@test_StrRStrI.szTest2 = internal constant [9 x i8] c"ABABABAB\00", align 1
@test_StrRStrI.wszTest = internal constant [9 x i8] c"yAxxxxAy\00", align 1
@test_StrRStrI.wszTest2 = internal constant [9 x i8] c"ABABABAB\00", align 1
@test_StrRStrI.wszPattern1 = internal constant [2 x i8] c"A\00", align 1
@test_StrRStrI.wszPattern2 = internal constant [3 x i8] c"aX\00", align 1
@test_StrRStrI.wszPattern3 = internal constant [3 x i8] c"Ay\00", align 1
@test_StrRStrI.wszPattern4 = internal constant [3 x i8] c"ab\00", align 1
@A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"aX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Ay\00", align 1
@W = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrRStrI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrRStrI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @A, align 4
  %4 = call i32 @check_strrstri(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest, i64 0, i64 1))
  %5 = load i32, i32* @A, align 4
  %6 = call i32 @check_strrstri(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest, i64 0, i64 1))
  %7 = load i32, i32* @A, align 4
  %8 = call i32 @check_strrstri(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %9 = load i32, i32* @W, align 4
  %10 = call i32 @check_strrstri(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_StrRStrI.wszPattern1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest, i64 0, i64 1))
  %11 = load i32, i32* @W, align 4
  %12 = call i32 @check_strrstri(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest, i64 0, i64 1))
  %13 = load i32, i32* @W, align 4
  %14 = call i32 @check_strrstri(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern3, i64 0, i64 0), i8* null)
  %15 = load i32, i32* @A, align 4
  %16 = call i32 @check_strrstri(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 2))
  %17 = load i32, i32* @A, align 4
  %18 = call i32 @check_strrstri(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 2))
  %19 = load i32, i32* @A, align 4
  %20 = call i32 @check_strrstri(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0))
  %21 = load i32, i32* @A, align 4
  %22 = call i32 @check_strrstri(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0))
  %23 = load i32, i32* @A, align 4
  %24 = call i32 @check_strrstri(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.szTest2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %25 = load i32, i32* @W, align 4
  %26 = call i32 @check_strrstri(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 2))
  %27 = load i32, i32* @W, align 4
  %28 = call i32 @check_strrstri(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 2))
  %29 = load i32, i32* @W, align 4
  %30 = call i32 @check_strrstri(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0))
  %31 = load i32, i32* @W, align 4
  %32 = call i32 @check_strrstri(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0))
  %33 = load i32, i32* @W, align 4
  %34 = call i32 @check_strrstri(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrRStrI.wszTest2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_StrRStrI.wszPattern4, i64 0, i64 0), i8* null)
  ret void
}

declare dso_local i32 @check_strrstri(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
