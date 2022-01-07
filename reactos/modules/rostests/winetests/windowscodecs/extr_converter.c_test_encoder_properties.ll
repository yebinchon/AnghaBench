; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_encoder_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_encoder_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Reading property count, hr=%x\0A\00", align 1
@WINCODEC_ERR_VALUEOUTOFRANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"IPropertyBag2::GetPropertyInfo - iProperty out of bounce handled wrong, hr=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"IPropertyBag2::GetPropertyInfo - cProperty out of bounce handled wrong, hr=%x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Reading infos from property bag failed, hr=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [99 x i8] c"Mismatch of property count (IPropertyBag2::CountProperties=%i, IPropertyBag2::GetPropertyInfo=%i)\0A\00", align 1
@CLSID_WICTiffEncoder = common dso_local global i32 0, align 4
@testdata_tiff_props = common dso_local global i32 0, align 4
@CLSID_WICPngEncoder = common dso_local global i32 0, align 4
@testdata_png_props = common dso_local global i32 0, align 4
@CLSID_WICJpegEncoder = common dso_local global i32 0, align 4
@testdata_jpeg_props = common dso_local global i32 0, align 4
@CLSID_WICBmpEncoder = common dso_local global i32 0, align 4
@testdata_bmp_props = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"Unset property name in output of IPropertyBag2::GetPropertyInfo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_encoder_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encoder_properties(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x %struct.TYPE_4__], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = bitcast [64 x %struct.TYPE_4__]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 1024, i1 false)
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @IPropertyBag2_CountProperties(i32* %11, i32* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @SUCCEEDED(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %20 = call i64 @IPropertyBag2_GetPropertyInfo(i32* %17, i32 %18, i32 1, %struct.TYPE_4__* %19, i32* %7)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @WINCODEC_ERR_VALUEOUTOFRANGE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %31 = call i64 @IPropertyBag2_GetPropertyInfo(i32* %27, i32 0, i32 %29, %struct.TYPE_4__* %30, i32* %7)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @WINCODEC_ERR_VALUEOUTOFRANGE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* @S_OK, align 8
  store i64 %42, i64* %5, align 8
  br label %53

43:                                               ; preds = %2
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @min(i32 64, i32 %45)
  %47 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %48 = call i64 @IPropertyBag2_GetPropertyInfo(i32* %44, i32 0, i32 %46, %struct.TYPE_4__* %47, i32* %7)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @SUCCEEDED(i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %43, %40
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @FAILED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %131

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @IsEqualCLSID(i32* %66, i32* @CLSID_WICTiffEncoder)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @testdata_tiff_props, align 4
  %72 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @test_specific_encoder_properties(i32* %70, i32 %71, %struct.TYPE_4__* %72, i32 %73)
  br label %108

75:                                               ; preds = %58
  %76 = load i32*, i32** %3, align 8
  %77 = call i64 @IsEqualCLSID(i32* %76, i32* @CLSID_WICPngEncoder)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @testdata_png_props, align 4
  %82 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @test_specific_encoder_properties(i32* %80, i32 %81, %struct.TYPE_4__* %82, i32 %83)
  br label %107

85:                                               ; preds = %75
  %86 = load i32*, i32** %3, align 8
  %87 = call i64 @IsEqualCLSID(i32* %86, i32* @CLSID_WICJpegEncoder)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @testdata_jpeg_props, align 4
  %92 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @test_specific_encoder_properties(i32* %90, i32 %91, %struct.TYPE_4__* %92, i32 %93)
  br label %106

95:                                               ; preds = %85
  %96 = load i32*, i32** %3, align 8
  %97 = call i64 @IsEqualCLSID(i32* %96, i32* @CLSID_WICBmpEncoder)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @testdata_bmp_props, align 4
  %102 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @test_specific_encoder_properties(i32* %100, i32 %101, %struct.TYPE_4__* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %95
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %79
  br label %108

108:                                              ; preds = %107, %69
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %128, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 16
  %119 = icmp ne i32* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [64 x %struct.TYPE_4__], [64 x %struct.TYPE_4__]* %8, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 16
  %127 = call i32 @CoTaskMemFree(i32* %126)
  br label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %109

131:                                              ; preds = %57, %109
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IPropertyBag2_CountProperties(i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SUCCEEDED(i64) #2

declare dso_local i64 @IPropertyBag2_GetPropertyInfo(i32*, i32, i32, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @IsEqualCLSID(i32*, i32*) #2

declare dso_local i32 @test_specific_encoder_properties(i32*, i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @CoTaskMemFree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
