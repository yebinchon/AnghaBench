; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h263.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h263.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, i64* }

@RTP_H263_HEADER_SIZE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@RTP_H263_PAYLOAD_START = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_h263 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_h263(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @rtp_mtu(i32* %24)
  %26 = load i32, i32* @RTP_H263_HEADER_SIZE, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = call i32 @block_Release(%struct.TYPE_7__* %31)
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %3, align 4
  br label %162

34:                                               ; preds = %2
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = call i32 @block_Release(%struct.TYPE_7__* %45)
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %3, align 4
  br label %162

48:                                               ; preds = %39
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  store i64* %50, i64** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %9, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %155, %48
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %158

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @__MIN(i32 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* @RTP_H263_PAYLOAD_START, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  %70 = call %struct.TYPE_7__* @block_Alloc(i32 %69)
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %17, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 %75, 10
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 9
  %79 = or i32 %76, %78
  %80 = load i32, i32* %13, align 4
  %81 = shl i32 %80, 3
  %82 = or i32 %79, %81
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VLC_TICK_INVALID, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %63
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  br label %106

102:                                              ; preds = %63
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i64 [ %101, %98 ], [ %105, %102 ]
  %108 = call i32 @rtp_packetize_common(i32* %85, %struct.TYPE_7__* %86, i32 %92, i64 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 12
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @SetWBE(i64* %112, i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* @RTP_H263_PAYLOAD_START, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64*, i64** %6, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @memcpy(i64* %120, i64* %121, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %126, %134
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sdiv i32 %140, %141
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %147 = call i32 @rtp_packetize_send(i32* %145, %struct.TYPE_7__* %146)
  %148 = load i32, i32* %16, align 4
  %149 = load i64*, i64** %6, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64* %151, i64** %6, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %106
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %59

158:                                              ; preds = %59
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = call i32 @block_Release(%struct.TYPE_7__* %159)
  %161 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %44, %30
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @SetWBE(i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
