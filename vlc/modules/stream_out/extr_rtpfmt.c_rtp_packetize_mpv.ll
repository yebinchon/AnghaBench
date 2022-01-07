; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_mpv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_mpv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i64, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @rtp_packetize_mpv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_mpv(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @rtp_mtu(i32* %25)
  %27 = sub nsw i32 %26, 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hxxx_iterator_init(i32* %18, i32* %44, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %128, %2
  %50 = call i64 @hxxx_annexb_iterate_next(i32* %18, i32** %19, i64* %20)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %49
  %53 = load i32*, i32** %19, align 8
  store i32* %53, i32** %21, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 179
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %128

58:                                               ; preds = %52
  %59 = load i32*, i32** %21, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %58
  %63 = load i64, i64* %20, align 8
  %64 = icmp uge i64 %63, 5
  br i1 %64, label %65, label %121

65:                                               ; preds = %62
  %66 = load i32*, i32** %21, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 2
  %70 = load i32*, i32** %21, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 6
  %74 = and i32 %73, 3
  %75 = or i32 %69, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %21, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 3
  %80 = and i32 %79, 7
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %86, label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %120

86:                                               ; preds = %83, %65
  %87 = load i32*, i32** %21, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 2
  %91 = and i32 %90, 1
  store i32 %91, i32* %15, align 4
  %92 = load i32*, i32** %21, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 3
  %96 = shl i32 %95, 1
  %97 = load i32*, i32** %21, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 7
  %101 = and i32 %100, 1
  %102 = or i32 %96, %101
  store i32 %102, i32* %16, align 4
  %103 = load i64, i64* %20, align 8
  %104 = icmp ugt i64 %103, 5
  br i1 %104, label %105, label %119

105:                                              ; preds = %86
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32*, i32** %21, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 6
  %113 = and i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = load i32*, i32** %21, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 3
  %118 = and i32 %117, 7
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %108, %105, %86
  br label %120

120:                                              ; preds = %119, %83
  br label %127

121:                                              ; preds = %62, %58
  %122 = load i32*, i32** %21, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 175
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 1, i32* %17, align 4
  br label %126

126:                                              ; preds = %125, %121
  br label %127

127:                                              ; preds = %126, %120
  br label %128

128:                                              ; preds = %127, %57
  br label %49

129:                                              ; preds = %49
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %238, %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %241

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @__MIN(i32 %135, i32 %136)
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = add nsw i32 16, %138
  %140 = call %struct.TYPE_7__* @block_Alloc(i32 %139)
  store %struct.TYPE_7__* %140, %struct.TYPE_7__** %23, align 8
  %141 = load i32, i32* %11, align 4
  %142 = shl i32 %141, 16
  %143 = load i32, i32* %10, align 4
  %144 = shl i32 %143, 13
  %145 = or i32 %142, %144
  %146 = load i32, i32* %17, align 4
  %147 = shl i32 %146, 12
  %148 = or i32 %145, %147
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 1
  %152 = icmp eq i32 %149, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 2048, i32 0
  %155 = or i32 %148, %154
  %156 = load i32, i32* %12, align 4
  %157 = shl i32 %156, 8
  %158 = or i32 %155, %157
  %159 = load i32, i32* %13, align 4
  %160 = shl i32 %159, 7
  %161 = or i32 %158, %160
  %162 = load i32, i32* %14, align 4
  %163 = shl i32 %162, 4
  %164 = or i32 %161, %163
  %165 = load i32, i32* %15, align 4
  %166 = shl i32 %165, 3
  %167 = or i32 %164, %166
  %168 = load i32, i32* %16, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %24, align 4
  %170 = load i32*, i32** %3, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp eq i32 %172, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @VLC_TICK_INVALID, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %134
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  br label %191

187:                                              ; preds = %134
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  br label %191

191:                                              ; preds = %187, %183
  %192 = phi i64 [ %186, %183 ], [ %190, %187 ]
  %193 = call i32 @rtp_packetize_common(i32* %170, %struct.TYPE_7__* %171, i32 %177, i64 %192)
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 12
  %198 = load i32, i32* %24, align 4
  %199 = call i32 @SetDWBE(i32* %197, i32 %198)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 16
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %22, align 4
  %206 = call i32 @memcpy(i32* %203, i32* %204, i32 %205)
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 %210, %213
  %215 = load i32, i32* %6, align 4
  %216 = sdiv i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %209, %217
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  store i64 %218, i64* %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sdiv i32 %223, %224
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  %228 = load i32*, i32** %3, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %230 = call i32 @rtp_packetize_send(i32* %228, %struct.TYPE_7__* %229)
  %231 = load i32, i32* %22, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %7, align 8
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* %8, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %191
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %130

241:                                              ; preds = %130
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %243 = call i32 @block_Release(%struct.TYPE_7__* %242)
  %244 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %244
}

declare dso_local i32 @rtp_mtu(i32*) #1

declare dso_local i32 @hxxx_iterator_init(i32*, i32*, i32, i32) #1

declare dso_local i64 @hxxx_annexb_iterate_next(i32*, i32**, i64*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @SetDWBE(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
