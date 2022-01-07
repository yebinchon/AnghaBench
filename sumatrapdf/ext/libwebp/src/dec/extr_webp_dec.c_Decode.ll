; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_Decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }

@VP8_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i64, i32*, i32*, %struct.TYPE_16__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Decode(i32 %0, i32* %1, i64 %2, i32* %3, i32* %4, %struct.TYPE_16__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %13, align 8
  %16 = call i32 @WebPInitDecBuffer(%struct.TYPE_16__* %15)
  %17 = call i32 @WebPResetDecParams(%struct.TYPE_15__* %14)
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %25 = call i32 @WebPGetInfo(i32* %21, i64 %22, i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %71

28:                                               ; preds = %6
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @DecodeInto(i32* %43, i64 %44, %struct.TYPE_15__* %14)
  %46 = load i64, i64* @VP8_STATUS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32* null, i32** %7, align 8
  br label %71

49:                                               ; preds = %42
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %51 = icmp ne %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %54 = call i32 @WebPCopyDecBuffer(%struct.TYPE_16__* %15, %struct.TYPE_16__* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @WebPIsRGBMode(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  br label %69

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i32* [ %63, %59 ], [ %68, %64 ]
  store i32* %70, i32** %7, align 8
  br label %71

71:                                               ; preds = %69, %48, %27
  %72 = load i32*, i32** %7, align 8
  ret i32* %72
}

declare dso_local i32 @WebPInitDecBuffer(%struct.TYPE_16__*) #1

declare dso_local i32 @WebPResetDecParams(%struct.TYPE_15__*) #1

declare dso_local i32 @WebPGetInfo(i32*, i64, i32*, i32*) #1

declare dso_local i64 @DecodeInto(i32*, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @WebPCopyDecBuffer(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @WebPIsRGBMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
