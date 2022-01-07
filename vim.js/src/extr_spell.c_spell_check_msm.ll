; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_spell.c_spell_check_msm.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_spell.c_spell_check_msm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_msm = common dso_local global i8* null, align 8
@FAIL = common dso_local global i32 0, align 4
@SBLOCKSIZE = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@compress_start = common dso_local global i64 0, align 8
@compress_inc = common dso_local global i64 0, align 8
@compress_added = common dso_local global i64 0, align 8
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spell_check_msm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i8*, i8** @p_msm, align 8
  store i8* %6, i8** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = call i32 @VIM_ISDIGIT(i8 signext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @FAIL, align 4
  store i32 %12, i32* %1, align 4
  br label %89

13:                                               ; preds = %0
  %14 = call i32 @getdigits(i8** %2)
  %15 = mul nsw i32 %14, 10
  %16 = load i32, i32* @SBLOCKSIZE, align 4
  %17 = sdiv i32 %16, 102
  %18 = sdiv i32 %15, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %3, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 44
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* @FAIL, align 4
  store i32 %25, i32* %1, align 4
  br label %89

26:                                               ; preds = %13
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @VIM_ISDIGIT(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @FAIL, align 4
  store i32 %34, i32* %1, align 4
  br label %89

35:                                               ; preds = %26
  %36 = call i32 @getdigits(i8** %2)
  %37 = mul nsw i32 %36, 102
  %38 = load i32, i32* @SBLOCKSIZE, align 4
  %39 = sdiv i32 %38, 10
  %40 = sdiv i32 %37, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %4, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @FAIL, align 4
  store i32 %47, i32* %1, align 4
  br label %89

48:                                               ; preds = %35
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %2, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @VIM_ISDIGIT(i8 signext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @FAIL, align 4
  store i32 %56, i32* %1, align 4
  br label %89

57:                                               ; preds = %48
  %58 = call i32 @getdigits(i8** %2)
  %59 = mul nsw i32 %58, 1024
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %5, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @NUL, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @FAIL, align 4
  store i32 %68, i32* %1, align 4
  br label %89

69:                                               ; preds = %57
  %70 = load i64, i64* %3, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %4, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %3, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %75, %72, %69
  %83 = load i32, i32* @FAIL, align 4
  store i32 %83, i32* %1, align 4
  br label %89

84:                                               ; preds = %78
  %85 = load i64, i64* %3, align 8
  store i64 %85, i64* @compress_start, align 8
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* @compress_inc, align 8
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* @compress_added, align 8
  %88 = load i32, i32* @OK, align 4
  store i32 %88, i32* %1, align 4
  br label %89

89:                                               ; preds = %84, %82, %67, %55, %46, %33, %24, %11
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @VIM_ISDIGIT(i8 signext) #1

declare dso_local i32 @getdigits(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
