; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_vp8.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_vp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i64, i32 }

@RTP_VP8_HEADER_SIZE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@RTP_VP8_PAYLOAD_START = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_vp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_vp8(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @rtp_mtu(i32* %13)
  %15 = load i32, i32* @RTP_VP8_HEADER_SIZE, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @block_Release(%struct.TYPE_7__* %34)
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %3, align 4
  br label %140

37:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %133, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %136

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @__MIN(i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @RTP_VP8_PAYLOAD_START, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = call %struct.TYPE_7__* @block_Alloc(i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %12, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = call i32 @block_Release(%struct.TYPE_7__* %53)
  %55 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %55, i32* %3, align 4
  br label %140

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  store i32 16, i32* %63, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VLC_TICK_INVALID, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  br label %90

86:                                               ; preds = %69
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i64 [ %85, %82 ], [ %89, %86 ]
  %92 = call i32 @rtp_packetize_common(i32* %70, %struct.TYPE_7__* %71, i32 %76, i64 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @RTP_VP8_PAYLOAD_START, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %105, %108
  %110 = load i32, i32* %7, align 4
  %111 = sdiv i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %104, %112
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sdiv i32 %118, %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %125 = call i32 @rtp_packetize_send(i32* %123, %struct.TYPE_7__* %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %8, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %90
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %38

136:                                              ; preds = %38
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = call i32 @block_Release(%struct.TYPE_7__* %137)
  %139 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %52, %33
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
