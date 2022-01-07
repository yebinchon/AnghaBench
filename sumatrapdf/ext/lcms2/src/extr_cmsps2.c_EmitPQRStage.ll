; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitPQRStage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitPQRStage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"/MatrixPQR [1 0 0 0 1 0 0 0 1 ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"/RangePQR [ -0.5 2 -0.5 2 -0.5 2 ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [271 x i8] c"%% Absolute colorimetric -- encode to relative to maximize LUT usage\0A/TransformPQR [\0A{0.9642 mul %g div exch pop exch pop exch pop exch pop} bind\0A{1.0000 mul %g div exch pop exch pop exch pop exch pop} bind\0A{0.8249 mul %g div exch pop exch pop exch pop exch pop} bind\0A]\0A\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"%% Bradford Cone Space\0A/MatrixPQR [0.8951 -0.7502 0.0389 0.2664 1.7135 -0.0685 -0.1614 0.0367 1.0296 ] \0A\00", align 1
@.str.4 = private unnamed_addr constant [234 x i8] c"%% VonKries-like transform in Bradford Cone Space\0A/TransformPQR [\0A{exch pop exch 3 get mul exch pop exch 3 get div} bind\0A{exch pop exch 4 get mul exch pop exch 4 get div} bind\0A{exch pop exch 5 get mul exch pop exch 5 get div} bind\0A]\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"%% VonKries-like transform in Bradford Cone Space plus BPC\0A/TransformPQR [\0A\00", align 1
@.str.6 = private unnamed_addr constant [212 x i8] c"{4 index 3 get div 2 index 3 get mul 2 index 3 get 2 index 3 get sub mul 2 index 3 get 4 index 3 get 3 index 3 get sub mul sub 3 index 3 get 3 index 3 get exch sub div exch pop exch pop exch pop exch pop } bind\0A\00", align 1
@.str.7 = private unnamed_addr constant [212 x i8] c"{4 index 4 get div 2 index 4 get mul 2 index 4 get 2 index 4 get sub mul 2 index 4 get 4 index 4 get 3 index 4 get sub mul sub 3 index 4 get 3 index 4 get exch sub div exch pop exch pop exch pop exch pop } bind\0A\00", align 1
@.str.8 = private unnamed_addr constant [214 x i8] c"{4 index 5 get div 2 index 5 get mul 2 index 5 get 2 index 5 get sub mul 2 index 5 get 4 index 5 get 3 index 5 get sub mul sub 3 index 5 get 3 index 5 get exch sub div exch pop exch pop exch pop exch pop } bind\0A]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32)* @EmitPQRStage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmitPQRStage(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @_cmsReadMediaWhitePoint(i32 %15, %struct.TYPE_3__* %11, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %18, i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %21, i32* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %24, i32* %25, i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %29, i32 %31)
  br label %59

33:                                               ; preds = %5
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %34, i32* %35, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %37, i32* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %43, i32* %44, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.4, i64 0, i64 0))
  br label %59

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %47, i32* %48, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %50, i32* %51, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %53, i32* %54, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %56, i32* %57, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %14, %46, %42
  ret void
}

declare dso_local i32 @_cmsReadMediaWhitePoint(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
