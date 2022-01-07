; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_helpers.c_ComposeFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_helpers.c_ComposeFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32* }

@CC_ALTLINE = common dso_local global i64 0, align 8
@CC_UPCONVERT = common dso_local global i64 0, align 8
@CC_SOURCE_TOP = common dso_local global i64 0, align 8
@CC_SOURCE_BOTTOM = common dso_local global i64 0, align 8
@CC_MERGE = common dso_local global i64 0, align 8
@U_PLANE = common dso_local global i32 0, align 4
@V_PLANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ComposeFrame(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  %21 = alloca %struct.TYPE_12__, align 8
  %22 = alloca %struct.TYPE_12__, align 8
  %23 = alloca %struct.TYPE_12__, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @CC_ALTLINE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %6
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @CC_UPCONVERT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @CC_SOURCE_TOP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @CC_SOURCE_BOTTOM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @CC_MERGE, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52, %48, %44, %6
  %61 = phi i1 [ true, %52 ], [ true, %48 ], [ true, %44 ], [ true, %6 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %13, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @CC_UPCONVERT, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %333, %60
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %336

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @U_PLANE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @V_PLANE, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ true, %77 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @U_PLANE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @V_PLANE, align 4
  store i32 %101, i32* %17, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @U_PLANE, align 4
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %107

105:                                              ; preds = %93, %90, %85
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* @CC_ALTLINE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %110, %107
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %119
  %121 = call i32 @FieldFromPlane(%struct.TYPE_12__* %18, %struct.TYPE_12__* %120, i32 0)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %126
  %128 = call i32 @FieldFromPlane(%struct.TYPE_12__* %19, %struct.TYPE_12__* %127, i32 1)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = call i32 @FieldFromPlane(%struct.TYPE_12__* %20, %struct.TYPE_12__* %134, i32 0)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 %140
  %142 = call i32 @FieldFromPlane(%struct.TYPE_12__* %21, %struct.TYPE_12__* %141, i32 1)
  %143 = call i32 @plane_CopyPixels(%struct.TYPE_12__* %18, %struct.TYPE_12__* %20)
  %144 = call i32 @plane_CopyPixels(%struct.TYPE_12__* %19, %struct.TYPE_12__* %21)
  br label %332

145:                                              ; preds = %110
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @CC_UPCONVERT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = call i32 @FieldFromPlane(%struct.TYPE_12__* %22, %struct.TYPE_12__* %155, i32 0)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = call i32 @FieldFromPlane(%struct.TYPE_12__* %23, %struct.TYPE_12__* %162, i32 1)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  %170 = call i32 @plane_CopyPixels(%struct.TYPE_12__* %22, %struct.TYPE_12__* %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = call i32 @plane_CopyPixels(%struct.TYPE_12__* %23, %struct.TYPE_12__* %176)
  br label %331

178:                                              ; preds = %145
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* @CC_SOURCE_TOP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i64 %187
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %193
  %195 = call i32 @plane_CopyPixels(%struct.TYPE_12__* %188, %struct.TYPE_12__* %194)
  br label %330

196:                                              ; preds = %178
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* @CC_SOURCE_BOTTOM, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 %205
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = call i32 @plane_CopyPixels(%struct.TYPE_12__* %206, %struct.TYPE_12__* %212)
  br label %329

214:                                              ; preds = %196
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %24, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  store i32* %230, i32** %25, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %27, align 8
  %239 = load i32*, i32** %27, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %247, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %239, i64 %257
  store i32* %258, i32** %26, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @FFMIN3(i32 %266, i32 %274, i32 %282)
  store i32 %283, i32* %28, align 4
  br label %284

284:                                              ; preds = %288, %214
  %285 = load i32*, i32** %27, align 8
  %286 = load i32*, i32** %26, align 8
  %287 = icmp ult i32* %285, %286
  br i1 %287, label %288, label %327

288:                                              ; preds = %284
  %289 = load i32*, i32** %27, align 8
  %290 = load i32*, i32** %24, align 8
  %291 = load i32*, i32** %25, align 8
  %292 = load i32, i32* %28, align 4
  %293 = call i32 @Merge(i32* %289, i32* %290, i32* %291, i32 %292)
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32*, i32** %27, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32* %304, i32** %27, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32*, i32** %24, align 8
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  store i32* %315, i32** %24, align 8
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = load i32, i32* %15, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32*, i32** %25, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %25, align 8
  br label %284

327:                                              ; preds = %284
  %328 = call i32 (...) @EndMerge()
  br label %329

329:                                              ; preds = %327, %200
  br label %330

330:                                              ; preds = %329, %182
  br label %331

331:                                              ; preds = %330, %149
  br label %332

332:                                              ; preds = %331, %114
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %15, align 4
  br label %71

336:                                              ; preds = %71
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FieldFromPlane(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

declare dso_local i32 @Merge(i32*, i32*, i32*, i32) #1

declare dso_local i32 @EndMerge(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
