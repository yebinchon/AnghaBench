; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_str_io.c_createMMBitmapFromString.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_str_io.c_createMMBitmapFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMMBMPStringInvalidHeaderError = common dso_local global i32 0, align 4
@kMMBMPStringDecodeError = common dso_local global i32 0, align 4
@kMMBMPStringDecompressError = common dso_local global i32 0, align 4
@STR_BYTES_PER_PIXEL = common dso_local global i64 0, align 8
@kMMBMPStringSizeError = common dso_local global i32 0, align 4
@STR_BITS_PER_PIXEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @createMMBitmapFromString(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = icmp ne i32 %16, 98
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = call i32 @getSizeFromString(i32* %19, i64 %21, i64* %10, i64* %11, i64* %12)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18, %3
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @kMMBMPStringInvalidHeaderError, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  store i32* null, i32** %4, align 8
  br label %88

31:                                               ; preds = %18
  %32 = load i64, i64* %12, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32* %34, i32** %5, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32* @base64decode(i32* %38, i64 %39, i32* null)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @kMMBMPStringDecodeError, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  store i32* null, i32** %4, align 8
  br label %88

50:                                               ; preds = %31
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @zlib_decompress(i32* %51, i64* %12)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @free(i32* %53)
  %55 = load i32*, i32** %9, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @kMMBMPStringDecompressError, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  store i32* null, i32** %4, align 8
  br label %88

64:                                               ; preds = %50
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @STR_BYTES_PER_PIXEL, align 8
  %67 = mul i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %13, align 8
  %70 = mul i64 %68, %69
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @kMMBMPStringSizeError, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  store i32* null, i32** %4, align 8
  br label %88

80:                                               ; preds = %64
  %81 = load i32*, i32** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i32, i32* @STR_BITS_PER_PIXEL, align 4
  %86 = load i64, i64* @STR_BYTES_PER_PIXEL, align 8
  %87 = call i32* @createMMBitmap(i32* %81, i64 %82, i64 %83, i64 %84, i32 %85, i64 %86)
  store i32* %87, i32** %4, align 8
  br label %88

88:                                               ; preds = %80, %79, %63, %49, %30
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

declare dso_local i32 @getSizeFromString(i32*, i64, i64*, i64*, i64*) #1

declare dso_local i32* @base64decode(i32*, i64, i32*) #1

declare dso_local i32* @zlib_decompress(i32*, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @createMMBitmap(i32*, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
