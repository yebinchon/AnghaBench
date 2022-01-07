; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLConfigMode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLConfigMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"SQLGetConfigMode(NULL) should succeed\0A\00", align 1
@ODBC_BOTH_DSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Failed to get the initial SQLGetConfigMode or it was not both\0A\00", align 1
@ODBC_SYSTEM_DSN = common dso_local global i32 0, align 4
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@ODBC_ERROR_INVALID_PARAM_SEQUENCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"SQLSetConfigMode with invalid argument did not fail correctly\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"SQLSetConfigMode Failed to set config mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to confirm SQLSetConfigMode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLConfigMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLConfigMode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @SQLGetConfigMode(i32* null)
  %7 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @SQLGetConfigMode(i32* %4)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ODBC_BOTH_DSN, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %0
  %16 = phi i1 [ false, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ODBC_SYSTEM_DSN, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @SQLSetConfigMode(i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = call i64 @SQLInstallerErrorW(i32 1, i64* %2, i32* null, i32 0, i32* null)
  store i64 %22, i64* %3, align 8
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @ODBC_ERROR_INVALID_PARAM_SEQUENCE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = phi i1 [ false, %25 ], [ false, %15 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ODBC_SYSTEM_DSN, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ODBC_BOTH_DSN, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @SQLSetConfigMode(i32 %43)
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @SQLGetConfigMode(i32* %4)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi i1 [ false, %42 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %38

60:                                               ; preds = %38
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SQLGetConfigMode(i32*) #1

declare dso_local i32 @SQLSetConfigMode(i32) #1

declare dso_local i64 @SQLInstallerErrorW(i32, i64*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
