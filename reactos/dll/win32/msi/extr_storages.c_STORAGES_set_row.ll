; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_STORAGES_set_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_STORAGES_set_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i32*, i64)* @STORAGES_set_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STORAGES_set_row(%struct.tagMSIVIEW* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %18 = bitcast %struct.tagMSIVIEW* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %14, align 8
  %19 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %19, i64* %16, align 8
  %20 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %20, i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %29, i64* %5, align 8
  br label %115

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @MSI_RecordGetIStream(i32* %31, i32 2, i32** %13)
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %16, align 8
  store i64 %37, i64* %5, align 8
  br label %115

38:                                               ; preds = %30
  %39 = load i32*, i32** %13, align 8
  %40 = call i64 @stream_to_storage(i32* %39, i32** %11)
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @IStream_Release(i32* %45)
  %47 = load i64, i64* %16, align 8
  store i64 %47, i64* %5, align 8
  br label %115

48:                                               ; preds = %38
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @MSI_RecordGetString(i32* %49, i32 1)
  %51 = call i32* @strdupW(i32 %50)
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %55, i64* %16, align 8
  br label %101

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* @STGM_WRITE, align 4
  %64 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @IStorage_CreateStorage(i32 %61, i32* %62, i32 %65, i32 0, i32 0, i32** %12)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %71, i64* %16, align 8
  br label %101

72:                                               ; preds = %56
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @IStorage_CopyTo(i32* %73, i32 0, i32* null, i32* null, i32* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %80, i64* %16, align 8
  br label %101

81:                                               ; preds = %72
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @create_storage(%struct.TYPE_5__* %82, i32* %83, i32* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %81
  %99 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %99, i64* %16, align 8
  br label %100

100:                                              ; preds = %98, %81
  br label %101

101:                                              ; preds = %100, %79, %70, %54
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @msi_free(i32* %102)
  %104 = load i32*, i32** %12, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @IStorage_Release(i32* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @IStorage_Release(i32* %110)
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @IStream_Release(i32* %112)
  %114 = load i64, i64* %16, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %109, %44, %36, %28
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i32*) #1

declare dso_local i64 @MSI_RecordGetIStream(i32*, i32, i32**) #1

declare dso_local i64 @stream_to_storage(i32*, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32* @strdupW(i32) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @IStorage_CreateStorage(i32, i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @create_storage(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
