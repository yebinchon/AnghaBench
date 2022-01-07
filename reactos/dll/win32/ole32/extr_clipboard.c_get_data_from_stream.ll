; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_get_data_from_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_get_data_from_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32*, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i64 }

@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TYMED_ISTREAM = common dso_local global i32 0, align 4
@STREAM_SEEK_CUR = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32**)* @get_data_from_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_from_stream(i32* %0, %struct.TYPE_16__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  %15 = load i32**, i32*** %7, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @GMEM_DDESHARE, align 4
  %17 = load i32, i32* @GMEM_MOVEABLE, align 4
  %18 = or i32 %16, %17
  %19 = call i32* @GlobalAlloc(i32 %18, i32 0)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %4, align 4
  br label %100

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @CreateStreamOnHGlobal(i32* %25, i32 %26, i32** %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %90

32:                                               ; preds = %24
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = bitcast %struct.TYPE_16__* %11 to i8*
  %35 = bitcast %struct.TYPE_16__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load i32, i32* @TYMED_ISTREAM, align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @IDataObject_GetDataHere(i32* %43, %struct.TYPE_16__* %11, %struct.TYPE_14__* %12)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %32
  %49 = call i32 @memset(%struct.TYPE_14__* %12, i32 0, i32 24)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @IDataObject_GetData(i32* %50, %struct.TYPE_16__* %11, %struct.TYPE_14__* %12)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %90

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @STREAM_SEEK_CUR, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @IStream_Seek(i32* %60, i64 %63, i32 %61, i32* %14)
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @STREAM_SEEK_SET, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @IStream_Seek(i32* %67, i64 %70, i32 %68, i32* null)
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @IStream_CopyTo(i32* %74, i32* %75, i32 %76, i32* null, i32* null)
  store i32 %77, i32* %10, align 4
  %78 = call i32 @ReleaseStgMedium(%struct.TYPE_14__* %12)
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %56
  br label %90

83:                                               ; preds = %56
  br label %84

84:                                               ; preds = %83, %32
  %85 = load i32*, i32** %8, align 8
  %86 = load i32**, i32*** %7, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @IStream_Release(i32* %87)
  %89 = load i32, i32* @S_OK, align 4
  store i32 %89, i32* %4, align 4
  br label %100

90:                                               ; preds = %82, %55, %31
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @IStream_Release(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @GlobalFree(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %84, %22
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32* @GlobalAlloc(i32, i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IDataObject_GetDataHere(i32*, %struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @IDataObject_GetData(i32*, %struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @IStream_CopyTo(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ReleaseStgMedium(%struct.TYPE_14__*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
