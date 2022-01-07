; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_PutWebPHeaders.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_PutWebPHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32* }

@VP8_ENC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i64)* @PutWebPHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PutWebPHeaders(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = load i64, i64* @VP8_ENC_OK, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @PutRIFFHeader(%struct.TYPE_7__* %16, i64 %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @VP8_ENC_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %68

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = call i64 @IsVP8XNeeded(%struct.TYPE_7__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = call i64 @PutVP8XHeader(%struct.TYPE_7__* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @VP8_ENC_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %68

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = call i64 @PutAlphaChunk(%struct.TYPE_7__* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @VP8_ENC_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %68

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @PutVP8Header(i32* %49, i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @VP8_ENC_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %68

56:                                               ; preds = %48
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @PutVP8FrameHeader(i32* %57, i32 %60, i64 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @VP8_ENC_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %72

68:                                               ; preds = %66, %55, %46, %33, %22
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @WebPEncodingSetError(i32* %69, i64 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @PutRIFFHeader(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @IsVP8XNeeded(%struct.TYPE_7__*) #1

declare dso_local i64 @PutVP8XHeader(%struct.TYPE_7__*) #1

declare dso_local i64 @PutAlphaChunk(%struct.TYPE_7__*) #1

declare dso_local i64 @PutVP8Header(i32*, i64) #1

declare dso_local i64 @PutVP8FrameHeader(i32*, i32, i64) #1

declare dso_local i32 @WebPEncodingSetError(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
