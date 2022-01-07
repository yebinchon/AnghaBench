; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_unicode.c_FromCharset.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_unicode.c_FromCharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FromCharset(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @vlc_iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %59

20:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  store i32 4, i32* %10, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %7, align 8
  %30 = mul i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = add i64 1, %31
  %33 = trunc i64 %32 to i32
  %34 = call i8* @malloc(i32 %33)
  store i8* %34, i8** %9, align 8
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %55

38:                                               ; preds = %24
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @vlc_iconv(i64 %39, i8** %12, i64* %11, i8** %14, i64* %13)
  %41 = icmp ne i64 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %14, align 8
  store i8 0, i8* %43, align 1
  br label %55

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** %9, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @E2BIG, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %21

55:                                               ; preds = %50, %42, %37, %21
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @vlc_iconv_close(i64 %56)
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %55, %19
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i64 @vlc_iconv_open(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @vlc_iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
