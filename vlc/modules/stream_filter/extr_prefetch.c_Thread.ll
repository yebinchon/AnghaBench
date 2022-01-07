; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_prefetch.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_prefetch.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i32, i32, i64, %struct.stream_ctrl*, i32 }
%struct.stream_ctrl = type { %struct.TYPE_8__, i32, %struct.stream_ctrl* }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"resuming\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pausing\00", align 1
@STREAM_SET_PAUSE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"end of stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_ctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @vlc_interrupt_set(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 10
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 10
  %26 = call i32 @mutex_cleanup_push(i32* %25)
  br label %27

27:                                               ; preds = %298, %285, %219, %196, %132, %126, %85, %63, %36, %1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 13
  %30 = load %struct.stream_ctrl*, %struct.stream_ctrl** %29, align 8
  store %struct.stream_ctrl* %30, %struct.stream_ctrl** %6, align 8
  %31 = load %struct.stream_ctrl*, %struct.stream_ctrl** %6, align 8
  %32 = icmp ne %struct.stream_ctrl* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %27
  %37 = load %struct.stream_ctrl*, %struct.stream_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %37, i32 0, i32 2
  %39 = load %struct.stream_ctrl*, %struct.stream_ctrl** %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 13
  store %struct.stream_ctrl* %39, %struct.stream_ctrl** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load %struct.stream_ctrl*, %struct.stream_ctrl** %6, align 8
  %44 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.stream_ctrl*, %struct.stream_ctrl** %6, align 8
  %47 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.stream_ctrl*, %struct.stream_ctrl** %6, align 8
  %51 = getelementptr inbounds %struct.stream_ctrl, %struct.stream_ctrl* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.TYPE_9__*, i32, i32, ...) @ThreadControl(%struct.TYPE_9__* %42, i32 %45, i32 %49, i32 %53)
  %55 = load %struct.stream_ctrl*, %struct.stream_ctrl** %6, align 8
  %56 = call i32 @free(%struct.stream_ctrl* %55)
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %69 = call i32 @msg_Dbg(%struct.TYPE_9__* %64, i8* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %5, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = load i32, i32* @STREAM_SET_PAUSE_STATE, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (%struct.TYPE_9__*, i32, i32, ...) @ThreadControl(%struct.TYPE_9__* %73, i32 %74, i32 %75)
  br label %27

77:                                               ; preds = %57
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80, %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 11
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 10
  %90 = call i32 @vlc_cond_wait(i32* %87, i32* %89)
  br label %27

91:                                               ; preds = %80
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %91
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @ThreadSeek(%struct.TYPE_9__* %101, i64 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 5
  store i32 0, i32* %119, align 8
  br label %126

120:                                              ; preds = %100
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 8
  %125 = call i32 @vlc_cond_signal(i32* %124)
  br label %126

126:                                              ; preds = %120, %105
  br label %27

127:                                              ; preds = %91
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 11
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 10
  %137 = call i32 @vlc_cond_wait(i32* %134, i32* %136)
  br label %27

138:                                              ; preds = %127
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %139, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  store i64 %150, i64* %8, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 12
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %197

155:                                              ; preds = %138
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = icmp uge i64 %156, %163
  br i1 %164, label %165, label %197

165:                                              ; preds = %155
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = load i64, i64* %7, align 8
  %168 = call i64 @ThreadSeek(%struct.TYPE_9__* %166, i64 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %165
  %171 = load i64, i64* %7, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  br label %196

190:                                              ; preds = %165
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 8
  %195 = call i32 @vlc_cond_signal(i32* %194)
  br label %196

196:                                              ; preds = %190, %170
  br label %27

197:                                              ; preds = %155, %138
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp uge i64 %200, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %209, %212
  store i64 %213, i64* %9, align 8
  %214 = load i64, i64* %9, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %249

216:                                              ; preds = %197
  %217 = load i64, i64* %8, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 11
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 10
  %224 = call i32 @vlc_cond_wait(i32* %221, i32* %223)
  br label %27

225:                                              ; preds = %216
  %226 = load i64, i64* %8, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ugt i64 %226, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  br label %237

235:                                              ; preds = %225
  %236 = load i64, i64* %8, align 8
  br label %237

237:                                              ; preds = %235, %231
  %238 = phi i64 [ %234, %231 ], [ %236, %235 ]
  store i64 %238, i64* %9, align 8
  %239 = load i64, i64* %9, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, %239
  store i64 %243, i64* %241, align 8
  %244 = load i64, i64* %9, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = sub i64 %247, %244
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %237, %197
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %252, %255
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = urem i64 %256, %259
  store i64 %260, i64* %10, align 8
  %261 = load i64, i64* %10, align 8
  %262 = load i64, i64* %9, align 8
  %263 = add i64 %261, %262
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 7
  %266 = load i64, i64* %265, align 8
  %267 = icmp ugt i64 %263, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %249
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 7
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %10, align 8
  %273 = sub i64 %271, %272
  store i64 %273, i64* %9, align 8
  br label %274

274:                                              ; preds = %268, %249
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 9
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %10, align 8
  %280 = add i64 %278, %279
  %281 = load i64, i64* %9, align 8
  %282 = call i64 @ThreadRead(%struct.TYPE_9__* %275, i64 %280, i64 %281)
  store i64 %282, i64* %11, align 8
  %283 = load i64, i64* %11, align 8
  %284 = icmp slt i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %274
  br label %27

286:                                              ; preds = %274
  %287 = load i64, i64* %11, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load i64, i64* %9, align 8
  %291 = icmp ugt i64 %290, 0
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %295 = call i32 @msg_Dbg(%struct.TYPE_9__* %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 5
  store i32 1, i32* %297, align 8
  br label %298

298:                                              ; preds = %289, %286
  %299 = load i64, i64* %11, align 8
  %300 = load i64, i64* %9, align 8
  %301 = icmp ule i64 %299, %300
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load i64, i64* %11, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, %304
  store i64 %308, i64* %306, align 8
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = icmp ule i64 %311, %314
  %316 = zext i1 %315 to i32
  %317 = call i32 @assert(i32 %316)
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 8
  %320 = call i32 @vlc_cond_signal(i32* %319)
  br label %27
}

declare dso_local i32 @vlc_interrupt_set(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @mutex_cleanup_push(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ThreadControl(%struct.TYPE_9__*, i32, i32, ...) #1

declare dso_local i32 @free(%struct.stream_ctrl*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i64 @ThreadSeek(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i64 @ThreadRead(%struct.TYPE_9__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
