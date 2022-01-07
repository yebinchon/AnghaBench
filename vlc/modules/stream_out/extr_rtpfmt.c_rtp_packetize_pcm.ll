; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_pcm.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @rtp_packetize_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_pcm(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @rtp_mtu(i32* %10)
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %47, %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul i32 %21, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = udiv i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add i32 12, %35
  %37 = call %struct.TYPE_8__* @block_Alloc(i32 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %9, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = icmp eq %struct.TYPE_8__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %18
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = call i32 @block_Release(%struct.TYPE_8__* %44)
  %46 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %46, i32* %3, align 4
  br label %97

47:                                               ; preds = %18
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rtp_packetize_common(i32* %48, %struct.TYPE_8__* %49, i32 %50, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, 12
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = call i32 @rtp_packetize_send(i32* %64, %struct.TYPE_8__* %65)
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %12

93:                                               ; preds = %12
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = call i32 @rtp_packetize_simple(i32* %94, %struct.TYPE_8__* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %43
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local %struct.TYPE_8__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_8__*) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @rtp_packetize_simple(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
