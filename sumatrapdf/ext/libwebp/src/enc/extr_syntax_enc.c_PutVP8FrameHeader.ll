; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_PutVP8FrameHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_PutVP8FrameHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (i32*, i32, %struct.TYPE_4__*)* }

@VP8_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@VP8_MAX_PARTITION0_SIZE = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_PARTITION0_OVERFLOW = common dso_local global i32 0, align 4
@VP8_SIGNATURE = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_BAD_WRITE = common dso_local global i32 0, align 4
@VP8_ENC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i64)* @PutVP8FrameHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PutVP8FrameHeader(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @VP8_FRAME_HEADER_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @VP8_MAX_PARTITION0_SIZE, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @VP8_ENC_ERROR_PARTITION0_OVERFLOW, align 4
  store i32 %20, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 1
  %24 = or i32 0, %23
  %25 = or i32 %24, 16
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 5
  %29 = or i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 0
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @VP8_SIGNATURE, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @VP8_SIGNATURE, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds i32, i32* %15, i64 4
  store i32 %48, i32* %49, align 16
  %50 = load i32, i32* @VP8_SIGNATURE, align 4
  %51 = ashr i32 %50, 0
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds i32, i32* %15, i64 6
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 8
  %63 = getelementptr inbounds i32, i32* %15, i64 7
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds i32, i32* %15, i64 8
  store i32 %67, i32* %68, align 16
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 8
  %73 = getelementptr inbounds i32, i32* %15, i64 9
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32 (i32*, i32, %struct.TYPE_4__*)*, i32 (i32*, i32, %struct.TYPE_4__*)** %75, align 8
  %77 = mul nuw i64 4, %13
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = call i32 %76(i32* %15, i32 %78, %struct.TYPE_4__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %21
  %83 = load i32, i32* @VP8_ENC_ERROR_BAD_WRITE, align 4
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

84:                                               ; preds = %21
  %85 = load i32, i32* @VP8_ENC_OK, align 4
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %82, %19
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
