; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_parameter_fc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_parameter_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@ATTR_IN = common dso_local global i32 0, align 4
@ATTR_OUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IsIn = common dso_local global i16 0, align 2
@IsOut = common dso_local global i16 0, align 2
@IsReturn = common dso_local global i16 0, align 2
@TDT_ALL_TYPES = common dso_local global i32 0, align 4
@IsBasetype = common dso_local global i16 0, align 2
@FC_BIND_PRIMITIVE = common dso_local global i8 0, align 1
@FC_LONG = common dso_local global i8 0, align 1
@IsByValue = common dso_local global i16 0, align 2
@MustFree = common dso_local global i16 0, align 2
@IsSimpleRef = common dso_local global i16 0, align 2
@FC_RP = common dso_local global i32 0, align 4
@pointer_size = common dso_local global i32 0, align 4
@FC_ENUM32 = common dso_local global i8 0, align 1
@MustSize = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_23__*, i32, i16*, i32*, i32*)* @get_parameter_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_parameter_fc(%struct.TYPE_23__* %0, i32 %1, i16* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16* %2, i16** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @ATTR_IN, align 4
  %23 = call i32 @is_attr(i32* %21, i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @ATTR_OUT, align 4
  %28 = call i32 @is_attr(i32* %26, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %17, align 4
  br label %42

33:                                               ; preds = %5
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %39, %36, %33
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i16*, i16** %8, align 8
  store i16 0, i16* %43, align 2
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = call i32 @get_stack_size(%struct.TYPE_23__* %44, i32* %15)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load i16, i16* @IsIn, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16*, i16** %8, align 8
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %58, %55
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %56, align 2
  br label %61

61:                                               ; preds = %53, %42
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i16, i16* @IsOut, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16*, i16** %8, align 8
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %69, %66
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 2
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i16, i16* @IsReturn, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16*, i16** %8, align 8
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = or i32 %80, %77
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %78, align 2
  br label %83

83:                                               ; preds = %75, %72
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = call i32 @is_string_type(i32* %86, %struct.TYPE_24__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %83
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @get_required_buffer_size_type(%struct.TYPE_24__* %95, i32* null, i32* %98, i32 %99, i32* %11)
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %92, %83
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @TDT_ALL_TYPES, align 4
  %109 = call i32 @typegen_detect_type(%struct.TYPE_24__* %104, i32* %107, i32 %108)
  switch i32 %109, label %465 [
    i32 139, label %110
    i32 136, label %130
    i32 132, label %142
    i32 130, label %150
    i32 129, label %150
    i32 128, label %150
    i32 135, label %169
    i32 140, label %177
    i32 131, label %228
    i32 137, label %278
    i32 138, label %289
    i32 133, label %290
    i32 134, label %463
  ]

110:                                              ; preds = %101
  %111 = load i16, i16* @IsBasetype, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16*, i16** %8, align 8
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = or i32 %115, %112
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %113, align 2
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = call zeroext i8 @get_basic_fc_signed(%struct.TYPE_24__* %120)
  store i8 %121, i8* %14, align 1
  %122 = load i8, i8* %14, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @FC_BIND_PRIMITIVE, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %110
  store i32 4, i32* %13, align 4
  %128 = load i8, i8* @FC_LONG, align 1
  store i8 %128, i8* %14, align 1
  br label %129

129:                                              ; preds = %127, %110
  br label %465

130:                                              ; preds = %101
  %131 = load i16, i16* @IsBasetype, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16*, i16** %8, align 8
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = or i32 %135, %132
  %137 = trunc i32 %136 to i16
  store i16 %137, i16* %133, align 2
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = call zeroext i8 @get_enum_fc(%struct.TYPE_24__* %140)
  store i8 %141, i8* %14, align 1
  br label %465

142:                                              ; preds = %101
  %143 = load i16, i16* @IsByValue, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16*, i16** %8, align 8
  %146 = load i16, i16* %145, align 2
  %147 = zext i16 %146 to i32
  %148 = or i32 %147, %144
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %145, align 2
  br label %465

150:                                              ; preds = %101, %101, %101
  %151 = load i16, i16* @MustFree, align 2
  %152 = zext i16 %151 to i32
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i16, i16* @IsByValue, align 2
  %157 = zext i16 %156 to i32
  br label %161

158:                                              ; preds = %150
  %159 = load i16, i16* @IsSimpleRef, align 2
  %160 = zext i16 %159 to i32
  br label %161

161:                                              ; preds = %158, %155
  %162 = phi i32 [ %157, %155 ], [ %160, %158 ]
  %163 = or i32 %152, %162
  %164 = load i16*, i16** %8, align 8
  %165 = load i16, i16* %164, align 2
  %166 = zext i16 %165 to i32
  %167 = or i32 %166, %163
  %168 = trunc i32 %167 to i16
  store i16 %168, i16* %164, align 2
  br label %465

169:                                              ; preds = %101
  %170 = load i16, i16* @MustFree, align 2
  %171 = zext i16 %170 to i32
  %172 = load i16*, i16** %8, align 8
  %173 = load i16, i16* %172, align 2
  %174 = zext i16 %173 to i32
  %175 = or i32 %174, %171
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %172, align 2
  br label %465

177:                                              ; preds = %101
  %178 = load i16, i16* @MustFree, align 2
  %179 = zext i16 %178 to i32
  %180 = load i16*, i16** %8, align 8
  %181 = load i16, i16* %180, align 2
  %182 = zext i16 %181 to i32
  %183 = or i32 %182, %179
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %180, align 2
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_24__* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %227

190:                                              ; preds = %177
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %190
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %201, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @get_pointer_fc(%struct.TYPE_24__* %202, i32* %205, i32 %209)
  %211 = load i32, i32* @FC_RP, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %199
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %10, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i16, i16* @IsSimpleRef, align 2
  %221 = zext i16 %220 to i32
  %222 = load i16*, i16** %8, align 8
  %223 = load i16, i16* %222, align 2
  %224 = zext i16 %223 to i32
  %225 = or i32 %224, %221
  %226 = trunc i32 %225 to i16
  store i16 %226, i16* %222, align 2
  br label %227

227:                                              ; preds = %213, %199, %190, %177
  br label %465

228:                                              ; preds = %101
  %229 = load i16, i16* @MustFree, align 2
  %230 = zext i16 %229 to i32
  %231 = load i16*, i16** %8, align 8
  %232 = load i16, i16* %231, align 2
  %233 = zext i16 %232 to i32
  %234 = or i32 %233, %230
  %235 = trunc i32 %234 to i16
  store i16 %235, i16* %231, align 2
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %237, align 8
  %239 = call i32 @is_declptr(%struct.TYPE_24__* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %277

241:                                              ; preds = %228
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %243, align 8
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = call i32 @get_pointer_fc(%struct.TYPE_24__* %244, i32* %247, i32 %251)
  %253 = load i32, i32* @FC_RP, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %277

255:                                              ; preds = %241
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  %259 = call i32 @is_conformant_array(%struct.TYPE_24__* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32*, i32** %10, align 8
  %263 = load i32, i32* %262, align 4
  %264 = add i32 %263, 4
  store i32 %264, i32* %262, align 4
  br label %269

265:                                              ; preds = %255
  %266 = load i32*, i32** %10, align 8
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, 2
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %265, %261
  %270 = load i16, i16* @IsSimpleRef, align 2
  %271 = zext i16 %270 to i32
  %272 = load i16*, i16** %8, align 8
  %273 = load i16, i16* %272, align 2
  %274 = zext i16 %273 to i32
  %275 = or i32 %274, %271
  %276 = trunc i32 %275 to i16
  store i16 %276, i16* %272, align 2
  br label %277

277:                                              ; preds = %269, %241, %228
  br label %465

278:                                              ; preds = %101
  %279 = load i16, i16* @IsSimpleRef, align 2
  %280 = zext i16 %279 to i32
  %281 = load i16*, i16** %8, align 8
  %282 = load i16, i16* %281, align 2
  %283 = zext i16 %282 to i32
  %284 = or i32 %283, %280
  %285 = trunc i32 %284 to i16
  store i16 %285, i16* %281, align 2
  %286 = load i32*, i32** %10, align 8
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, 4
  store i32 %288, i32* %286, align 4
  br label %289

289:                                              ; preds = %101, %278
  store i32 20, i32* %13, align 4
  br label %465

290:                                              ; preds = %101
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %292, align 8
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i32 @get_pointer_fc(%struct.TYPE_24__* %293, i32* %296, i32 %300)
  %302 = load i32, i32* @FC_RP, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %454

304:                                              ; preds = %290
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %306, align 8
  %308 = call %struct.TYPE_24__* @type_pointer_get_ref(%struct.TYPE_24__* %307)
  store %struct.TYPE_24__* %308, %struct.TYPE_24__** %18, align 8
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %313 = call i32 @is_string_type(i32* %311, %struct.TYPE_24__* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %304
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %317 = load i32, i32* @TRUE, align 4
  %318 = call i32 @get_required_buffer_size_type(%struct.TYPE_24__* %316, i32* null, i32* null, i32 %317, i32* %11)
  store i32 %318, i32* %13, align 4
  br label %319

319:                                              ; preds = %315, %304
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %321 = load i32, i32* @TDT_ALL_TYPES, align 4
  %322 = call i32 @typegen_detect_type(%struct.TYPE_24__* %320, i32* null, i32 %321)
  switch i32 %322, label %453 [
    i32 139, label %323
    i32 136, label %344
    i32 129, label %373
    i32 128, label %373
    i32 132, label %373
    i32 140, label %373
    i32 131, label %397
    i32 133, label %397
    i32 138, label %397
    i32 137, label %397
    i32 135, label %406
    i32 130, label %422
    i32 134, label %451
  ]

323:                                              ; preds = %319
  %324 = load i16, i16* @IsSimpleRef, align 2
  %325 = zext i16 %324 to i32
  %326 = load i16, i16* @IsBasetype, align 2
  %327 = zext i16 %326 to i32
  %328 = or i32 %325, %327
  %329 = load i16*, i16** %8, align 8
  %330 = load i16, i16* %329, align 2
  %331 = zext i16 %330 to i32
  %332 = or i32 %331, %328
  %333 = trunc i32 %332 to i16
  store i16 %333, i16* %329, align 2
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %335 = call zeroext i8 @get_basic_fc(%struct.TYPE_24__* %334)
  store i8 %335, i8* %14, align 1
  %336 = load i32, i32* %16, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %343, label %338

338:                                              ; preds = %323
  %339 = load i32, i32* %17, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* @pointer_size, align 4
  store i32 %342, i32* %12, align 4
  br label %343

343:                                              ; preds = %341, %338, %323
  br label %453

344:                                              ; preds = %319
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %346 = call zeroext i8 @get_enum_fc(%struct.TYPE_24__* %345)
  store i8 %346, i8* %14, align 1
  %347 = zext i8 %346 to i32
  %348 = load i8, i8* @FC_ENUM32, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp eq i32 %347, %349
  br i1 %350, label %351, label %370

351:                                              ; preds = %344
  %352 = load i16, i16* @IsSimpleRef, align 2
  %353 = zext i16 %352 to i32
  %354 = load i16, i16* @IsBasetype, align 2
  %355 = zext i16 %354 to i32
  %356 = or i32 %353, %355
  %357 = load i16*, i16** %8, align 8
  %358 = load i16, i16* %357, align 2
  %359 = zext i16 %358 to i32
  %360 = or i32 %359, %356
  %361 = trunc i32 %360 to i16
  store i16 %361, i16* %357, align 2
  %362 = load i32, i32* %16, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %351
  %365 = load i32, i32* %17, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = load i32, i32* @pointer_size, align 4
  store i32 %368, i32* %12, align 4
  br label %369

369:                                              ; preds = %367, %364, %351
  br label %372

370:                                              ; preds = %344
  %371 = load i32, i32* @pointer_size, align 4
  store i32 %371, i32* %12, align 4
  br label %372

372:                                              ; preds = %370, %369
  br label %453

373:                                              ; preds = %319, %319, %319, %319
  %374 = load i16, i16* @IsSimpleRef, align 2
  %375 = zext i16 %374 to i32
  %376 = load i16, i16* @MustFree, align 2
  %377 = zext i16 %376 to i32
  %378 = or i32 %375, %377
  %379 = load i16*, i16** %8, align 8
  %380 = load i16, i16* %379, align 2
  %381 = zext i16 %380 to i32
  %382 = or i32 %381, %378
  %383 = trunc i32 %382 to i16
  store i16 %383, i16* %379, align 2
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %10, align 8
  store i32 %386, i32* %387, align 4
  %388 = load i32, i32* %16, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %396, label %390

390:                                              ; preds = %373
  %391 = load i32, i32* %17, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %395 = call i32 @type_memsize(%struct.TYPE_24__* %394)
  store i32 %395, i32* %12, align 4
  br label %396

396:                                              ; preds = %393, %390, %373
  br label %453

397:                                              ; preds = %319, %319, %319, %319
  %398 = load i16, i16* @MustFree, align 2
  %399 = zext i16 %398 to i32
  %400 = load i16*, i16** %8, align 8
  %401 = load i16, i16* %400, align 2
  %402 = zext i16 %401 to i32
  %403 = or i32 %402, %399
  %404 = trunc i32 %403 to i16
  store i16 %404, i16* %400, align 2
  %405 = load i32, i32* @pointer_size, align 4
  store i32 %405, i32* %12, align 4
  br label %453

406:                                              ; preds = %319
  %407 = load i16, i16* @MustFree, align 2
  %408 = zext i16 %407 to i32
  %409 = load i16*, i16** %8, align 8
  %410 = load i16, i16* %409, align 2
  %411 = zext i16 %410 to i32
  %412 = or i32 %411, %408
  %413 = trunc i32 %412 to i16
  store i16 %413, i16* %409, align 2
  %414 = load i32, i32* %16, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %406
  %417 = load i32, i32* %17, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = load i32, i32* @pointer_size, align 4
  store i32 %420, i32* %12, align 4
  br label %421

421:                                              ; preds = %419, %416, %406
  br label %453

422:                                              ; preds = %319
  %423 = load i16, i16* @IsSimpleRef, align 2
  %424 = zext i16 %423 to i32
  %425 = load i16, i16* @MustFree, align 2
  %426 = zext i16 %425 to i32
  %427 = or i32 %424, %426
  %428 = load i16*, i16** %8, align 8
  %429 = load i16, i16* %428, align 2
  %430 = zext i16 %429 to i32
  %431 = or i32 %430, %427
  %432 = trunc i32 %431 to i16
  store i16 %432, i16* %428, align 2
  %433 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %434 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32*, i32** %10, align 8
  store i32 %435, i32* %436, align 4
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %438 = call i32 @get_struct_fc(%struct.TYPE_24__* %437)
  switch i32 %438, label %449 [
    i32 141, label %439
    i32 142, label %439
    i32 143, label %439
  ]

439:                                              ; preds = %422, %422, %422
  %440 = load i32, i32* %16, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %448, label %442

442:                                              ; preds = %439
  %443 = load i32, i32* %17, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %447 = call i32 @type_memsize(%struct.TYPE_24__* %446)
  store i32 %447, i32* %12, align 4
  br label %448

448:                                              ; preds = %445, %442, %439
  br label %450

449:                                              ; preds = %422
  br label %450

450:                                              ; preds = %449, %448
  br label %453

451:                                              ; preds = %319
  %452 = call i32 @assert(i32 0)
  br label %453

453:                                              ; preds = %451, %319, %450, %421, %397, %396, %372, %343
  br label %462

454:                                              ; preds = %290
  %455 = load i16, i16* @MustFree, align 2
  %456 = zext i16 %455 to i32
  %457 = load i16*, i16** %8, align 8
  %458 = load i16, i16* %457, align 2
  %459 = zext i16 %458 to i32
  %460 = or i32 %459, %456
  %461 = trunc i32 %460 to i16
  store i16 %461, i16* %457, align 2
  br label %462

462:                                              ; preds = %454, %453
  br label %465

463:                                              ; preds = %101
  %464 = call i32 @assert(i32 0)
  br label %465

465:                                              ; preds = %463, %101, %462, %289, %277, %227, %169, %161, %142, %130, %129
  %466 = load i32, i32* %13, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %476, label %468

468:                                              ; preds = %465
  %469 = load i16, i16* @MustSize, align 2
  %470 = zext i16 %469 to i32
  %471 = load i16*, i16** %8, align 8
  %472 = load i16, i16* %471, align 2
  %473 = zext i16 %472 to i32
  %474 = or i32 %473, %470
  %475 = trunc i32 %474 to i16
  store i16 %475, i16* %471, align 2
  br label %476

476:                                              ; preds = %468, %465
  %477 = load i32, i32* %12, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %494

479:                                              ; preds = %476
  %480 = load i32, i32* %12, align 4
  %481 = add i32 %480, 7
  %482 = udiv i32 %481, 8
  store i32 %482, i32* %12, align 4
  %483 = load i32, i32* %12, align 4
  %484 = icmp ult i32 %483, 8
  br i1 %484, label %485, label %493

485:                                              ; preds = %479
  %486 = load i32, i32* %12, align 4
  %487 = shl i32 %486, 13
  %488 = load i16*, i16** %8, align 8
  %489 = load i16, i16* %488, align 2
  %490 = zext i16 %489 to i32
  %491 = or i32 %490, %487
  %492 = trunc i32 %491 to i16
  store i16 %492, i16* %488, align 2
  br label %493

493:                                              ; preds = %485, %479
  br label %494

494:                                              ; preds = %493, %476
  %495 = load i8, i8* %14, align 1
  ret i8 %495
}

declare dso_local i32 @is_attr(i32*, i32) #1

declare dso_local i32 @get_stack_size(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @is_string_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @get_required_buffer_size_type(%struct.TYPE_24__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @typegen_detect_type(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local zeroext i8 @get_basic_fc_signed(%struct.TYPE_24__*) #1

declare dso_local zeroext i8 @get_enum_fc(%struct.TYPE_24__*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(%struct.TYPE_24__*) #1

declare dso_local i32 @get_pointer_fc(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @is_declptr(%struct.TYPE_24__*) #1

declare dso_local i32 @is_conformant_array(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @type_pointer_get_ref(%struct.TYPE_24__*) #1

declare dso_local zeroext i8 @get_basic_fc(%struct.TYPE_24__*) #1

declare dso_local i32 @type_memsize(%struct.TYPE_24__*) #1

declare dso_local i32 @get_struct_fc(%struct.TYPE_24__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
