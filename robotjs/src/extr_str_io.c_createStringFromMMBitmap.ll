; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_str_io.c_createStringFromMMBitmap.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_str_io.c_createStringFromMMBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@kMMBMPStringGenericError = common dso_local global i32 0, align 4
@STR_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@kMMBMPStringCompressError = common dso_local global i32 0, align 4
@MMMBMPStringEncodeError = common dso_local global i32 0, align 4
@MAX_DIMENSION_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"b%lu,%lu,%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @createStringFromMMBitmap(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = call i8* @createRawBitmapData(%struct.TYPE_4__* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @kMMBMPStringGenericError, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  store i8* null, i8** %3, align 8
  br label %94

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* @STR_BYTES_PER_PIXEL, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i8* @zlib_compress(i8* %28, i32 %37, i32 9, i64* %10)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %27
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @kMMBMPStringCompressError, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  store i8* null, i8** %3, align 8
  br label %94

50:                                               ; preds = %27
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %52, 1
  %54 = call i8* @base64encode(i8* %51, i64 %53, i64* %11)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8*, i8** %9, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @MMMBMPStringEncodeError, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  store i8* null, i8** %3, align 8
  br label %94

66:                                               ; preds = %50
  %67 = load i32, i32* @MAX_DIMENSION_LEN, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 3, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 1
  %75 = call i8* @calloc(i32 1, i64 %74)
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @snprintf(i8* %76, i64 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %85, i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i8*, i8** %8, align 8
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %66, %65, %49, %26
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @createRawBitmapData(%struct.TYPE_4__*) #1

declare dso_local i8* @zlib_compress(i8*, i32, i32, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @base64encode(i8*, i64, i64*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
