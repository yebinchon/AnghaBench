; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_loadext.c_testloadext_init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_loadext.c_testloadext_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"half\00", align 1
@SQLITE_ANY = common dso_local global i32 0, align 4
@halfFunc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"sqlite3_status\00", align 1
@statusFunc = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testloadext_init(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @SQLITE_EXTENSION_INIT2(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @SQLITE_ANY, align 4
  %12 = load i32, i32* @halfFunc, align 4
  %13 = call i32 @sqlite3_create_function(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i32 %11, i32 0, i32 %12, i32 0, i32 0)
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @SQLITE_ANY, align 4
  %18 = load i32, i32* @statusFunc, align 4
  %19 = call i32 @sqlite3_create_function(i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %17, i32 0, i32 %18, i32 0, i32 0)
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @SQLITE_ANY, align 4
  %24 = load i32, i32* @statusFunc, align 4
  %25 = call i32 @sqlite3_create_function(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %23, i32 0, i32 %24, i32 0, i32 0)
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @SQLITE_ERROR, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @SQLITE_OK, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  ret i32 %35
}

declare dso_local i32 @SQLITE_EXTENSION_INIT2(i32*) #1

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
