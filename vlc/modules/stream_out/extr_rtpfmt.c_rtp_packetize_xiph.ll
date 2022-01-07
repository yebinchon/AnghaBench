; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_xiph.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_xiph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32*, i32 }

@XIPH_IDENT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_xiph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_xiph(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @rtp_mtu(i32* %15)
  %17 = sub nsw i32 %16, 6
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %124, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %127

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @__MIN(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 18, %40
  %42 = call %struct.TYPE_7__* @block_Alloc(i32 %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %11, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %59

46:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 3, i32* %12, align 4
  br label %57

56:                                               ; preds = %50
  store i32 2, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* @XIPH_IDENT, align 4
  %61 = and i32 %60, 16777215
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 %63, 6
  %65 = or i32 %62, %64
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rtp_packetize_common(i32* %68, %struct.TYPE_7__* %69, i32 0, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @SetDWBE(i32* %77, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 16
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @SetWBE(i32* %83, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 18
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @memcpy(i32* %89, i32* %90, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = load i32, i32* %6, align 4
  %102 = sdiv i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %95, %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sdiv i32 %109, %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = call i32 @rtp_packetize_send(i32* %114, %struct.TYPE_7__* %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %59
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %32

127:                                              ; preds = %32
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = call i32 @block_Release(%struct.TYPE_7__* %128)
  %130 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %130
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SetDWBE(i32*, i32) #1

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
