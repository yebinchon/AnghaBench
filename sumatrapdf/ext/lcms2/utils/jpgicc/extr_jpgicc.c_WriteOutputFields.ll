; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_WriteOutputFields.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_WriteOutputFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@JCS_GRAYSCALE = common dso_local global i8* null, align 8
@JCS_RGB = common dso_local global i8* null, align 8
@JCS_YCbCr = common dso_local global i8* null, align 8
@JCS_CMYK = common dso_local global i8* null, align 8
@JCS_YCCK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unsupported output color space\00", align 1
@jpegQuality = common dso_local global i32 0, align 4
@Compressor = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @WriteOutputFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteOutputFields(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %20 [
    i32 131, label %8
    i32 129, label %10
    i32 128, label %13
    i32 132, label %15
    i32 130, label %18
  ]

8:                                                ; preds = %1
  %9 = load i8*, i8** @JCS_GRAYSCALE, align 8
  store i8* %9, i8** %4, align 8
  store i8* %9, i8** %3, align 8
  store i32 1, i32* %5, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i8*, i8** @JCS_RGB, align 8
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** @JCS_YCbCr, align 8
  store i8* %12, i8** %4, align 8
  store i32 3, i32* %5, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i8*, i8** @JCS_YCbCr, align 8
  store i8* %14, i8** %4, align 8
  store i8* %14, i8** %3, align 8
  store i32 3, i32* %5, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i8*, i8** @JCS_CMYK, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** @JCS_YCCK, align 8
  store i8* %17, i8** %4, align 8
  store i32 4, i32* %5, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i8*, i8** @JCS_YCbCr, align 8
  store i8* %19, i8** %4, align 8
  store i8* %19, i8** %3, align 8
  store i32 3, i32* %5, align 4
  br label %22

20:                                               ; preds = %1
  %21 = call i32 @FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %62

22:                                               ; preds = %18, %15, %13, %10, %8
  %23 = load i32, i32* @jpegQuality, align 4
  %24 = icmp sge i32 %23, 100
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 5), align 8
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 4), align 8
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 1), align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 0), align 8
  %31 = call i32 @jpeg_set_defaults(%struct.TYPE_7__* @Compressor)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @jpeg_set_colorspace(%struct.TYPE_7__* @Compressor, i8* %32)
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 132
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 2), align 8
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* @jpegQuality, align 4
  %39 = call i32 @jpeg_set_quality(%struct.TYPE_7__* @Compressor, i32 %38, i32 1)
  %40 = load i32, i32* @jpegQuality, align 4
  %41 = icmp sge i32 %40, 70
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 1), align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 3), align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Compressor, i32 0, i32 3), align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %20, %61, %37
  ret void
}

declare dso_local i32 @FatalError(i8*) #1

declare dso_local i32 @jpeg_set_defaults(%struct.TYPE_7__*) #1

declare dso_local i32 @jpeg_set_colorspace(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @jpeg_set_quality(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
