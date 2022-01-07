; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_t140.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_t140.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64, i64, i64, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_t140 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_t140(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @rtp_mtu(i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %92, %2
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %44, %28
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 192
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = call i32 @block_Release(%struct.TYPE_7__* %41)
  %43 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %99

44:                                               ; preds = %37
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %10, align 8
  br label %30

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i64, i64* %10, align 8
  %50 = add i64 12, %49
  %51 = trunc i64 %50 to i32
  %52 = call %struct.TYPE_7__* @block_Alloc(i32 %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = call i32 @block_Release(%struct.TYPE_7__* %56)
  %58 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  br label %99

59:                                               ; preds = %48
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @rtp_packetize_common(i32* %60, %struct.TYPE_7__* %61, i32 0, i64 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 12
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @memcpy(i32* %72, i32* %73, i64 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = call i32 @rtp_packetize_send(i32* %83, %struct.TYPE_7__* %84)
  %86 = load i64, i64* %10, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 %86
  store i32* %88, i32** %7, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %8, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %59
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %20

95:                                               ; preds = %20
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = call i32 @block_Release(%struct.TYPE_7__* %96)
  %98 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %55, %40
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @rtp_mtu(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
