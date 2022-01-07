; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_OptimizeSingleFrame.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_OptimizeSingleFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__ }

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@WEBP_MUX_BAD_DATA = common dso_local global i64 0, align 8
@WEBP_CHUNK_ANMF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @OptimizeSingleFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OptimizeSingleFrame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = call i32* @WebPMuxCreate(%struct.TYPE_16__* %14, i32 0)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @WEBP_MUX_BAD_DATA, align 8
  store i64 %19, i64* %3, align 8
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %28 = call i32 @WebPDataInit(%struct.TYPE_16__* %27)
  %29 = call i32 @WebPDataInit(%struct.TYPE_16__* %10)
  %30 = call i32 @WebPDataInit(%struct.TYPE_16__* %11)
  %31 = load i32*, i32** %12, align 8
  %32 = call i64 @WebPMuxGetFrame(i32* %31, i32 1, %struct.TYPE_15__* %9)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @WEBP_MUX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %85

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WEBP_CHUNK_ANMF, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %85

43:                                               ; preds = %37
  %44 = load i32*, i32** %12, align 8
  %45 = call i64 @WebPMuxGetCanvasSize(i32* %44, i32* %7, i32* %8)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @WEBP_MUX_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %85

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = call i32 @FrameToFullCanvas(%struct.TYPE_17__* %51, %struct.TYPE_15__* %9, %struct.TYPE_16__* %10)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @WEBP_MUX_BAD_DATA, align 8
  store i64 %55, i64* %6, align 8
  br label %85

56:                                               ; preds = %50
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @WebPMuxSetImage(i32* %57, %struct.TYPE_16__* %10, i32 1)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @WEBP_MUX_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %85

63:                                               ; preds = %56
  %64 = load i32*, i32** %12, align 8
  %65 = call i64 @WebPMuxAssemble(i32* %64, %struct.TYPE_16__* %11)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @WEBP_MUX_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %85

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = call i32 @WebPDataClear(%struct.TYPE_16__* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = bitcast %struct.TYPE_16__* %80 to i8*
  %82 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = call i32 @WebPDataInit(%struct.TYPE_16__* %11)
  br label %84

84:                                               ; preds = %77, %70
  br label %85

85:                                               ; preds = %84, %69, %62, %54, %49, %42, %36
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %87 = call i32 @WebPDataClear(%struct.TYPE_16__* %86)
  %88 = call i32 @WebPDataClear(%struct.TYPE_16__* %10)
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @WebPMuxDelete(i32* %89)
  %91 = call i32 @WebPDataClear(%struct.TYPE_16__* %11)
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %85, %18
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local i32* @WebPMuxCreate(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPDataInit(%struct.TYPE_16__*) #1

declare dso_local i64 @WebPMuxGetFrame(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @WebPMuxGetCanvasSize(i32*, i32*, i32*) #1

declare dso_local i32 @FrameToFullCanvas(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i64 @WebPMuxSetImage(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @WebPMuxAssemble(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @WebPDataClear(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WebPMuxDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
