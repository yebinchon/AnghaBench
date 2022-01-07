; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_wine_cp_mbstowcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_wine_cp_mbstowcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cptable = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@MB_COMPOSITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_cp_mbstowcs(%union.cptable* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.cptable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %union.cptable* %0, %union.cptable** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %10, align 8
  store i8* %15, i8** %14, align 8
  %16 = load %union.cptable*, %union.cptable** %8, align 8
  %17 = bitcast %union.cptable* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %64

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %union.cptable*, %union.cptable** %8, align 8
  %28 = bitcast %union.cptable* %27 to i32*
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @check_invalid_chars_sbcs(i32* %28, i32 %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -2, i32* %7, align 4
  br label %99

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MB_COMPOSITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %7, align 4
  br label %99

46:                                               ; preds = %41
  %47 = load %union.cptable*, %union.cptable** %8, align 8
  %48 = bitcast %union.cptable* %47 to i32*
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @mbstowcs_sbcs(i32* %48, i32 %49, i8* %50, i32 %51, i32* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %99

55:                                               ; preds = %36
  %56 = load %union.cptable*, %union.cptable** %8, align 8
  %57 = bitcast %union.cptable* %56 to i32*
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @mbstowcs_sbcs_decompose(i32* %57, i32 %58, i8* %59, i32 %60, i32* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %99

64:                                               ; preds = %6
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %union.cptable*, %union.cptable** %8, align 8
  %71 = bitcast %union.cptable* %70 to i32*
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @check_invalid_chars_dbcs(i32* %71, i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 -2, i32* %7, align 4
  br label %99

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MB_COMPOSITE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %union.cptable*, %union.cptable** %8, align 8
  %85 = bitcast %union.cptable* %84 to i32*
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @mbstowcs_dbcs(i32* %85, i8* %86, i32 %87, i32* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %99

91:                                               ; preds = %78
  %92 = load %union.cptable*, %union.cptable** %8, align 8
  %93 = bitcast %union.cptable* %92 to i32*
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @mbstowcs_dbcs_decompose(i32* %93, i8* %94, i32 %95, i32* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %91, %83, %76, %55, %46, %44, %34
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i64 @check_invalid_chars_sbcs(i32*, i32, i8*, i32) #1

declare dso_local i32 @mbstowcs_sbcs(i32*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @mbstowcs_sbcs_decompose(i32*, i32, i8*, i32, i32*, i32) #1

declare dso_local i64 @check_invalid_chars_dbcs(i32*, i8*, i32) #1

declare dso_local i32 @mbstowcs_dbcs(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @mbstowcs_dbcs_decompose(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
