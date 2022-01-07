; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h265_nal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h265_nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i64, i32, i64)* @rtp_packetize_h265_nal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_h265_nal(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @rtp_mtu(i32* %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %29, i32* %8, align 4
  br label %174

30:                                               ; preds = %7
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i64, i64* %11, align 8
  %36 = add i64 12, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_5__* @block_Alloc(i32 %37)
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %17, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @rtp_packetize_common(i32* %45, %struct.TYPE_5__* %46, i32 %47, i64 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @memcpy(i32* %53, i32* %54, i64 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %59 = call i32 @rtp_packetize_send(i32* %57, %struct.TYPE_5__* %58)
  br label %172

60:                                               ; preds = %30
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @GetWBE(i32* %61)
  %63 = and i32 %62, 33279
  %64 = or i32 %63, 25088
  store i32 %64, i32* %18, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 126
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %19, align 4
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 %70, 2
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %71, %72
  %74 = sub i64 %73, 3
  %75 = sub i64 %74, 2
  %76 = load i64, i64* %16, align 8
  %77 = sub i64 %76, 3
  %78 = udiv i64 %75, %77
  store i64 %78, i64* %20, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 %81, 2
  store i64 %82, i64* %11, align 8
  store i64 0, i64* %21, align 8
  br label %83

83:                                               ; preds = %168, %60
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %20, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %171

87:                                               ; preds = %83
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %16, align 8
  %90 = sub i64 %89, 3
  %91 = call i64 @__MIN(i64 %88, i64 %90)
  store i64 %91, i64* %22, align 8
  %92 = load i64, i64* %22, align 8
  %93 = add i64 15, %92
  %94 = trunc i64 %93 to i32
  %95 = call %struct.TYPE_5__* @block_Alloc(i32 %94)
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %23, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %15, align 8
  %99 = mul i64 %97, %98
  %100 = load i64, i64* %20, align 8
  %101 = udiv i64 %99, %100
  %102 = add i64 %96, %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %20, align 8
  %107 = udiv i64 %105, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %87
  %115 = load i64, i64* %22, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp eq i64 %115, %116
  br label %118

118:                                              ; preds = %114, %87
  %119 = phi i1 [ false, %87 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @rtp_packetize_common(i32* %110, %struct.TYPE_5__* %111, i32 %120, i64 %121)
  %123 = load i32, i32* %18, align 4
  %124 = ashr i32 %123, 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 12
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %18, align 4
  %130 = and i32 %129, 255
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 13
  store i32 %130, i32* %134, align 4
  %135 = load i64, i64* %21, align 8
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 128, i32 0
  %139 = load i64, i64* %21, align 8
  %140 = load i64, i64* %20, align 8
  %141 = sub i64 %140, 1
  %142 = icmp eq i64 %139, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 64, i32 0
  %145 = or i32 %138, %144
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 14
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 15
  %156 = load i32*, i32** %10, align 8
  %157 = load i64, i64* %22, align 8
  %158 = call i32 @memcpy(i32* %155, i32* %156, i64 %157)
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %161 = call i32 @rtp_packetize_send(i32* %159, %struct.TYPE_5__* %160)
  %162 = load i64, i64* %22, align 8
  %163 = load i64, i64* %11, align 8
  %164 = sub i64 %163, %162
  store i64 %164, i64* %11, align 8
  %165 = load i64, i64* %22, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 %165
  store i32* %167, i32** %10, align 8
  br label %168

168:                                              ; preds = %118
  %169 = load i64, i64* %21, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %21, align 8
  br label %83

171:                                              ; preds = %83
  br label %172

172:                                              ; preds = %171, %34
  %173 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %172, %28
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i64 @rtp_mtu(i32*) #1

declare dso_local %struct.TYPE_5__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i64 @__MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
