; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_WriteImage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_WriteImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, i32, %struct.TYPE_6__*)* }

@VP8_ENC_OK = common dso_local global i64 0, align 8
@VP8L_SIGNATURE_SIZE = common dso_local global i64 0, align 8
@TAG_SIZE = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_BAD_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*, i64*)* @WriteImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WriteImage(%struct.TYPE_6__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [1 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64, i64* @VP8_ENC_OK, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @VP8LBitWriterFinish(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @VP8LBitWriterNumBytes(i32* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @VP8L_SIGNATURE_SIZE, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = and i64 %23, 1
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* @TAG_SIZE, align 8
  %26 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %13, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @WriteRiffHeader(%struct.TYPE_6__* %32, i64 %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @VP8_ENC_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %73

40:                                               ; preds = %3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (i32*, i32, %struct.TYPE_6__*)*, i32 (i32*, i32, %struct.TYPE_6__*)** %42, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = call i32 %43(i32* %44, i32 %46, %struct.TYPE_6__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = load i64, i64* @VP8_ENC_ERROR_BAD_WRITE, align 8
  store i64 %51, i64* %8, align 8
  br label %73

52:                                               ; preds = %40
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = bitcast [1 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (i32*, i32, %struct.TYPE_6__*)*, i32 (i32*, i32, %struct.TYPE_6__*)** %58, align 8
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = call i32 %59(i32* %60, i32 1, %struct.TYPE_6__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* @VP8_ENC_ERROR_BAD_WRITE, align 8
  store i64 %65, i64* %8, align 8
  br label %73

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %68, %69
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* @VP8_ENC_OK, align 8
  store i64 %72, i64* %4, align 8
  br label %75

73:                                               ; preds = %64, %50, %39
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32* @VP8LBitWriterFinish(i32*) #1

declare dso_local i64 @VP8LBitWriterNumBytes(i32*) #1

declare dso_local i64 @WriteRiffHeader(%struct.TYPE_6__*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
