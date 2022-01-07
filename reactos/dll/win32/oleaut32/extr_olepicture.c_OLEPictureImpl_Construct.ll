; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_olepicture.c_OLEPictureImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_olepicture.c_OLEPictureImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__, %struct.TYPE_16__, i32, i32, i32, i64, i32*, i32*, i32, i32, i64, i32*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"(%p) type = %d\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@OLEPictureImpl_VTable = common dso_local global i32 0, align 4
@OLEPictureImpl_IDispatch_VTable = common dso_local global i32 0, align 4
@OLEPictureImpl_IPersistStream_VTable = common dso_local global i32 0, align 4
@OLEPictureImpl_IConnectionPointContainer_VTable = common dso_local global i32 0, align 4
@IID_IPropertyNotifySink = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"metafile handle %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Unsupported type %d\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@PICTYPE_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i32, %struct.TYPE_22__**)* @OLEPictureImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OLEPictureImpl_Construct(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_22__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %7, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %11 = icmp ne %struct.TYPE_23__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = call %struct.TYPE_22__* @HeapAlloc(i32 %19, i32 %20, i32 128)
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %8, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %23 = icmp ne %struct.TYPE_22__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %25, i64* %4, align 8
  br label %144

26:                                               ; preds = %18
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i32* @OLEPictureImpl_VTable, i32** %29, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 16
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32* @OLEPictureImpl_IDispatch_VTable, i32** %32, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32* @OLEPictureImpl_IPersistStream_VTable, i32** %35, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 14
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i32* @OLEPictureImpl_IConnectionPointContainer_VTable, i32** %38, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 13
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 3
  %43 = bitcast %struct.TYPE_16__* %42 to i32*
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 13
  %46 = call i64 @CreateConnectionPoint(i32* %43, i32* @IID_IPropertyNotifySink, i32** %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %26
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = call i32 @HeapFree(i32 %51, i32 0, %struct.TYPE_22__* %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %144

55:                                               ; preds = %26
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 12
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 9
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 8
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  store i32 -559038737, i32* %71, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = icmp ne %struct.TYPE_23__* %77, null
  br i1 %78, label %79, label %133

79:                                               ; preds = %55
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = bitcast %struct.TYPE_23__* %81 to i8*
  %84 = bitcast %struct.TYPE_23__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 24, i1 false)
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %123 [
    i32 132, label %88
    i32 129, label %91
    i32 128, label %112
    i32 130, label %117
    i32 131, label %120
  ]

88:                                               ; preds = %79
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %90 = call i32 @OLEPictureImpl_SetBitmap(%struct.TYPE_22__* %89)
  br label %132

91:                                               ; preds = %79
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %96)
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  br label %132

112:                                              ; preds = %79
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 4
  store i32 0, i32* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 5
  store i32 0, i32* %116, align 4
  br label %132

117:                                              ; preds = %79
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %119 = call i32 @OLEPictureImpl_SetIcon(%struct.TYPE_22__* %118)
  br label %132

120:                                              ; preds = %79
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %122 = call i32 @OLEPictureImpl_SetEMF(%struct.TYPE_22__* %121)
  br label %132

123:                                              ; preds = %79
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 3
  %130 = call i32 @IPicture_Release(%struct.TYPE_16__* %129)
  %131 = load i64, i64* @E_UNEXPECTED, align 8
  store i64 %131, i64* %4, align 8
  br label %144

132:                                              ; preds = %120, %117, %112, %91, %88
  br label %138

133:                                              ; preds = %55
  %134 = load i32, i32* @PICTYPE_UNINITIALIZED, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %132
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %142 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %142, align 8
  %143 = load i64, i64* @S_OK, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %138, %123, %50, %24
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_22__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @CreateConnectionPoint(i32*, i32*, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OLEPictureImpl_SetBitmap(%struct.TYPE_22__*) #1

declare dso_local i32 @OLEPictureImpl_SetIcon(%struct.TYPE_22__*) #1

declare dso_local i32 @OLEPictureImpl_SetEMF(%struct.TYPE_22__*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IPicture_Release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
