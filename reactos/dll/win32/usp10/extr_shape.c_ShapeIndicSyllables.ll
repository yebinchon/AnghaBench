; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeIndicSyllables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeIndicSyllables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }

@FEATURE_GSUB_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"locl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"nukt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"akhn\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rkrf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pstf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vatu\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cjct\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rphf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pref\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"blwf\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"applying feature locl\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"applying feature nukt\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"applying feature akhn\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"applying feature rkrf\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"applying feature pstf\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"applying feature vatu\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"applying feature cjct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i32, i32*, i32*, i32*, i32, i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)*, i64)* @ShapeIndicSyllables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShapeIndicSyllables(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_18__* %5, i32 %6, i32* %7, i32* %8, i32* %9, i32 %10, i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)* %11, i64 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca %struct.TYPE_18__, align 4
  %41 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32 %4, i32* %18, align 4
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)* %11, i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)** %25, align 8
  store i64 %12, i64* %26, align 8
  store i32 0, i32* %28, align 4
  %42 = load i64, i64* %26, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %13
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %16, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %49 = call i32* @load_OT_feature(i32 %45, i32* %46, i32* %47, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %51

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i32* [ %49, %44 ], [ null, %50 ]
  store i32* %52, i32** %29, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %57 = call i32* @load_OT_feature(i32 %53, i32* %54, i32* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %57, i32** %30, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %62 = call i32* @load_OT_feature(i32 %58, i32* %59, i32* %60, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %62, i32** %31, align 8
  %63 = load i64, i64* %26, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %70 = call i32* @load_OT_feature(i32 %66, i32* %67, i32* %68, i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %72

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i32* [ %70, %65 ], [ null, %71 ]
  store i32* %73, i32** %32, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %78 = call i32* @load_OT_feature(i32 %74, i32* %75, i32* %76, i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32* %78, i32** %33, align 8
  %79 = load i32*, i32** %32, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %86 = call i32* @load_OT_feature(i32 %82, i32* %83, i32* %84, i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %88

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %81
  %89 = phi i32* [ %86, %81 ], [ null, %87 ]
  store i32* %89, i32** %34, align 8
  %90 = load i64, i64* %26, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %97 = call i32* @load_OT_feature(i32 %93, i32* %94, i32* %95, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %99

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %92
  %100 = phi i32* [ %97, %92 ], [ null, %98 ]
  store i32* %100, i32** %35, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %105 = call i32* @load_OT_feature(i32 %101, i32* %102, i32* %103, i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp ne i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %36, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %113 = call i32* @load_OT_feature(i32 %109, i32* %110, i32* %111, i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %114 = icmp ne i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %37, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %121 = call i32* @load_OT_feature(i32 %117, i32* %118, i32* %119, i32 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %122 = icmp ne i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %38, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %129 = call i32* @load_OT_feature(i32 %125, i32* %126, i32* %127, i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %130 = icmp ne i32* %129, null
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %39, align 8
  store i32 0, i32* %27, align 4
  br label %133

133:                                              ; preds = %398, %99
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %401

137:                                              ; preds = %133
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %139 = load i32, i32* %27, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %140
  %142 = call i32 @memcpy(%struct.TYPE_18__* %40, %struct.TYPE_18__* %141, i32 4)
  %143 = load i32, i32* %28, align 4
  %144 = call i32 @shift_syllable_glyph_indexs(%struct.TYPE_18__* %40, i32 -1, i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %41, align 4
  %147 = load i32*, i32** %29, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %166

149:                                              ; preds = %137
  %150 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i32, i32* %14, align 4
  %152 = load i32*, i32** %15, align 8
  %153 = load i32*, i32** %16, align 8
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %157 = load i32, i32* %27, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 %158
  %160 = load i32*, i32** %21, align 8
  %161 = load i32*, i32** %22, align 8
  %162 = load i32*, i32** %23, align 8
  %163 = load i32, i32* %24, align 4
  %164 = load i32*, i32** %29, align 8
  %165 = call i32 @Apply_Indic_BasicForm(i32 %151, i32* %152, i32* %153, i32* %154, i32 %155, %struct.TYPE_18__* %159, i32* %160, i32* %161, i32* %162, i32 %163, %struct.TYPE_18__* %40, i32* %164)
  br label %166

166:                                              ; preds = %149, %137
  %167 = load i32*, i32** %30, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = load i32, i32* %18, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %177 = load i32, i32* %27, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i64 %178
  %180 = load i32*, i32** %21, align 8
  %181 = load i32*, i32** %22, align 8
  %182 = load i32*, i32** %23, align 8
  %183 = load i32, i32* %24, align 4
  %184 = load i32*, i32** %30, align 8
  %185 = call i32 @Apply_Indic_BasicForm(i32 %171, i32* %172, i32* %173, i32* %174, i32 %175, %struct.TYPE_18__* %179, i32* %180, i32* %181, i32* %182, i32 %183, %struct.TYPE_18__* %40, i32* %184)
  br label %186

186:                                              ; preds = %169, %166
  %187 = load i32*, i32** %31, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %206

189:                                              ; preds = %186
  %190 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %191 = load i32, i32* %14, align 4
  %192 = load i32*, i32** %15, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %197 = load i32, i32* %27, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i64 %198
  %200 = load i32*, i32** %21, align 8
  %201 = load i32*, i32** %22, align 8
  %202 = load i32*, i32** %23, align 8
  %203 = load i32, i32* %24, align 4
  %204 = load i32*, i32** %31, align 8
  %205 = call i32 @Apply_Indic_BasicForm(i32 %191, i32* %192, i32* %193, i32* %194, i32 %195, %struct.TYPE_18__* %199, i32* %200, i32* %201, i32* %202, i32 %203, %struct.TYPE_18__* %40, i32* %204)
  br label %206

206:                                              ; preds = %189, %186
  %207 = load i64, i64* %36, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %206
  %210 = load i32, i32* %14, align 4
  %211 = load i32*, i32** %15, align 8
  %212 = load i32*, i32** %16, align 8
  %213 = load i32*, i32** %17, align 8
  %214 = load i32, i32* %18, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %216 = load i32, i32* %27, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i64 %217
  %219 = load i32*, i32** %21, align 8
  %220 = load i32*, i32** %22, align 8
  %221 = load i32*, i32** %23, align 8
  %222 = load i32, i32* %24, align 4
  %223 = call i32 @Apply_Indic_Rphf(i32 %210, i32* %211, i32* %212, i32* %213, i32 %214, %struct.TYPE_18__* %218, i32* %219, i32* %220, i32* %221, i32 %222, %struct.TYPE_18__* %40)
  br label %224

224:                                              ; preds = %209, %206
  %225 = load i32*, i32** %32, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %244

227:                                              ; preds = %224
  %228 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %229 = load i32, i32* %14, align 4
  %230 = load i32*, i32** %15, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = load i32*, i32** %17, align 8
  %233 = load i32, i32* %18, align 4
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %235 = load i32, i32* %27, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 %236
  %238 = load i32*, i32** %21, align 8
  %239 = load i32*, i32** %22, align 8
  %240 = load i32*, i32** %23, align 8
  %241 = load i32, i32* %24, align 4
  %242 = load i32*, i32** %32, align 8
  %243 = call i32 @Apply_Indic_BasicForm(i32 %229, i32* %230, i32* %231, i32* %232, i32 %233, %struct.TYPE_18__* %237, i32* %238, i32* %239, i32* %240, i32 %241, %struct.TYPE_18__* %40, i32* %242)
  br label %244

244:                                              ; preds = %227, %224
  %245 = load i64, i64* %37, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %244
  %248 = load i32, i32* %14, align 4
  %249 = load i32*, i32** %15, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load i32*, i32** %17, align 8
  %252 = load i32, i32* %18, align 4
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %254 = load i32, i32* %27, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i64 %255
  %257 = load i32*, i32** %21, align 8
  %258 = load i32*, i32** %22, align 8
  %259 = load i32*, i32** %23, align 8
  %260 = load i32, i32* %24, align 4
  %261 = load i64, i64* %26, align 8
  %262 = call i32 @Apply_Indic_PostBase(i32 %248, i32* %249, i32* %250, i32* %251, i32 %252, %struct.TYPE_18__* %256, i32* %257, i32* %258, i32* %259, i32 %260, %struct.TYPE_18__* %40, i64 %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %263

263:                                              ; preds = %247, %244
  %264 = load i64, i64* %38, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %300

266:                                              ; preds = %263
  %267 = load i64, i64* %26, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %284, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %14, align 4
  %271 = load i32*, i32** %15, align 8
  %272 = load i32*, i32** %16, align 8
  %273 = load i32*, i32** %17, align 8
  %274 = load i32, i32* %18, align 4
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %276 = load i32, i32* %27, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i64 %277
  %279 = load i32*, i32** %21, align 8
  %280 = load i32*, i32** %22, align 8
  %281 = load i32*, i32** %23, align 8
  %282 = load i32, i32* %24, align 4
  %283 = call i32 @Apply_Indic_PreBase(i32 %270, i32* %271, i32* %272, i32* %273, i32 %274, %struct.TYPE_18__* %278, i32* %279, i32* %280, i32* %281, i32 %282, %struct.TYPE_18__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %284

284:                                              ; preds = %269, %266
  %285 = load i32, i32* %14, align 4
  %286 = load i32*, i32** %15, align 8
  %287 = load i32*, i32** %16, align 8
  %288 = load i32*, i32** %17, align 8
  %289 = load i32, i32* %18, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %291 = load i32, i32* %27, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i64 %292
  %294 = load i32*, i32** %21, align 8
  %295 = load i32*, i32** %22, align 8
  %296 = load i32*, i32** %23, align 8
  %297 = load i32, i32* %24, align 4
  %298 = load i64, i64* %26, align 8
  %299 = call i32 @Apply_Indic_PostBase(i32 %285, i32* %286, i32* %287, i32* %288, i32 %289, %struct.TYPE_18__* %293, i32* %294, i32* %295, i32* %296, i32 %297, %struct.TYPE_18__* %40, i64 %298, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %300

300:                                              ; preds = %284, %263
  %301 = load i64, i64* %39, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %318

303:                                              ; preds = %300
  %304 = load i32, i32* %14, align 4
  %305 = load i32*, i32** %15, align 8
  %306 = load i32*, i32** %16, align 8
  %307 = load i32*, i32** %17, align 8
  %308 = load i32, i32* %18, align 4
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %310 = load i32, i32* %27, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i64 %311
  %313 = load i32*, i32** %21, align 8
  %314 = load i32*, i32** %22, align 8
  %315 = load i32*, i32** %23, align 8
  %316 = load i32, i32* %24, align 4
  %317 = call i32 @Apply_Indic_PreBase(i32 %304, i32* %305, i32* %306, i32* %307, i32 %308, %struct.TYPE_18__* %312, i32* %313, i32* %314, i32* %315, i32 %316, %struct.TYPE_18__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %318

318:                                              ; preds = %303, %300
  %319 = load i32*, i32** %33, align 8
  %320 = icmp ne i32* %319, null
  br i1 %320, label %321, label %338

321:                                              ; preds = %318
  %322 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %323 = load i32, i32* %14, align 4
  %324 = load i32*, i32** %15, align 8
  %325 = load i32*, i32** %16, align 8
  %326 = load i32*, i32** %17, align 8
  %327 = load i32, i32* %18, align 4
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %329 = load i32, i32* %27, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i64 %330
  %332 = load i32*, i32** %21, align 8
  %333 = load i32*, i32** %22, align 8
  %334 = load i32*, i32** %23, align 8
  %335 = load i32, i32* %24, align 4
  %336 = load i32*, i32** %33, align 8
  %337 = call i32 @Apply_Indic_BasicForm(i32 %323, i32* %324, i32* %325, i32* %326, i32 %327, %struct.TYPE_18__* %331, i32* %332, i32* %333, i32* %334, i32 %335, %struct.TYPE_18__* %40, i32* %336)
  br label %338

338:                                              ; preds = %321, %318
  %339 = load i32*, i32** %34, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %358

341:                                              ; preds = %338
  %342 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %343 = load i32, i32* %14, align 4
  %344 = load i32*, i32** %15, align 8
  %345 = load i32*, i32** %16, align 8
  %346 = load i32*, i32** %17, align 8
  %347 = load i32, i32* %18, align 4
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %349 = load i32, i32* %27, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i64 %350
  %352 = load i32*, i32** %21, align 8
  %353 = load i32*, i32** %22, align 8
  %354 = load i32*, i32** %23, align 8
  %355 = load i32, i32* %24, align 4
  %356 = load i32*, i32** %34, align 8
  %357 = call i32 @Apply_Indic_BasicForm(i32 %343, i32* %344, i32* %345, i32* %346, i32 %347, %struct.TYPE_18__* %351, i32* %352, i32* %353, i32* %354, i32 %355, %struct.TYPE_18__* %40, i32* %356)
  br label %358

358:                                              ; preds = %341, %338
  %359 = load i32*, i32** %35, align 8
  %360 = icmp ne i32* %359, null
  br i1 %360, label %361, label %378

361:                                              ; preds = %358
  %362 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %363 = load i32, i32* %14, align 4
  %364 = load i32*, i32** %15, align 8
  %365 = load i32*, i32** %16, align 8
  %366 = load i32*, i32** %17, align 8
  %367 = load i32, i32* %18, align 4
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %369 = load i32, i32* %27, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i64 %370
  %372 = load i32*, i32** %21, align 8
  %373 = load i32*, i32** %22, align 8
  %374 = load i32*, i32** %23, align 8
  %375 = load i32, i32* %24, align 4
  %376 = load i32*, i32** %35, align 8
  %377 = call i32 @Apply_Indic_BasicForm(i32 %363, i32* %364, i32* %365, i32* %366, i32 %367, %struct.TYPE_18__* %371, i32* %372, i32* %373, i32* %374, i32 %375, %struct.TYPE_18__* %40, i32* %376)
  br label %378

378:                                              ; preds = %361, %358
  %379 = load i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)*, i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)** %25, align 8
  %380 = icmp ne i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)* %379, null
  br i1 %380, label %381, label %391

381:                                              ; preds = %378
  %382 = load i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)*, i32 (i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_18__*, i32)** %25, align 8
  %383 = load i32*, i32** %17, align 8
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %385 = load i32, i32* %27, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i64 %386
  %388 = load i32*, i32** %21, align 8
  %389 = load i32, i32* %24, align 4
  %390 = call i32 %382(i32* %383, %struct.TYPE_18__* %387, i32* %388, %struct.TYPE_18__* %40, i32 %389)
  br label %391

391:                                              ; preds = %381, %378
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %41, align 4
  %395 = sub nsw i32 %393, %394
  %396 = load i32, i32* %28, align 4
  %397 = add nsw i32 %396, %395
  store i32 %397, i32* %28, align 4
  br label %398

398:                                              ; preds = %391
  %399 = load i32, i32* %27, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %27, align 4
  br label %133

401:                                              ; preds = %133
  ret void
}

declare dso_local i32* @load_OT_feature(i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @shift_syllable_glyph_indexs(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @Apply_Indic_BasicForm(i32, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @Apply_Indic_Rphf(i32, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i32*, i32*, i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @Apply_Indic_PostBase(i32, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i64, i8*) #1

declare dso_local i32 @Apply_Indic_PreBase(i32, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i32*, i32*, i32*, i32, %struct.TYPE_18__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
