; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_encoders.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@test_encoders.bmp_format = internal constant [4 x i8] c"BMP\00", align 1
@Ok = common dso_local global i32 0, align 4
@GenericError = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No BMP codec found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encoders() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = call i32 @GdipGetImageEncodersSize(i32* %2, i32* %3)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_5__* @GdipAlloc(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %88

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @GdipGetImageEncoders(i32 %18, i32 %19, %struct.TYPE_5__* null)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @GenericError, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call i32 @GdipGetImageEncoders(i32 0, i32 %24, %struct.TYPE_5__* %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @GenericError, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @GdipGetImageEncoders(i32 %30, i32 %32, %struct.TYPE_5__* %33)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* @GenericError, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @GdipGetImageEncoders(i32 %38, i32 %40, %struct.TYPE_5__* %41)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @GenericError, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = call i32 @GdipGetImageEncoders(i32 %46, i32 %47, %struct.TYPE_5__* %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %76, %17
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32, i32* @CP_ACP, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %67 = call i32 @WideCharToMultiByte(i32 %59, i32 0, i32 %65, i32 -1, i8* %66, i32 32, i32 0, i32 0)
  %68 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %70 = call i64 @CompareStringA(i32 %68, i32 0, i8* %69, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_encoders.bmp_format, i64 0, i64 0), i32 -1)
  %71 = load i64, i64* @CSTR_EQUAL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %6, align 4
  br label %79

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %54

79:                                               ; preds = %73, %54
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = call i32 @GdipFree(%struct.TYPE_5__* %86)
  br label %88

88:                                               ; preds = %85, %16
  ret void
}

declare dso_local i32 @GdipGetImageEncodersSize(i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local %struct.TYPE_5__* @GdipAlloc(i32) #1

declare dso_local i32 @GdipGetImageEncoders(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @CompareStringA(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
