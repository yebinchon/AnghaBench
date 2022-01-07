; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_SavingImages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_SavingImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@test_SavingImages.filenameA = internal constant [6 x i8] c"a.bmp\00", align 1
@test_SavingImages.filename = internal constant [6 x i8] c"a.bmp\00", align 1
@InvalidParameter = common dso_local global i64 0, align 8
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Delete failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SavingImages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SavingImages() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store double 1.000000e+01, double* %5, align 8
  store double 2.000000e+01, double* %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %10 = call i64 @GdipSaveImageToFile(i32* null, i8* null, i32* null, i32 0)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* @InvalidParameter, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @expect(i64 %11, i64 %12)
  store i32* null, i32** %2, align 8
  %14 = load i32, i32* @PixelFormat24bppRGB, align 4
  %15 = call i64 @GdipCreateBitmapFromScan0(double 1.000000e+01, double 2.000000e+01, i32 0, i32 %14, i32* null, i32** %2)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* @Ok, align 8
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @expect(i64 %16, i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %0
  br label %98

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @GdipSaveImageToFile(i32* %23, i8* null, i32* null, i32 0)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* @InvalidParameter, align 8
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @expect(i64 %25, i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @GdipSaveImageToFile(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SavingImages.filename, i64 0, i64 0), i32* null, i32 0)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* @InvalidParameter, align 8
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @expect(i64 %30, i64 %31)
  %33 = call i64 @GdipGetImageEncodersSize(i64* %3, i64* %4)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @Ok, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = load i64, i64* %3, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %22
  br label %87

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = call %struct.TYPE_5__* @GdipAlloc(i64 %42)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %9, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %87

47:                                               ; preds = %41
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = call i64 @GdipGetImageEncoders(i64 %48, i64 %49, %struct.TYPE_5__* %50)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load i64, i64* @Ok, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %87

56:                                               ; preds = %47
  %57 = load i32*, i32** %2, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i64 @GdipSaveImageToFile(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SavingImages.filename, i64 0, i64 0), i32* %60, i32 0)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* @Ok, align 8
  %63 = load i64, i64* %1, align 8
  %64 = call i32 @expect(i64 %62, i64 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @GdipDisposeImage(i32* %65)
  store i32* null, i32** %2, align 8
  %67 = call i64 @GdipLoadImageFromFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SavingImages.filename, i64 0, i64 0), i32** %2)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* @Ok, align 8
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @expect(i64 %68, i64 %69)
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @Ok, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  br label %87

75:                                               ; preds = %56
  %76 = load i32*, i32** %2, align 8
  %77 = call i64 @GdipGetImageDimension(i32* %76, double* %7, double* %8)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @Ok, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %87

82:                                               ; preds = %75
  %83 = load double, double* %7, align 8
  %84 = call i32 @expectf(double 1.000000e+01, double %83)
  %85 = load double, double* %8, align 8
  %86 = call i32 @expectf(double 2.000000e+01, double %85)
  br label %87

87:                                               ; preds = %82, %81, %74, %55, %46, %40
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = call i32 @GdipFree(%struct.TYPE_5__* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @GdipDisposeImage(i32* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = call i32 @DeleteFileA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SavingImages.filenameA, i64 0, i64 0))
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %21
  ret void
}

declare dso_local i64 @GdipSaveImageToFile(i32*, i8*, i32*, i32) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i64 @GdipCreateBitmapFromScan0(double, double, i32, i32, i32*, i32**) #1

declare dso_local i64 @GdipGetImageEncodersSize(i64*, i64*) #1

declare dso_local %struct.TYPE_5__* @GdipAlloc(i64) #1

declare dso_local i64 @GdipGetImageEncoders(i64, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

declare dso_local i64 @GdipLoadImageFromFile(i8*, i32**) #1

declare dso_local i64 @GdipGetImageDimension(i32*, double*, double*) #1

declare dso_local i32 @expectf(double, double) #1

declare dso_local i32 @GdipFree(%struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
