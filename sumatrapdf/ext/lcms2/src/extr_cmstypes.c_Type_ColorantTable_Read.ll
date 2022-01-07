; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantTable_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantTable_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_6__*, i8*, i32, i32)* }

@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@cmsERROR_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Too many colorants '%d'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i64*, i64)* @Type_ColorantTable_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_ColorantTable_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_6__* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [34 x i8], align 16
  %16 = alloca [3 x i32], align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %18 = ptrtoint %struct._cms_typehandler_struct* %17 to i64
  %19 = call i32 @cmsUNUSED_PARAMETER(i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = call i32 @_cmsReadUInt32Number(i32 %20, %struct.TYPE_6__* %21, i64* %13)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %80

25:                                               ; preds = %5
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @cmsMAXCHANNELS, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @cmsERROR_RANGE, align 4
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @cmsSignalError(i32 %30, i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i8* null, i8** %6, align 8
  br label %80

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %13, align 8
  %37 = call i8* @cmsAllocNamedColorList(i32 %35, i64 %36, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %14, align 8
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %69, %34
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct.TYPE_6__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_6__*, i8*, i32, i32)** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds [34 x i8], [34 x i8]* %15, i64 0, i64 0
  %49 = call i32 %45(i32 %46, %struct.TYPE_6__* %47, i8* %48, i32 32, i32 1)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %75

52:                                               ; preds = %42
  %53 = getelementptr inbounds [34 x i8], [34 x i8]* %15, i64 0, i64 32
  store i8 0, i8* %53, align 16
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %57 = call i32 @_cmsReadUInt16Array(i32 %54, %struct.TYPE_6__* %55, i32 3, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %75

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds [34 x i8], [34 x i8]* %15, i64 0, i64 0
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %65 = call i32 @cmsAppendNamedColor(i32 %61, i8* %62, i8* %63, i32* %64, i32* null)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %75

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %38

72:                                               ; preds = %38
  %73 = load i64*, i64** %10, align 8
  store i64 1, i64* %73, align 8
  %74 = load i8*, i8** %14, align 8
  store i8* %74, i8** %6, align 8
  br label %80

75:                                               ; preds = %67, %59, %51
  %76 = load i64*, i64** %10, align 8
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @cmsFreeNamedColorList(i32 %77, i8* %78)
  store i8* null, i8** %6, align 8
  br label %80

80:                                               ; preds = %75, %72, %29, %24
  %81 = load i8*, i8** %6, align 8
  ret i8* %81
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_6__*, i64*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i64) #1

declare dso_local i8* @cmsAllocNamedColorList(i32, i64, i32, i8*, i8*) #1

declare dso_local i32 @_cmsReadUInt16Array(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @cmsAppendNamedColor(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @cmsFreeNamedColorList(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
