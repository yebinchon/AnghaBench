; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPEclut_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPEclut_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_13__ = type { i32 (i32, %struct.TYPE_13__*, i32, i64*)* }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64* }

@MAX_INPUT_DIMENSIONS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_13__*, i8*, i64)* @Type_MPEclut_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Type_MPEclut_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_13__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [16 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %14, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %15, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_INPUT_DIMENSIONS, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %6, align 8
  br label %120

29:                                               ; preds = %5
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %6, align 8
  br label %120

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @_cmsWriteUInt16Number(i32 %38, %struct.TYPE_13__* %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %6, align 8
  br label %120

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @_cmsWriteUInt16Number(i32 %49, %struct.TYPE_13__* %50, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %6, align 8
  br label %120

59:                                               ; preds = %48
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %61 = call i32 @memset(i64* %60, i32 0, i32 128)
  store i64 0, i64* %13, align 8
  br label %62

62:                                               ; preds = %79, %59
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 %77
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  br label %62

82:                                               ; preds = %62
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32 (i32, %struct.TYPE_13__*, i32, i64*)*, i32 (i32, %struct.TYPE_13__*, i32, i64*)** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %89 = call i32 %85(i32 %86, %struct.TYPE_13__* %87, i32 16, i64* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %6, align 8
  br label %120

93:                                               ; preds = %82
  store i64 0, i64* %13, align 8
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @_cmsWriteFloat32Number(i32 %101, %struct.TYPE_13__* %102, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %6, align 8
  br label %120

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %13, align 8
  br label %94

118:                                              ; preds = %94
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %118, %112, %91, %57, %46, %35, %27
  %121 = load i64, i64* %6, align 8
  ret i64 %121
}

declare dso_local i32 @_cmsWriteUInt16Number(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @_cmsWriteFloat32Number(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
