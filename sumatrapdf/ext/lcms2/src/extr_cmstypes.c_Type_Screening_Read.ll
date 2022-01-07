; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Screening_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Screening_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i64*, i64)* @Type_Screening_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_Screening_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @_cmsMallocZero(i32 %14, i32 16)
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %109

20:                                               ; preds = %5
  %21 = load i64*, i64** %10, align 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @_cmsReadUInt32Number(i32 %22, i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %101

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @_cmsReadUInt32Number(i32 %30, i32* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %101

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @cmsMAXCHANNELS, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @cmsMAXCHANNELS, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %37
  store i64 0, i64* %13, align 8
  br label %50

50:                                               ; preds = %94, %49
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @_cmsRead15Fixed16Number(i32 %58, i32* %59, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  br label %101

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @_cmsRead15Fixed16Number(i32 %70, i32* %71, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %101

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @_cmsReadUInt32Number(i32 %82, i32* %83, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %101

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %13, align 8
  br label %50

97:                                               ; preds = %50
  %98 = load i64*, i64** %10, align 8
  store i64 1, i64* %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %100 = bitcast %struct.TYPE_5__* %99 to i8*
  store i8* %100, i8** %6, align 8
  br label %109

101:                                              ; preds = %92, %80, %68, %36, %28
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %107 = call i32 @_cmsFree(i32 %105, %struct.TYPE_5__* %106)
  br label %108

108:                                              ; preds = %104, %101
  store i8* null, i8** %6, align 8
  br label %109

109:                                              ; preds = %108, %97, %19
  %110 = load i8*, i8** %6, align 8
  ret i8* %110
}

declare dso_local i64 @_cmsMallocZero(i32, i32) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, i32*, i32*) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, i32*, i32*) #1

declare dso_local i32 @_cmsFree(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
