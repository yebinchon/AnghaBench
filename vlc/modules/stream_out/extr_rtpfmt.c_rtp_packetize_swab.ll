; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_swab.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_swab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_swab(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @rtp_mtu(i32* %11)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %60, %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %106

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul i32 %34, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = udiv i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add i32 12, %48
  %50 = call %struct.TYPE_7__* @block_Alloc(i32 %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %10, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = icmp eq %struct.TYPE_7__* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %30
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = call i32 @block_Release(%struct.TYPE_7__* %57)
  %59 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %59, i32* %3, align 4
  br label %110

60:                                               ; preds = %30
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtp_packetize_common(i32* %61, %struct.TYPE_7__* %62, i32 %63, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 12
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @swab(i32 %70, i32 %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = call i32 @rtp_packetize_send(i32* %77, %struct.TYPE_7__* %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %13

106:                                              ; preds = %13
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = call i32 @block_Release(%struct.TYPE_7__* %107)
  %109 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %56
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @swab(i32, i32, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
