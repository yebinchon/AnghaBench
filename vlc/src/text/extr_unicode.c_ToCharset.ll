; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_unicode.c_ToCharset.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_unicode.c_ToCharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ToCharset(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @vlc_iconv_open(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %90

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %9, align 8
  store i32 4, i32* %11, align 4
  br label %25

25:                                               ; preds = %83, %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %86

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  %33 = mul i64 %30, %32
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %86

42:                                               ; preds = %28
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %10, align 8
  store i8* %44, i8** %14, align 8
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = sub i64 %46, %48
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @vlc_iconv(i64 %50, i8** %13, i64* %15, i8** %14, i64* %16)
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %75

53:                                               ; preds = %42
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = sub i64 %54, %56
  %58 = load i64, i64* %16, align 8
  %59 = sub i64 %57, %58
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %16, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %16, align 8
  store i64 1, i64* %15, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @vlc_iconv(i64 %65, i8** %13, i64* %15, i8** %14, i64* %16)
  %67 = icmp ne i64 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %86

69:                                               ; preds = %53
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EILSEQ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %86

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %42
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  store i8* null, i8** %10, align 8
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @E2BIG, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %25

86:                                               ; preds = %81, %73, %68, %41, %25
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @vlc_iconv_close(i64 %87)
  %89 = load i8*, i8** %10, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %86, %21
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i64 @vlc_iconv_open(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
