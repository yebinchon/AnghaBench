; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_defaulttablecolumns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_defaulttablecolumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@szTables = common dso_local global i32 0, align 4
@_Tables_cols = common dso_local global i32* null, align 8
@szColumns = common dso_local global i32 0, align 4
@_Columns_cols = common dso_local global i32* null, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*, i64*)* @get_defaulttablecolumns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_defaulttablecolumns(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @debugstr_w(i32 %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @szTables, align 4
  %18 = call i32 @strcmpW(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** @_Tables_cols, align 8
  store i32* %21, i32** %10, align 8
  store i64 1, i64* %12, align 8
  br label %32

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @szColumns, align 4
  %25 = call i32 @strcmpW(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** @_Columns_cols, align 8
  store i32* %28, i32** %10, align 8
  store i64 4, i64* %12, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %30, i64* %5, align 8
  br label %74

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %20
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64, i64* %11, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %40, %37
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %33

66:                                               ; preds = %61, %33
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @table_calc_column_offsets(i32* %67, i32* %68, i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %66, %29
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i32 @table_calc_column_offsets(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
