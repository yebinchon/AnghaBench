; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_msi_get_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_msi_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_get_stream(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_5__* @find_stream(i32* %13, i32* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @STREAM_SEEK_SET, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @IStream_Seek(i32* %21, i64 %24, i32 %22, i32* null)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %30, i64* %4, align 8
  br label %78

31:                                               ; preds = %17
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32**, i32*** %7, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @IStream_AddRef(i32* %37)
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %39, i64* %4, align 8
  br label %78

40:                                               ; preds = %3
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @encode_streamname(i32 %41, i32* %42)
  store i32* %43, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %46, i64* %4, align 8
  br label %78

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = call i32 @open_stream(i32* %48, i32* %49, i32** %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @msi_free(i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %58, i64* %4, align 8
  br label %78

59:                                               ; preds = %47
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32**, i32*** %7, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @append_stream(i32* %60, i32* %61, i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @IStream_Release(i32* %70)
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %4, align 8
  br label %78

73:                                               ; preds = %59
  %74 = load i32**, i32*** %7, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @IStream_AddRef(i32* %75)
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %73, %68, %57, %45, %31, %29
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local %struct.TYPE_5__* @find_stream(i32*, i32*) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStream_AddRef(i32*) #1

declare dso_local i32* @encode_streamname(i32, i32*) #1

declare dso_local i32 @open_stream(i32*, i32*, i32**) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i64 @append_stream(i32*, i32*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
