; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_webpdec.c_LoadWebP.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_webpdec.c_LoadWebP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VP8_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadWebP(i8* %0, i32** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32**, i32*** %7, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 @ImgIoUtilReadFile(i8* %12, i32** %13, i64* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* %11, i32** %9, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32**, i32*** %7, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @WebPGetFeatures(i32* %24, i64 %26, i32* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @VP8_STATUS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load i32**, i32*** %7, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @free(i8* %35)
  %37 = load i32**, i32*** %7, align 8
  store i32* null, i32** %37, align 8
  %38 = load i64*, i64** %8, align 8
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @PrintWebPError(i8* %39, i64 %40)
  store i32 0, i32* %5, align 4
  br label %43

42:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %32, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @ImgIoUtilReadFile(i8*, i32**, i64*) #1

declare dso_local i64 @WebPGetFeatures(i32*, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @PrintWebPError(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
