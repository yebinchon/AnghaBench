; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_UcrBg_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_UcrBg_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_12__*, i64, i8*)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64)* @Type_UcrBg_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_UcrBg_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_12__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %12, align 8
  %17 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %18 = ptrtoint %struct._cms_typehandler_struct* %17 to i64
  %19 = call i32 @cmsUNUSED_PARAMETER(i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @_cmsWriteUInt32Number(i32 %20, %struct.TYPE_12__* %21, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %6, align 4
  br label %119

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_cmsWriteUInt16Array(i32 %32, %struct.TYPE_12__* %33, i32 %38, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %6, align 4
  br label %119

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_cmsWriteUInt32Number(i32 %49, %struct.TYPE_12__* %50, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %6, align 4
  br label %119

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @_cmsWriteUInt16Array(i32 %61, %struct.TYPE_12__* %62, i32 %67, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %6, align 4
  br label %119

77:                                               ; preds = %60
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @cmsNoLanguage, align 4
  %83 = load i32, i32* @cmsNoCountry, align 4
  %84 = call i64 @cmsMLUgetASCII(i32 %78, i32 %81, i32 %82, i32 %83, i8* null, i64 0)
  store i64 %84, i64* %13, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @_cmsMalloc(i32 %85, i64 %86)
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @cmsNoLanguage, align 4
  %94 = load i32, i32* @cmsNoCountry, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i64 @cmsMLUgetASCII(i32 %89, i32 %92, i32 %93, i32 %94, i8* %95, i64 %96)
  %98 = load i64, i64* %13, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %6, align 4
  br label %119

102:                                              ; preds = %77
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32 (i32, %struct.TYPE_12__*, i64, i8*)*, i32 (i32, %struct.TYPE_12__*, i64, i8*)** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 %105(i32 %106, %struct.TYPE_12__* %107, i64 %108, i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %102
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %6, align 4
  br label %119

114:                                              ; preds = %102
  %115 = load i32, i32* %7, align 4
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @_cmsFree(i32 %115, i8* %116)
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %112, %100, %75, %58, %46, %29
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @_cmsWriteUInt16Array(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @cmsMLUgetASCII(i32, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @_cmsMalloc(i32, i64) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
