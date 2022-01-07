; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_mpa.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_mpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32*, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_mpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_mpa(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @rtp_mtu(i32* %12)
  %14 = sub nsw i32 %13, 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %103, %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %106

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @__MIN(i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 16, %37
  %39 = call %struct.TYPE_7__* @block_Alloc(i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %11, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rtp_packetize_common(i32* %40, %struct.TYPE_7__* %41, i32 %47, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  %56 = call i32 @SetWBE(i32* %55, i32 0)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 14
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %61, %62
  %64 = call i32 @SetWBE(i32* %60, i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 16
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @memcpy(i32* %68, i32* %69, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %6, align 4
  %81 = sdiv i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %74, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sdiv i32 %88, %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = call i32 @rtp_packetize_send(i32* %93, %struct.TYPE_7__* %94)
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %33
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %29

106:                                              ; preds = %29
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = call i32 @block_Release(%struct.TYPE_7__* %107)
  %109 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %109
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
