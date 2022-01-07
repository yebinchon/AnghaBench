; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_get_data_from_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_get_data_from_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_11__ = type { i32* }

@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@TYMED_ISTORAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32**)* @get_data_from_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_from_storage(i32* %0, %struct.TYPE_13__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 4
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = load i32**, i32*** %7, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @GMEM_DDESHARE, align 4
  %16 = load i32, i32* @GMEM_MOVEABLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32* @GlobalAlloc(i32 %17, i32 0)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %22, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @CreateILockBytesOnHGlobal(i32* %24, i32 %25, i32** %13)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @SUCCEEDED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* @STGM_CREATE, align 4
  %33 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @STGM_READWRITE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @StgCreateDocfileOnILockBytes(i32* %31, i32 %36, i32 0, i32** %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @ILockBytes_Release(i32* %38)
  br label %40

40:                                               ; preds = %30, %23
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @GlobalFree(i32* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %98

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = bitcast %struct.TYPE_13__* %11 to i8*
  %51 = bitcast %struct.TYPE_13__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load i32, i32* @TYMED_ISTORAGE, align 4
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @IDataObject_GetDataHere(i32* %59, %struct.TYPE_13__* %11, %struct.TYPE_12__* %12)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %48
  %65 = call i32 @memset(%struct.TYPE_12__* %12, i32 0, i32 24)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @IDataObject_GetData(i32* %66, %struct.TYPE_13__* %11, %struct.TYPE_12__* %12)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %87

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @IStorage_CopyTo(i32* %75, i32 0, i32* null, i32* null, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = call i32 @ReleaseStgMedium(%struct.TYPE_12__* %12)
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32*, i32** %8, align 8
  %86 = load i32**, i32*** %7, align 8
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %82, %71
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @IStorage_Release(i32* %88)
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @FAILED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @GlobalFree(i32* %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %44, %21
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32* @GlobalAlloc(i32, i32) #1

declare dso_local i32 @CreateILockBytesOnHGlobal(i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @StgCreateDocfileOnILockBytes(i32*, i32, i32, i32**) #1

declare dso_local i32 @ILockBytes_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @GlobalFree(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IDataObject_GetDataHere(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @IDataObject_GetData(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseStgMedium(%struct.TYPE_12__*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
