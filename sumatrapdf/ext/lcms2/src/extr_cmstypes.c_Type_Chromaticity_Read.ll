; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Chromaticity_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Chromaticity_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { double, i32, i32 }
%struct.TYPE_6__ = type { double, i32, i32 }
%struct.TYPE_5__ = type { double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* @Type_Chromaticity_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_Chromaticity_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %16 = ptrtoint %struct._cms_typehandler_struct* %15 to i32
  %17 = call i32 @cmsUNUSED_PARAMETER(i32 %16)
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @_cmsMallocZero(i32 %19, i32 48)
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %12, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %132

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @_cmsReadUInt16Number(i32 %26, i32* %27, i32* %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %127

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @_cmsReadUInt16Number(i32 %38, i32* %39, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %127

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @_cmsReadUInt16Number(i32 %44, i32* %45, i32* %13)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %127

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %34, %31
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %127

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @_cmsReadUInt16Number(i32 %55, i32* %56, i32* %14)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %127

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = call i32 @_cmsRead15Fixed16Number(i32 %61, i32* %62, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %127

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = call i32 @_cmsRead15Fixed16Number(i32 %70, i32* %71, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %127

78:                                               ; preds = %69
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store double 1.000000e+00, double* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = call i32 @_cmsRead15Fixed16Number(i32 %82, i32* %83, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %127

90:                                               ; preds = %78
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = call i32 @_cmsRead15Fixed16Number(i32 %91, i32* %92, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %127

99:                                               ; preds = %90
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store double 1.000000e+00, double* %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = call i32 @_cmsRead15Fixed16Number(i32 %103, i32* %104, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  br label %127

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = call i32 @_cmsRead15Fixed16Number(i32 %112, i32* %113, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  br label %127

120:                                              ; preds = %111
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store double 1.000000e+00, double* %123, align 8
  %124 = load i32*, i32** %10, align 8
  store i32 1, i32* %124, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = bitcast %struct.TYPE_8__* %125 to i8*
  store i8* %126, i8** %6, align 8
  br label %132

127:                                              ; preds = %119, %110, %98, %89, %77, %68, %59, %53, %48, %42, %30
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %130 = bitcast %struct.TYPE_8__* %129 to i8*
  %131 = call i32 @_cmsFree(i32 %128, i8* %130)
  store i8* null, i8** %6, align 8
  br label %132

132:                                              ; preds = %127, %120, %24
  %133 = load i8*, i8** %6, align 8
  ret i8* %133
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

declare dso_local i64 @_cmsMallocZero(i32, i32) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, i32*, i32*) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, i32*, i32*) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
