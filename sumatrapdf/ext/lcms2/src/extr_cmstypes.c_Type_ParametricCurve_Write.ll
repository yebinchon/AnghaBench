; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ParametricCurve_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ParametricCurve_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@Type_ParametricCurve_Write.ParamsByType = internal constant [6 x i32] [i32 0, i32 1, i32 3, i32 4, i32 5, i32 7], align 16
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Multisegment or Inverted parametric curves cannot be written\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported parametric curve\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, %struct._cms_typehandler_struct*)* @Type_ParametricCurve_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_ParametricCurve_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, %struct._cms_typehandler_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._cms_typehandler_struct*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct._cms_typehandler_struct* %4, %struct._cms_typehandler_struct** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %12, align 8
  %18 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %19 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %5
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %36 = call i32 @cmsSignalError(i32 %34, i32 %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %6, align 4
  br label %99

38:                                               ; preds = %30
  %39 = load i32, i32* %15, align 4
  %40 = icmp sgt i32 %39, 5
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %44 = call i32 @cmsSignalError(i32 %42, i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %6, align 4
  br label %99

46:                                               ; preds = %38
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* @Type_ParametricCurve_Write.ParamsByType, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @_cmsWriteUInt16Number(i32 %51, i32* %52, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %46
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %6, align 4
  br label %99

64:                                               ; preds = %46
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @_cmsWriteUInt16Number(i32 %65, i32* %66, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %6, align 4
  br label %99

71:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @_cmsWrite15Fixed16Number(i32 %77, i32* %78, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %76
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %6, align 4
  br label %99

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %91, %69, %62, %41, %33
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWrite15Fixed16Number(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
