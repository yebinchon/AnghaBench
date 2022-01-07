; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPEcurve_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPEcurve_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_6__ = type { i64 (i32, %struct.TYPE_6__*)* }

@ReadMPECurve = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i64*, i64)* @Type_MPEcurve_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_MPEcurve_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_6__* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32**, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %18 = load i64*, i64** %10, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64 (i32, %struct.TYPE_6__*)*, i64 (i32, %struct.TYPE_6__*)** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = call i64 %21(i32 %22, %struct.TYPE_6__* %23)
  %25 = sub i64 %24, 4
  store i64 %25, i64* %16, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = call i32 @_cmsReadUInt16Number(i32 %26, %struct.TYPE_6__* %27, i64* %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %99

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = call i32 @_cmsReadUInt16Number(i32 %32, %struct.TYPE_6__* %33, i64* %14)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i8* null, i8** %6, align 8
  br label %99

37:                                               ; preds = %31
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* null, i8** %6, align 8
  br label %99

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @_cmsCalloc(i32 %43, i64 %44, i32 8)
  %46 = inttoptr i64 %45 to i32**
  store i32** %46, i32*** %17, align 8
  %47 = load i32**, i32*** %17, align 8
  %48 = icmp eq i32** %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* null, i8** %6, align 8
  br label %99

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i32**, i32*** %17, align 8
  %57 = load i32, i32* @ReadMPECurve, align 4
  %58 = call i64 @ReadPositionTable(i32 %51, %struct._cms_typehandler_struct* %52, %struct.TYPE_6__* %53, i64 %54, i64 %55, i32** %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %13, align 8
  %63 = load i32**, i32*** %17, align 8
  %64 = call i8* @cmsStageAllocToneCurves(i32 %61, i64 %62, i32** %63)
  store i8* %64, i8** %12, align 8
  br label %66

65:                                               ; preds = %50
  store i8* null, i8** %12, align 8
  br label %66

66:                                               ; preds = %65, %60
  store i64 0, i64* %15, align 8
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32**, i32*** %17, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32**, i32*** %17, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @cmsFreeToneCurve(i32 %78, i32* %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %15, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %15, align 8
  br label %67

88:                                               ; preds = %67
  %89 = load i32, i32* %7, align 4
  %90 = load i32**, i32*** %17, align 8
  %91 = call i32 @_cmsFree(i32 %89, i32** %90)
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  %96 = zext i32 %95 to i64
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %88, %49, %41, %36, %30
  %100 = load i8*, i8** %6, align 8
  ret i8* %100
}

declare dso_local i32 @_cmsReadUInt16Number(i32, %struct.TYPE_6__*, i64*) #1

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

declare dso_local i64 @ReadPositionTable(i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i64, i64, i32**, i32) #1

declare dso_local i8* @cmsStageAllocToneCurves(i32, i64, i32**) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @_cmsFree(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
