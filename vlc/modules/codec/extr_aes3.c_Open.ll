; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_aes3.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_aes3.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@VLC_CODEC_302M = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@Packetize = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i64 0, align 8
@Decode = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VLC_CODEC_302M, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = call %struct.TYPE_12__* @malloc(i32 4)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %15
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = call i32 @date_Init(i32* %29, i32 48000, i32 1)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 48000, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load i64, i64* @VLC_CODEC_302M, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* @Packetize, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %57

45:                                               ; preds = %27
  %46 = load i64, i64* @VLC_CODEC_S16N, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 16, i32* %53, align 4
  %54 = load i32, i32* @Decode, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %37
  %58 = load i32, i32* @Flush, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %25, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
