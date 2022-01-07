; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_spx.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_spx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64, i64, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_spx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_spx(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @rtp_mtu(i32* %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call i32 @block_Release(%struct.TYPE_7__* %26)
  %28 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %128

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %30, 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = srem i32 %34, 4
  %36 = sub nsw i32 4, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 12, %41
  %43 = call %struct.TYPE_7__* @block_Alloc(i32 %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %40
  store i8 127, i8* %11, align 1
  store i8 -1, i8* %12, align 1
  %47 = load i8, i8* %11, align 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 12, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 %47, i8* %54, align 1
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %85 [
    i32 2, label %56
    i32 3, label %66
  ]

56:                                               ; preds = %46
  %57 = load i8, i8* %12, align 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 12, %61
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8 %57, i8* %65, align 1
  br label %85

66:                                               ; preds = %46
  %67 = load i8, i8* %12, align 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 12, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8 %67, i8* %75, align 1
  %76 = load i8, i8* %12, align 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 12, %80
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8 %76, i8* %84, align 1
  br label %85

85:                                               ; preds = %46, %66, %56
  br label %86

86:                                               ; preds = %85, %40
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VLC_TICK_INVALID, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  br label %102

98:                                               ; preds = %86
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i64 [ %97, %94 ], [ %101, %98 ]
  %104 = call i32 @rtp_packetize_common(i32* %87, %struct.TYPE_7__* %88, i32 0, i64 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 12
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @memcpy(i8* %108, i8* %109, i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = call i32 @block_Release(%struct.TYPE_7__* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %126 = call i32 @rtp_packetize_send(i32* %124, %struct.TYPE_7__* %125)
  %127 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %102, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
