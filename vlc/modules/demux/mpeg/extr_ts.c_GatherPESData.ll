; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_GatherPESData.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_GatherPESData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i64, i32*, i64, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { i32*, i64, i32 }

@BLOCK_FLAG_SCRAMBLED = common dso_local global i32 0, align 4
@BLOCK_FLAG_SOURCE_RANDOM_ACCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@pes_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_27__*, i64)* @GatherPESData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GatherPESData(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_27__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %10, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 64
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %13, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %33
  store i32* %37, i32** %35, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BLOCK_FLAG_SCRAMBLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %64 = call i32 @block_Release(%struct.TYPE_27__* %63)
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %67 = call i32 @PushPESBlock(%struct.TYPE_25__* %65, %struct.TYPE_24__* %66, %struct.TYPE_27__* null, i32 1)
  store i32 %67, i32* %5, align 4
  br label %452

68:                                               ; preds = %57, %50
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BLOCK_FLAG_SOURCE_RANDOM_ACCESS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %68
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %81 = call i32 @PushPESBlock(%struct.TYPE_25__* %79, %struct.TYPE_24__* %80, %struct.TYPE_27__* null, i32 1)
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %75
  br label %127

97:                                               ; preds = %68
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %97
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = icmp ne %struct.TYPE_21__* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %104
  %116 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %117 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %115, %104
  br label %126

126:                                              ; preds = %125, %97
  br label %127

127:                                              ; preds = %126, %96
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sgt i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %127
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 6
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %172, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call %struct.TYPE_27__* @block_Realloc(%struct.TYPE_27__* %147, i32 %151, i64 %154)
  store %struct.TYPE_27__* %155, %struct.TYPE_27__** %8, align 8
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %157 = icmp ne %struct.TYPE_27__* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %146
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @memcpy(i32* %161, i32* %165, i32 %169)
  br label %171

171:                                              ; preds = %158, %146
  br label %172

172:                                              ; preds = %171, %136
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %172, %127
  store i32 0, i32* %16, align 4
  br label %177

177:                                              ; preds = %449, %176
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %179 = icmp ne %struct.TYPE_27__* %178, null
  br i1 %179, label %180, label %450

180:                                              ; preds = %177
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %306

193:                                              ; preds = %180
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %306, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp uge i64 %199, 6
  br i1 %200, label %201, label %306

201:                                              ; preds = %196
  %202 = load i32, i32* %15, align 4
  %203 = call i64 @likely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %201
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* @pes_sync, align 4
  %210 = call i64 @memcmp(i32* %208, i32 %209, i32 3)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %205
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %214 = call i32 @block_Release(%struct.TYPE_27__* %213)
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %5, align 4
  br label %452

216:                                              ; preds = %205
  br label %285

217:                                              ; preds = %201
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = sub i64 %223, 3
  %225 = trunc i64 %224 to i32
  %226 = call i32* @FindNextPESHeader(i32* %220, i32 %225)
  store i32* %226, i32** %17, align 8
  %227 = load i32*, i32** %17, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %269

229:                                              ; preds = %217
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i64 @MayHaveStartCodeOnEnd(i32* %232, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %265

239:                                              ; preds = %229
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = sub i64 %242, 3
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 %243
  store i32* %247, i32** %245, align 8
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 1
  store i64 3, i64* %249, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  store i32 3, i32* %252, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 @memcpy(i32* %256, i32* %259, i32 %263)
  br label %265

265:                                              ; preds = %239, %229
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %267 = call i32 @block_Release(%struct.TYPE_27__* %266)
  %268 = load i32, i32* %12, align 4
  store i32 %268, i32* %5, align 4
  br label %452

269:                                              ; preds = %217
  %270 = load i32*, i32** %17, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = ptrtoint i32* %270 to i64
  %275 = ptrtoint i32* %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 4
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = sub i64 %280, %277
  store i64 %281, i64* %279, align 8
  %282 = load i32*, i32** %17, align 8
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 0
  store i32* %282, i32** %284, align 8
  br label %285

285:                                              ; preds = %269, %216
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 4
  %290 = call i64 @GetWBE(i32* %289)
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  store i64 %290, i64* %293, align 8
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %285
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 6
  store i64 %304, i64* %302, align 8
  br label %305

305:                                              ; preds = %299, %285
  store i32 1, i32* %16, align 4
  br label %402

306:                                              ; preds = %196, %193, %180
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp sgt i64 %310, %314
  br i1 %315, label %322, label %316

316:                                              ; preds = %306
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br label %322

322:                                              ; preds = %316, %306
  %323 = phi i1 [ true, %306 ], [ %321, %316 ]
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = icmp sgt i64 %329, %333
  br i1 %334, label %335, label %393

335:                                              ; preds = %322
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = sub nsw i64 %339, %343
  store i64 %344, i64* %18, align 8
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* %18, align 8
  %349 = icmp ule i64 %347, %348
  br i1 %349, label %353, label %350

350:                                              ; preds = %335
  %351 = load i32, i32* %14, align 4
  %352 = icmp ne i32 %351, 0
  br label %353

353:                                              ; preds = %350, %335
  %354 = phi i1 [ true, %335 ], [ %352, %350 ]
  %355 = zext i1 %354 to i32
  %356 = call i64 @likely(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %371

358:                                              ; preds = %353
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 4
  %365 = load i32*, i32** %364, align 8
  %366 = icmp eq i32* %365, null
  %367 = zext i1 %366 to i32
  %368 = call i32 @PushPESBlock(%struct.TYPE_25__* %359, %struct.TYPE_24__* %360, %struct.TYPE_27__* %361, i32 %367)
  %369 = load i32, i32* %12, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %12, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  br label %392

371:                                              ; preds = %353
  %372 = load i64, i64* %18, align 8
  %373 = call i32 @block_Split(%struct.TYPE_27__** %8, %struct.TYPE_27__** %19, i64 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %371
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %377 = call i32 @block_Release(%struct.TYPE_27__* %376)
  store i32 0, i32* %5, align 4
  br label %452

378:                                              ; preds = %371
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %381 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 4
  %385 = load i32*, i32** %384, align 8
  %386 = icmp eq i32* %385, null
  %387 = zext i1 %386 to i32
  %388 = call i32 @PushPESBlock(%struct.TYPE_25__* %379, %struct.TYPE_24__* %380, %struct.TYPE_27__* %381, i32 %387)
  %389 = load i32, i32* %12, align 4
  %390 = or i32 %389, %388
  store i32 %390, i32* %12, align 4
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_27__* %391, %struct.TYPE_27__** %8, align 8
  store i32 0, i32* %16, align 4
  br label %392

392:                                              ; preds = %378, %358
  br label %401

393:                                              ; preds = %322
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %396 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %397 = load i32, i32* %11, align 4
  %398 = call i32 @PushPESBlock(%struct.TYPE_25__* %394, %struct.TYPE_24__* %395, %struct.TYPE_27__* %396, i32 %397)
  %399 = load i32, i32* %12, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %12, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  br label %401

401:                                              ; preds = %393, %392
  br label %402

402:                                              ; preds = %401, %305
  %403 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %404 = icmp ne %struct.TYPE_27__* %403, null
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp ult i64 %408, 6
  br label %410

410:                                              ; preds = %405, %402
  %411 = phi i1 [ false, %402 ], [ %409, %405 ]
  %412 = zext i1 %411 to i32
  %413 = call i64 @unlikely(i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %449

415:                                              ; preds = %410
  %416 = load i32, i32* %14, align 4
  %417 = icmp ne i32 %416, 0
  %418 = xor i1 %417, true
  %419 = zext i1 %418 to i32
  %420 = call i32 @assert(i32 %419)
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp eq i32 %424, 0
  %426 = zext i1 %425 to i32
  %427 = call i32 @assert(i32 %426)
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %429 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = trunc i64 %430 to i32
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  store i32 %431, i32* %434, align 8
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 2
  %438 = load i32*, i32** %437, align 8
  %439 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = trunc i64 %444 to i32
  %446 = call i32 @memcpy(i32* %438, i32* %441, i32 %445)
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %448 = call i32 @block_Release(%struct.TYPE_27__* %447)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  br label %449

449:                                              ; preds = %415, %410
  br label %177

450:                                              ; preds = %177
  %451 = load i32, i32* %12, align 4
  store i32 %451, i32* %5, align 4
  br label %452

452:                                              ; preds = %450, %375, %265, %212, %62
  %453 = load i32, i32* %5, align 4
  ret i32 %453
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_27__*) #1

declare dso_local i32 @PushPESBlock(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_27__* @block_Realloc(%struct.TYPE_27__*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32* @FindNextPESHeader(i32*, i32) #1

declare dso_local i64 @MayHaveStartCodeOnEnd(i32*, i32) #1

declare dso_local i64 @GetWBE(i32*) #1

declare dso_local i32 @block_Split(%struct.TYPE_27__**, %struct.TYPE_27__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
