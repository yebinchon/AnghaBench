; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_sqlite3_fossildelta_init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_sqlite3_fossildelta_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"delta_create\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@deltaCreateFunc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"delta_apply\00", align 1
@deltaApplyFunc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"delta_output_size\00", align 1
@deltaOutputSizeFunc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"delta_parse\00", align 1
@deltaparsevtabModule = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_fossildelta_init(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @SQLITE_EXTENSION_INIT2(i32* %9)
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @SQLITE_UTF8, align 4
  %14 = load i32, i32* @deltaCreateFunc, align 4
  %15 = call i32 @sqlite3_create_function(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 2, i32 %13, i32 0, i32 %14, i32 0, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @SQLITE_UTF8, align 4
  %22 = load i32, i32* @deltaApplyFunc, align 4
  %23 = call i32 @sqlite3_create_function(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %21, i32 0, i32 %22, i32 0, i32 0)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @SQLITE_UTF8, align 4
  %31 = load i32, i32* @deltaOutputSizeFunc, align 4
  %32 = call i32 @sqlite3_create_function(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %30, i32 0, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @sqlite3_create_module(i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* @deltaparsevtabModule, i32 0)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @SQLITE_EXTENSION_INIT2(i32*) #1

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_create_module(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
