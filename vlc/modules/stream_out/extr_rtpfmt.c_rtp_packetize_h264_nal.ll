; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h264_nal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h264_nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32, i32)* @rtp_packetize_h264_nal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_h264_nal(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @rtp_mtu(i32* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %29, i32* %8, align 4
  br label %165

30:                                               ; preds = %7
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = and i32 %34, 31
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %30
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 12, %40
  %42 = call %struct.TYPE_5__* @block_Alloc(i32 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %19, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @rtp_packetize_common(i32* %49, %struct.TYPE_5__* %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 12
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %63 = call i32 @rtp_packetize_send(i32* %61, %struct.TYPE_5__* %62)
  br label %163

64:                                               ; preds = %30
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 2
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %71, 2
  %73 = sdiv i32 %70, %72
  store i32 %73, i32* %20, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %11, align 4
  store i32 0, i32* %21, align 4
  br label %78

78:                                               ; preds = %159, %64
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %162

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %84, 2
  %86 = call i32 @__MIN(i32 %83, i32 %85)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = add nsw i32 14, %87
  %89 = call %struct.TYPE_5__* @block_Alloc(i32 %88)
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %23, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %20, align 4
  %95 = sdiv i32 %93, %94
  %96 = add nsw i32 %90, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %20, align 4
  %101 = sdiv i32 %99, %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %82
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %82
  %113 = phi i1 [ false, %82 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @rtp_packetize_common(i32* %104, %struct.TYPE_5__* %105, i32 %114, i32 %115)
  %117 = load i32, i32* %17, align 4
  %118 = and i32 %117, 96
  %119 = or i32 0, %118
  %120 = or i32 %119, 28
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 12
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %21, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 128, i32 0
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %20, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp eq i32 %129, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 64, i32 0
  %135 = or i32 %128, %134
  %136 = load i32, i32* %18, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 13
  store i32 %137, i32* %141, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 14
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @memcpy(i32* %145, i32* %146, i32 %147)
  %149 = load i32*, i32** %9, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %151 = call i32 @rtp_packetize_send(i32* %149, %struct.TYPE_5__* %150)
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %10, align 8
  br label %159

159:                                              ; preds = %112
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %21, align 4
  br label %78

162:                                              ; preds = %78
  br label %163

163:                                              ; preds = %162, %39
  %164 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %163, %28
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local %struct.TYPE_5__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @__MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
