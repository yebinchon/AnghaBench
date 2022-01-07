; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_msi_commit_streams.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_msi_commit_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"got %u streams\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to write stream %s (hr = %08x)\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to commit stream %s (hr = %08x)\0A\00", align 1
@STG_E_FILEALREADYEXISTS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to create stream %s (hr = %08x)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_commit_streams(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %11)
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %105, %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %108

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @msi_string_lookup(i32 %22, i32 %29, i32* null)
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @encode_streamname(i32 %31, i32* %32)
  store i32* %33, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %36, i64* %2, align 8
  br label %110

37:                                               ; preds = %19
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @STGM_WRITE, align 4
  %43 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @IStorage_CreateStream(i32 %40, i32* %41, i32 %44, i32 0, i32 0, i32** %7)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @SUCCEEDED(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %37
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @write_stream(i32* %50, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @FAILED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %49
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @debugstr_w(i32* %63)
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @msi_free(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @IStream_Release(i32* %69)
  %71 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %71, i64* %2, align 8
  br label %110

72:                                               ; preds = %49
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @IStream_Commit(i32* %73, i32 0)
  store i64 %74, i64* %8, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @IStream_Release(i32* %75)
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @FAILED(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @debugstr_w(i32* %81)
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %82, i64 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @msi_free(i32* %85)
  %87 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %87, i64* %2, align 8
  br label %110

88:                                               ; preds = %72
  br label %102

89:                                               ; preds = %37
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @STG_E_FILEALREADYEXISTS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @debugstr_w(i32* %94)
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %95, i64 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @msi_free(i32* %98)
  %100 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %100, i64* %2, align 8
  br label %110

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @msi_free(i32* %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %13

108:                                              ; preds = %13
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %109, i64* %2, align 8
  br label %110

110:                                              ; preds = %108, %93, %80, %62, %35
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32* @msi_string_lookup(i32, i32, i32*) #1

declare dso_local i32* @encode_streamname(i32, i32*) #1

declare dso_local i64 @IStorage_CreateStream(i32, i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @write_stream(i32*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStream_Commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
