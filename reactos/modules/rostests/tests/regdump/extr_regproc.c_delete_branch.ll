; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_delete_branch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_delete_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_branch(i32 %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @RegOpenKey(i32 %15, i8* %17, i32* %8)
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = call i32 (...) @REGPROC_print_error()
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %104

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @RegQueryInfoKey(i32 %25, i32* null, i32* null, i32* null, i64* %10, i64* %9, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = call i32 (...) @REGPROC_print_error()
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @RegCloseKey(i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %104

34:                                               ; preds = %24
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @_tcslen(i8* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 1
  %44 = call i32 @REGPROC_resize_char_buffer(i8** %38, i64* %39, i64 %43)
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 92, i8* %48, align 1
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %49, 1
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %89, %34
  %52 = load i64, i64* %13, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %51
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %14, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %13, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i64 @RegEnumKeyEx(i32 %59, i64 %60, i8* %65, i64* %14, i32* null, i32* null, i32* null, i32* null)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %54
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ERROR_MORE_DATA, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = call i32 (...) @REGPROC_print_error()
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %104

83:                                               ; preds = %74, %70, %54
  %84 = load i32, i32* %5, align 4
  %85 = load i8**, i8*** %6, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = call i32 @delete_branch(i32 %84, i8** %85, i64* %86)
  br label %88

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %13, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %13, align 8
  br label %51

92:                                               ; preds = %51
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @RegCloseKey(i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i8**, i8*** %6, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @RegDeleteKey(i32 %99, i8* %101)
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %92, %78, %29, %21
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @RegOpenKey(i32, i8*, i32*) #1

declare dso_local i32 @REGPROC_print_error(...) #1

declare dso_local i64 @RegQueryInfoKey(i32, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @_tcslen(i8*) #1

declare dso_local i32 @REGPROC_resize_char_buffer(i8**, i64*, i64) #1

declare dso_local i64 @RegEnumKeyEx(i32, i64, i8*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegDeleteKey(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
