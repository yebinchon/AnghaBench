; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, i32, i64, float, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AUDIO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @DecoderThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DecoderThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca float, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.decoder_owner*
  store %struct.decoder_owner* %15, %struct.decoder_owner** %3, align 8
  store float 1.000000e+00, float* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %17 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vlc_fifo_Lock(i32 %18)
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vlc_fifo_CleanupPush(i32 %22)
  br label %24

24:                                               ; preds = %236, %171, %139, %59, %29, %1
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = call i32 (...) @vlc_savecancel()
  store i32 %30, i32* %7, align 4
  %31 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %32 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vlc_fifo_Unlock(i32 %33)
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %36 = call i32 @DecoderThread_Flush(%struct.decoder_owner* %35)
  %37 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %38 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vlc_fifo_Lock(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @vlc_restorecancel(i32 %41)
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %47 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  store float 1.000000e+00, float* %4, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %5, align 8
  %51 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %52 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %56 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = call i32 (...) @vlc_savecancel()
  store i32 %60, i32* %8, align 4
  %61 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %62 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  %64 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %65 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  %67 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %68 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vlc_fifo_Unlock(i32 %69)
  %71 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @DecoderThread_ChangePause(%struct.decoder_owner* %71, i32 %72, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @vlc_restorecancel(i32 %75)
  %77 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %78 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @vlc_fifo_Lock(i32 %79)
  br label %24

81:                                               ; preds = %53
  %82 = load float, float* %4, align 4
  %83 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %84 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %83, i32 0, i32 4
  %85 = load float, float* %84, align 8
  %86 = fcmp une float %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = call i32 (...) @vlc_savecancel()
  store i32 %88, i32* %10, align 4
  %89 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %90 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %89, i32 0, i32 4
  %91 = load float, float* %90, align 8
  store float %91, float* %4, align 4
  %92 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %93 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @vlc_fifo_Unlock(i32 %94)
  %96 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %97 = load float, float* %4, align 4
  %98 = call i32 @DecoderThread_ChangeRate(%struct.decoder_owner* %96, float %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @vlc_restorecancel(i32 %99)
  %101 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %102 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vlc_fifo_Lock(i32 %103)
  br label %105

105:                                              ; preds = %87, %81
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %108 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = call i32 (...) @vlc_savecancel()
  store i32 %112, i32* %11, align 4
  %113 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %114 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %5, align 8
  %116 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %117 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @vlc_fifo_Unlock(i32 %118)
  %120 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @DecoderThread_ChangeDelay(%struct.decoder_owner* %120, i64 %121)
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @vlc_restorecancel(i32 %123)
  %125 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %126 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @vlc_fifo_Lock(i32 %127)
  br label %129

129:                                              ; preds = %111, %105
  %130 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %131 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %136 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %141 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %140, i32 0, i32 7
  store i32 1, i32* %141, align 8
  %142 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %143 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %142, i32 0, i32 11
  %144 = call i32 @vlc_cond_signal(i32* %143)
  %145 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %146 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @vlc_fifo_Wait(i32 %147)
  %149 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %150 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %149, i32 0, i32 7
  store i32 0, i32* %150, align 8
  br label %24

151:                                              ; preds = %134, %129
  %152 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %153 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %152, i32 0, i32 15
  %154 = call i32 @vlc_cond_signal(i32* %153)
  %155 = call i32 (...) @vlc_testcancel()
  %156 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %157 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = call i32* @vlc_fifo_DequeueUnlocked(i32 %158)
  store i32* %159, i32** %12, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %151
  %163 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %164 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i64 @likely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %162
  %172 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %173 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %172, i32 0, i32 7
  store i32 1, i32* %173, align 8
  %174 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %175 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %174, i32 0, i32 11
  %176 = call i32 @vlc_cond_signal(i32* %175)
  %177 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %178 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @vlc_fifo_Wait(i32 %179)
  %181 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %182 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %181, i32 0, i32 7
  store i32 0, i32* %182, align 8
  br label %24

183:                                              ; preds = %162
  br label %184

184:                                              ; preds = %183, %151
  %185 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %186 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @vlc_fifo_Unlock(i32 %187)
  %189 = call i32 (...) @vlc_savecancel()
  store i32 %189, i32* %13, align 4
  %190 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = call i32 @DecoderThread_ProcessInput(%struct.decoder_owner* %190, i32* %191)
  %193 = load i32*, i32** %12, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %195, label %214

195:                                              ; preds = %184
  %196 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %197 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %196, i32 0, i32 14
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @AUDIO_ES, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %195
  %204 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %205 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %204, i32 0, i32 13
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %210 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %209, i32 0, i32 13
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @aout_DecDrain(i32* %211)
  br label %213

213:                                              ; preds = %208, %203
  br label %214

214:                                              ; preds = %213, %195, %184
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @vlc_restorecancel(i32 %215)
  %217 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %218 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %217, i32 0, i32 10
  %219 = call i32 @vlc_mutex_lock(i32* %218)
  %220 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %221 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %220, i32 0, i32 12
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @vlc_fifo_Lock(i32 %222)
  %224 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %225 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %214
  %229 = load i32*, i32** %12, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %233 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %232, i32 0, i32 8
  store i32 0, i32* %233, align 4
  %234 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %235 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %234, i32 0, i32 9
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %231, %228, %214
  %237 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %238 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %237, i32 0, i32 11
  %239 = call i32 @vlc_cond_signal(i32* %238)
  %240 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %241 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %240, i32 0, i32 10
  %242 = call i32 @vlc_mutex_unlock(i32* %241)
  br label %24
}

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_CleanupPush(i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

declare dso_local i32 @DecoderThread_Flush(%struct.decoder_owner*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @DecoderThread_ChangePause(%struct.decoder_owner*, i32, i64) #1

declare dso_local i32 @DecoderThread_ChangeRate(%struct.decoder_owner*, float) #1

declare dso_local i32 @DecoderThread_ChangeDelay(%struct.decoder_owner*, i64) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_fifo_Wait(i32) #1

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i32* @vlc_fifo_DequeueUnlocked(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DecoderThread_ProcessInput(%struct.decoder_owner*, i32*) #1

declare dso_local i32 @aout_DecDrain(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
