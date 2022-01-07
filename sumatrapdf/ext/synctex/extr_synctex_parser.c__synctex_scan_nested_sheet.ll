; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_nested_sheet.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_nested_sheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unexpected end of nested sheet (1).\00", align 1
@SYNCTEX_STATUS_ERROR = common dso_local global i64 0, align 8
@SYNCTEX_CUR = common dso_local global i64* null, align 8
@SYNCTEX_END = common dso_local global i64* null, align 8
@SYNCTEX_CHAR_END_SHEET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Unexpected end of nested sheet (2).\00", align 1
@SYNCTEX_CHAR_BEGIN_SHEET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Unexpected end of nested sheet (3).\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unexpected end of nested sheet (4).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_scan_nested_sheet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %51, %1
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @_synctex_next_line(i32 %8)
  %10 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = call i32 @_synctex_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  %15 = call i32 @SYNCTEX_RETURN(i64 %14)
  br label %16

16:                                               ; preds = %12, %5
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i64*, i64** @SYNCTEX_CUR, align 8
  %19 = load i64*, i64** @SYNCTEX_END, align 8
  %20 = icmp ult i64* %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load i64*, i64** @SYNCTEX_CUR, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SYNCTEX_CHAR_END_SHEET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i64*, i64** @SYNCTEX_CUR, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** @SYNCTEX_CUR, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @_synctex_next_line(i32 %29)
  %31 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = call i32 @_synctex_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  %36 = call i32 @SYNCTEX_RETURN(i64 %35)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %4, align 4
  %40 = icmp ugt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %17

42:                                               ; preds = %37
  %43 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %44 = call i32 @SYNCTEX_RETURN(i64 %43)
  br label %45

45:                                               ; preds = %42
  br label %65

46:                                               ; preds = %21
  %47 = load i64*, i64** @SYNCTEX_CUR, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SYNCTEX_CHAR_BEGIN_SHEET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64*, i64** @SYNCTEX_CUR, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** @SYNCTEX_CUR, align 8
  br label %5

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @_synctex_next_line(i32 %55)
  %57 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = call i32 @_synctex_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  %62 = call i32 @SYNCTEX_RETURN(i64 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %17
  %67 = call i32 @_synctex_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  %69 = call i32 @SYNCTEX_RETURN(i64 %68)
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @_synctex_next_line(i32) #1

declare dso_local i32 @_synctex_error(i8*) #1

declare dso_local i32 @SYNCTEX_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
