; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_table_get_column_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_table_get_column_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"table %s found\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32**, i64*)* @table_get_column_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @table_get_column_info(i32* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @get_tablecolumns(i32* %13, i32 %14, i32* null, i64* %11)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %5, align 8
  br label %55

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %27, i64* %5, align 8
  br label %55

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @debugstr_w(i32 %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 %32, 4
  %34 = call i32* @msi_alloc(i64 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %38, i64* %5, align 8
  br label %55

39:                                               ; preds = %28
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i64 @get_tablecolumns(i32* %40, i32 %41, i32* %42, i64* %11)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @msi_free(i32* %48)
  %50 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %50, i64* %5, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load i32*, i32** %12, align 8
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %51, %47, %37, %26, %19
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i64 @get_tablecolumns(i32*, i32, i32*, i64*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32* @msi_alloc(i64) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
