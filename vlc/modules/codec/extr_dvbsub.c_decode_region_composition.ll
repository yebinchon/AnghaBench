; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_region_composition.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_region_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i8*, i8*, i8*, %struct.TYPE_14__*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"region size changed (%dx%d->%dx%d)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"region parameters changed (not allowed)\00", align 1
@DVBSUB_OT_BASIC_CHAR = common dso_local global i8* null, align 8
@DVBSUB_OT_COMPOSITE_STRING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32)* @decode_region_composition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_region_composition(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store %struct.TYPE_13__** %28, %struct.TYPE_13__*** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @bs_read(i32* %29, i32 8)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @bs_read(i32* %32, i32 4)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %8, align 8
  br label %38

38:                                               ; preds = %51, %3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 10
  store %struct.TYPE_13__** %43, %struct.TYPE_13__*** %9, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %55

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 10
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %8, align 8
  br label %38

55:                                               ; preds = %49, %38
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = mul nsw i32 8, %67
  %69 = sub nsw i32 %68, 4
  %70 = call i32 @bs_skip(i32* %65, i32 %69)
  br label %338

71:                                               ; preds = %58, %55
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %71
  %75 = call %struct.TYPE_13__* @calloc(i32 1, i32 56)
  %76 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %76, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %338

80:                                               ; preds = %74
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 9
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 10
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %86, align 8
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i8* @bs_read(i32* %94, i32 1)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %21, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @bs_skip(i32* %97, i32 3)
  %99 = load i32*, i32** %5, align 8
  %100 = call i8* @bs_read(i32* %99, i32 16)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @bs_read(i32* %102, i32 16)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %14, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = call i8* @bs_read(i32* %105, i32 3)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %15, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = call i8* @bs_read(i32* %108, i32 3)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @bs_skip(i32* %111, i32 2)
  %113 = load i32*, i32** %5, align 8
  %114 = call i8* @bs_read(i32* %113, i32 8)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %17, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = call i8* @bs_read(i32* %116, i32 8)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = call i8* @bs_read(i32* %119, i32 4)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %19, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = call i8* @bs_read(i32* %122, i32 2)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %20, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @bs_skip(i32* %125, i32 2)
  br label %127

127:                                              ; preds = %132, %87
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = call i32 @free(%struct.TYPE_14__* %143)
  br label %127

145:                                              ; preds = %127
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = call i32 @free(%struct.TYPE_14__* %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %151, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %145
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %192

163:                                              ; preds = %157, %145
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 9
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = icmp ne %struct.TYPE_14__* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Dbg(%struct.TYPE_15__* %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 9
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = call i32 @free(%struct.TYPE_14__* %181)
  br label %183

183:                                              ; preds = %168, %163
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %13, align 4
  %186 = mul nsw i32 %184, %185
  %187 = call %struct.TYPE_14__* @xmalloc(i32 %186)
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 9
  store %struct.TYPE_14__* %187, %struct.TYPE_14__** %189, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 5
  store i32 0, i32* %191, align 4
  store i32 1, i32* %21, align 4
  br label %192

192:                                              ; preds = %183, %157
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %192
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %215, label %203

203:                                              ; preds = %197
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209, %203, %197
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Dbg(%struct.TYPE_15__* %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %209, %192
  %219 = load i32, i32* %21, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %245

221:                                              ; preds = %218
  %222 = load i32, i32* %16, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load i32, i32* %20, align 4
  br label %235

226:                                              ; preds = %221
  %227 = load i32, i32* %16, align 4
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* %19, align 4
  br label %233

231:                                              ; preds = %226
  %232 = load i32, i32* %18, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  br label %235

235:                                              ; preds = %233, %224
  %236 = phi i32 [ %225, %224 ], [ %234, %233 ]
  store i32 %236, i32* %22, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 9
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %238, align 8
  %240 = load i32, i32* %22, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %14, align 4
  %243 = mul nsw i32 %241, %242
  %244 = call i32 @memset(%struct.TYPE_14__* %239, i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %235, %218
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %15, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 8
  %255 = load i32, i32* %16, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 7
  store i32 %258, i32* %260, align 4
  store i32 10, i32* %10, align 4
  br label %261

261:                                              ; preds = %337, %245
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %338

265:                                              ; preds = %261
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = mul i64 56, %276
  %278 = trunc i64 %277 to i32
  %279 = call %struct.TYPE_14__* @xrealloc(%struct.TYPE_14__* %272, i32 %278)
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 8
  store %struct.TYPE_14__* %279, %struct.TYPE_14__** %281, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i64 %289
  store %struct.TYPE_14__* %290, %struct.TYPE_14__** %23, align 8
  %291 = load i32*, i32** %5, align 8
  %292 = call i8* @bs_read(i32* %291, i32 16)
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 6
  store i8* %292, i8** %294, align 8
  %295 = load i32*, i32** %5, align 8
  %296 = call i8* @bs_read(i32* %295, i32 2)
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 2
  store i8* %296, i8** %298, align 8
  %299 = load i32*, i32** %5, align 8
  %300 = call i32 @bs_skip(i32* %299, i32 2)
  %301 = load i32*, i32** %5, align 8
  %302 = call i8* @bs_read(i32* %301, i32 12)
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 5
  store i8* %302, i8** %304, align 8
  %305 = load i32*, i32** %5, align 8
  %306 = call i32 @bs_skip(i32* %305, i32 4)
  %307 = load i32*, i32** %5, align 8
  %308 = call i8* @bs_read(i32* %307, i32 12)
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 4
  store i8* %308, i8** %310, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %312, align 8
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 6
  store i32 %314, i32* %10, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = load i8*, i8** @DVBSUB_OT_BASIC_CHAR, align 8
  %319 = icmp eq i8* %317, %318
  br i1 %319, label %326, label %320

320:                                              ; preds = %265
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = load i8*, i8** @DVBSUB_OT_COMPOSITE_STRING, align 8
  %325 = icmp eq i8* %323, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %320, %265
  %327 = load i32*, i32** %5, align 8
  %328 = call i8* @bs_read(i32* %327, i32 8)
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 1
  store i8* %328, i8** %330, align 8
  %331 = load i32*, i32** %5, align 8
  %332 = call i8* @bs_read(i32* %331, i32 8)
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  store i8* %332, i8** %334, align 8
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 2
  store i32 %336, i32* %10, align 4
  br label %337

337:                                              ; preds = %326, %320
  br label %261

338:                                              ; preds = %64, %79, %261
  ret void
}

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @xrealloc(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
