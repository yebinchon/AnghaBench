; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_G711_StreamOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_G711_StreamOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@ACM_STREAMOPENF_ASYNC = common dso_local global i32 0, align 4
@ACMERR_NOTPOSSIBLE = common dso_local global i32 0, align 4
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@WAVE_FORMAT_ALAW = common dso_local global i64 0, align 8
@cvtXXalaw16K = common dso_local global i32 0, align 4
@cvtXX16alawK = common dso_local global i32 0, align 4
@WAVE_FORMAT_MULAW = common dso_local global i64 0, align 8
@cvtXXulaw16K = common dso_local global i32 0, align 4
@cvtXX16ulawK = common dso_local global i32 0, align 4
@cvtXXulawalawK = common dso_local global i32 0, align 4
@cvtXXalawulawK = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @G711_StreamOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @G711_StreamOpen(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ACM_STREAMOPENF_ASYNC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 @G711_GetFormatIndex(%struct.TYPE_11__* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = call i32 @G711_GetFormatIndex(%struct.TYPE_11__* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %26, i32* %2, align 4
  br label %404

27:                                               ; preds = %19
  %28 = call i32 (...) @GetProcessHeap()
  %29 = call %struct.TYPE_10__* @HeapAlloc(i32 %28, i32 0, i32 4)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %404

34:                                               ; preds = %27
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = ptrtoint %struct.TYPE_10__* %35 to i64
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %397

55:                                               ; preds = %46, %34
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WAVE_FORMAT_ALAW, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %115

63:                                               ; preds = %55
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %63
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %102, label %83

83:                                               ; preds = %71
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %88, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %83
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 16
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %83, %71
  br label %397

103:                                              ; preds = %95
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 16
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @cvtXXalaw16K, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %103
  br label %391

115:                                              ; preds = %63, %55
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %175

123:                                              ; preds = %115
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @WAVE_FORMAT_ALAW, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %175

131:                                              ; preds = %123
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %136, %141
  br i1 %142, label %162, label %143

143:                                              ; preds = %131
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %148, %153
  br i1 %154, label %162, label %155

155:                                              ; preds = %143
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 16
  br i1 %161, label %162, label %163

162:                                              ; preds = %155, %143, %131
  br label %397

163:                                              ; preds = %155
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 16
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i32, i32* @cvtXX16alawK, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %163
  br label %390

175:                                              ; preds = %123, %115
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @WAVE_FORMAT_MULAW, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %235

183:                                              ; preds = %175
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %235

191:                                              ; preds = %183
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %196, %201
  br i1 %202, label %222, label %203

203:                                              ; preds = %191
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %208, %213
  br i1 %214, label %222, label %215

215:                                              ; preds = %203
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 16
  br i1 %221, label %222, label %223

222:                                              ; preds = %215, %203, %191
  br label %397

223:                                              ; preds = %215
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 16
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = load i32, i32* @cvtXXulaw16K, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %230, %223
  br label %389

235:                                              ; preds = %183, %175
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %295

243:                                              ; preds = %235
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @WAVE_FORMAT_MULAW, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %295

251:                                              ; preds = %243
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %256, %261
  br i1 %262, label %282, label %263

263:                                              ; preds = %251
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %268, %273
  br i1 %274, label %282, label %275

275:                                              ; preds = %263
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 16
  br i1 %281, label %282, label %283

282:                                              ; preds = %275, %263, %251
  br label %397

283:                                              ; preds = %275
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 3
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 16
  br i1 %289, label %290, label %294

290:                                              ; preds = %283
  %291 = load i32, i32* @cvtXX16ulawK, align 4
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %290, %283
  br label %388

295:                                              ; preds = %243, %235
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 3
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @WAVE_FORMAT_MULAW, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %340

303:                                              ; preds = %295
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @WAVE_FORMAT_ALAW, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %340

311:                                              ; preds = %303
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %316, %321
  br i1 %322, label %335, label %323

323:                                              ; preds = %311
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 2
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %328, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %323, %311
  br label %397

336:                                              ; preds = %323
  %337 = load i32, i32* @cvtXXulawalawK, align 4
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 4
  br label %387

340:                                              ; preds = %303, %295
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 3
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @WAVE_FORMAT_ALAW, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %385

348:                                              ; preds = %340
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @WAVE_FORMAT_MULAW, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %385

356:                                              ; preds = %348
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 3
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %361, %366
  br i1 %367, label %380, label %368

368:                                              ; preds = %356
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 3
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %373, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %368, %356
  br label %397

381:                                              ; preds = %368
  %382 = load i32, i32* @cvtXXalawulawK, align 4
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 0
  store i32 %382, i32* %384, align 4
  br label %386

385:                                              ; preds = %348, %340
  br label %397

386:                                              ; preds = %381
  br label %387

387:                                              ; preds = %386, %336
  br label %388

388:                                              ; preds = %387, %294
  br label %389

389:                                              ; preds = %388, %234
  br label %390

390:                                              ; preds = %389, %174
  br label %391

391:                                              ; preds = %390, %114
  br label %392

392:                                              ; preds = %391
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %395 = call i32 @G711_Reset(%struct.TYPE_9__* %393, %struct.TYPE_10__* %394)
  %396 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %396, i32* %2, align 4
  br label %404

397:                                              ; preds = %385, %380, %335, %282, %222, %162, %102, %54
  %398 = call i32 (...) @GetProcessHeap()
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %400 = call i32 @HeapFree(i32 %398, i32 0, %struct.TYPE_10__* %399)
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 1
  store i64 0, i64* %402, align 8
  %403 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %403, i32* %2, align 4
  br label %404

404:                                              ; preds = %397, %392, %32, %25
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @G711_GetFormatIndex(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @G711_Reset(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
