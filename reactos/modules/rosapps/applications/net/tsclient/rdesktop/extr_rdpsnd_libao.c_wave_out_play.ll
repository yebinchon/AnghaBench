; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_libao.c_wave_out_play.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_libao.c_wave_out_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.audio_packet = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.timeval = type { i64, i64 }

@WAVEOUTBUF = common dso_local global i32 0, align 4
@wave_out_play.prev_s = internal global i64 0, align 8
@wave_out_play.prev_us = internal global i64 0, align 8
@g_reopened = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8
@queue_lo = common dso_local global i64 0, align 8
@queue_hi = common dso_local global i64 0, align 8
@This = common dso_local global %struct.TYPE_4__* null, align 8
@packet_queue = common dso_local global %struct.audio_packet* null, align 8
@MAX_QUEUE = common dso_local global i64 0, align 8
@g_samplerate = common dso_local global i32 0, align 4
@g_samplewidth = common dso_local global i32 0, align 4
@o_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"duration: %d, calc: %d, \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"last: %d, is: %d, should: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wave_out_play() #0 {
  %1 = alloca %struct.audio_packet*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @WAVEOUTBUF, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i64, i64* @g_reopened, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %0
  %19 = load i64, i64* @False, align 8
  store i64 %19, i64* @g_reopened, align 8
  %20 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* @wave_out_play.prev_s, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* @wave_out_play.prev_us, align 8
  br label %25

25:                                               ; preds = %18, %0
  %26 = load i64, i64* @queue_lo, align 8
  %27 = load i64, i64* @queue_hi, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @This, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  store i32 1, i32* %11, align 4
  br label %275

32:                                               ; preds = %25
  %33 = load %struct.audio_packet*, %struct.audio_packet** @packet_queue, align 8
  %34 = load i64, i64* @queue_lo, align 8
  %35 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %33, i64 %34
  store %struct.audio_packet* %35, %struct.audio_packet** %1, align 8
  %36 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %37 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %36, i32 0, i32 2
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %2, align 8
  %38 = load i64, i64* @queue_lo, align 8
  %39 = add i64 %38, 1
  %40 = load i64, i64* @MAX_QUEUE, align 8
  %41 = urem i64 %39, %40
  %42 = load i64, i64* @queue_hi, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.audio_packet*, %struct.audio_packet** @packet_queue, align 8
  %46 = load i64, i64* @queue_lo, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* @MAX_QUEUE, align 8
  %49 = urem i64 %47, %48
  %50 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %45, i64 %49
  %51 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  br label %59

53:                                               ; preds = %32
  %54 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %55 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 65535
  %58 = srem i32 %57, 65536
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %44
  store i32 0, i32* %6, align 4
  %60 = load i32, i32* @g_samplerate, align 4
  %61 = icmp eq i32 %60, 22050
  br i1 %61, label %62, label %136

62:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %132, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @WAVEOUTBUF, align 4
  %66 = sdiv i32 %65, 4
  %67 = load i32, i32* @g_samplewidth, align 4
  %68 = sub nsw i32 3, %67
  %69 = mul nsw i32 %66, %68
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br label %79

79:                                               ; preds = %71, %63
  %80 = phi i1 [ false, %63 ], [ %78, %71 ]
  br i1 %80, label %81, label %135

81:                                               ; preds = %79
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @This, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %87, 2
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 1
  %91 = sub nsw i32 %88, %90
  %92 = load i32, i32* @g_samplewidth, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %5, align 4
  br label %99

94:                                               ; preds = %81
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 2
  %97 = load i32, i32* @g_samplewidth, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %86
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %15, i64 %101
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @g_samplewidth, align 4
  %107 = call i32 @memcpy(i8* %102, i64 %105, i32 %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @This, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @g_samplewidth, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %15, i64 %115
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @g_samplewidth, align 4
  %121 = call i32 @memcpy(i8* %116, i64 %119, i32 %120)
  %122 = load i32, i32* @g_samplewidth, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i32, i32* @g_samplewidth, align 4
  %129 = mul nsw i32 2, %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %99
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %63

135:                                              ; preds = %79
  br label %172

136:                                              ; preds = %59
  %137 = load i32, i32* @WAVEOUTBUF, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = icmp sgt i64 %138, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %136
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  br label %158

155:                                              ; preds = %136
  %156 = load i32, i32* @WAVEOUTBUF, align 4
  %157 = sext i32 %156 to i64
  br label %158

158:                                              ; preds = %155, %147
  %159 = phi i64 [ %154, %147 ], [ %157, %155 ]
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %6, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @memcpy(i8* %15, i64 %163, i32 %164)
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, %167
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %158, %135
  %173 = load i32, i32* @o_device, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @ao_play(i32 %173, i8* %15, i32 %174)
  %176 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %177 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @wave_out_play.prev_s, align 8
  %180 = sub nsw i64 %178, %179
  %181 = mul nsw i64 %180, 1000000
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @wave_out_play.prev_us, align 8
  %185 = sub nsw i64 %183, %184
  %186 = add nsw i64 %181, %185
  %187 = sdiv i64 %186, 1000
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %8, align 4
  %189 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %190 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %172
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 65536
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %194, %172
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %200, %203
  br i1 %204, label %214, label %205

205:                                              ; preds = %197
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %209 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %207, %210
  %212 = add nsw i32 %211, 500
  %213 = icmp ugt i32 %206, %212
  br i1 %213, label %214, label %272

214:                                              ; preds = %205, %197
  %215 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* @wave_out_play.prev_s, align 8
  %217 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* @wave_out_play.prev_us, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %221 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %219, %222
  %224 = load i32, i32* %8, align 4
  %225 = sub i32 %223, %224
  %226 = call i32 @abs(i32 %225) #4
  %227 = icmp sgt i32 %226, 20
  br i1 %227, label %228, label %252

228:                                              ; preds = %214
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %232 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %230, %233
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = call i32 @DEBUG(i8* %236)
  %238 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %239 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %242 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = add i32 %243, %244
  %246 = urem i32 %245, 65536
  %247 = load i32, i32* %10, align 4
  %248 = srem i32 %247, 65536
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 @DEBUG(i8* %250)
  br label %252

252:                                              ; preds = %228, %214
  %253 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %254 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = add i32 %255, %256
  %258 = urem i32 %257, 65536
  %259 = sub i32 %258, 50
  %260 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8
  %261 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @rdpsnd_send_completion(i32 %259, i32 %262)
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @free(i32 %266)
  %268 = load i64, i64* @queue_lo, align 8
  %269 = add i64 %268, 1
  %270 = load i64, i64* @MAX_QUEUE, align 8
  %271 = urem i64 %269, %270
  store i64 %271, i64* @queue_lo, align 8
  br label %272

272:                                              ; preds = %252, %205
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** @This, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  store i32 1, i32* %274, align 4
  store i32 1, i32* %11, align 4
  br label %275

275:                                              ; preds = %272, %29
  %276 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %276)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @memcpy(i8*, i64, i32) #2

declare dso_local i32 @ao_play(i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @DEBUG(i8*) #2

declare dso_local i32 @rdpsnd_send_completion(i32, i32) #2

declare dso_local i32 @free(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
