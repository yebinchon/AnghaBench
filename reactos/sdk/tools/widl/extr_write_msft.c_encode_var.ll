; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_encode_var.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_encode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i8* }

@.str = private unnamed_addr constant [42 x i8] c"encode_var: var %p type %p type->name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"array with %d dimensions\0A\00", align 1
@MSFT_SEG_ARRAYDESC = common dso_local global i64 0, align 8
@MSFT_SEG_TYPEDESC = common dso_local global i64 0, align 8
@VT_CARRAY = common dso_local global i32 0, align 4
@VT_PTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"encode_var: skipping ptr\0A\00", align 1
@VT_BYREF = common dso_local global i32 0, align 4
@VT_SAFEARRAY = common dso_local global i64 0, align 8
@VT_ARRAY = common dso_local global i32 0, align 4
@VT_DISPATCH = common dso_local global i32 0, align 4
@VT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32*, i32*)* @encode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_var(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i32* %17, i32** %11, align 8
  br label %30

30:                                               ; preds = %29, %5
  %31 = load i32*, i32** %11, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = call i32 (i8*, ...) @chat(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %32, %struct.TYPE_22__* %33, i8* %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %47 = call i64 @is_array(%struct.TYPE_22__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %175

49:                                               ; preds = %43
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %175, label %53

53:                                               ; preds = %49
  store i32 1, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %21, align 8
  br label %55

55:                                               ; preds = %69, %53
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %57 = call i64 @is_array(%struct.TYPE_22__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %61 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %71 = call %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__* %70)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %21, align 8
  br label %55

72:                                               ; preds = %64
  %73 = load i32, i32* %18, align 4
  %74 = call i32 (i8*, ...) @chat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @encode_var(%struct.TYPE_23__* %75, %struct.TYPE_22__* %76, i32* %77, i32* %14, i32* null)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = load i64, i64* @MSFT_SEG_ARRAYDESC, align 8
  %81 = load i32, i32* %18, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 2, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ctl2_alloc_segment(%struct.TYPE_23__* %79, i64 %80, i32 %86, i32 0)
  store i32 %87, i32* %20, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* @MSFT_SEG_ARRAYDESC, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = bitcast i32* %96 to i8*
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %22, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** %22, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32*, i32** %22, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = shl i64 %108, 16
  %110 = load i32*, i32** %22, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = or i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load i32*, i32** %22, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32* %117, i32** %22, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %21, align 8
  br label %119

119:                                              ; preds = %143, %72
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %121 = call i64 @is_array(%struct.TYPE_22__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %125 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__* %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br label %128

128:                                              ; preds = %123, %119
  %129 = phi i1 [ false, %119 ], [ %127, %123 ]
  br i1 %129, label %130, label %146

130:                                              ; preds = %128
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %132 = call i32 @type_array_get_dim(%struct.TYPE_22__* %131)
  %133 = load i32*, i32** %22, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %22, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 0, i32* %136, align 4
  %137 = load i32*, i32** %22, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  store i32* %138, i32** %22, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %140 = call i32 @type_array_get_dim(%struct.TYPE_22__* %139)
  %141 = load i32, i32* %19, align 4
  %142 = mul nsw i32 %141, %140
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %130
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %145 = call %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__* %144)
  store %struct.TYPE_22__* %145, %struct.TYPE_22__** %21, align 8
  br label %119

146:                                              ; preds = %128
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %149 = call i32 @ctl2_alloc_segment(%struct.TYPE_23__* %147, i64 %148, i32 8, i32 0)
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %154 = getelementptr inbounds i32*, i32** %152, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = bitcast i32* %158 to i8*
  %160 = bitcast i8* %159 to i32*
  store i32* %160, i32** %13, align 8
  %161 = load i32, i32* @VT_CARRAY, align 4
  %162 = or i32 2147352576, %161
  %163 = load i32*, i32** %13, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %20, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32*, i32** %10, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %18, align 4
  %171 = sub nsw i32 %170, 1
  %172 = mul nsw i32 %171, 8
  %173 = add nsw i32 20, %172
  %174 = load i32*, i32** %11, align 8
  store i32 %173, i32* %174, align 4
  store i32 0, i32* %6, align 4
  br label %349

175:                                              ; preds = %49, %43
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = call i32 @get_type_vt(%struct.TYPE_22__* %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @VT_PTR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %331

181:                                              ; preds = %175
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = call i64 @is_ptr(%struct.TYPE_22__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %187 = call %struct.TYPE_22__* @type_pointer_get_ref(%struct.TYPE_22__* %186)
  br label %191

188:                                              ; preds = %181
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %190 = call %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = phi %struct.TYPE_22__* [ %187, %185 ], [ %190, %188 ]
  store %struct.TYPE_22__* %192, %struct.TYPE_22__** %23, align 8
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = call i32 @encode_var(%struct.TYPE_23__* %193, %struct.TYPE_22__* %194, i32* %195, i32* %14, i32* %15)
  store i32 %196, i32* %24, align 4
  %197 = load i32, i32* %24, align 4
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = call i32 (i8*, ...) @chat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* %14, align 4
  %202 = load i32*, i32** %10, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32*, i32** %11, align 8
  store i32 %203, i32* %204, align 4
  store i32 0, i32* %6, align 4
  br label %349

205:                                              ; preds = %191
  store i32 0, i32* %12, align 4
  br label %206

206:                                              ; preds = %242, %205
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %209, align 8
  %211 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %207, %214
  br i1 %215, label %216, label %245

216:                                              ; preds = %206
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load i32**, i32*** %218, align 8
  %220 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %221 = getelementptr inbounds i32*, i32** %219, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = bitcast i32* %225 to i8*
  %227 = bitcast i8* %226 to i32*
  store i32* %227, i32** %13, align 8
  %228 = load i32*, i32** %13, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 65535
  %232 = load i32, i32* @VT_PTR, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %216
  %235 = load i32*, i32** %13, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %245

241:                                              ; preds = %234, %216
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 8
  store i32 %244, i32* %12, align 4
  br label %206

245:                                              ; preds = %240, %206
  %246 = load i32, i32* %12, align 4
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %246, %253
  br i1 %254, label %255, label %325

255:                                              ; preds = %245
  %256 = load i32, i32* %14, align 4
  %257 = and i32 %256, -2147483648
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load i32, i32* %14, align 4
  %261 = ashr i32 %260, 16
  %262 = and i32 %261, 16383
  %263 = load i32, i32* @VT_BYREF, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %25, align 4
  br label %301

265:                                              ; preds = %255
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %267 = call i32 @get_type_vt(%struct.TYPE_22__* %266)
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* @VT_SAFEARRAY, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %265
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %273 = call %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__* %272)
  %274 = call %struct.TYPE_22__* @type_alias_get_aliasee(%struct.TYPE_22__* %273)
  store %struct.TYPE_22__* %274, %struct.TYPE_22__** %26, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %276 = call i32 @get_type_vt(%struct.TYPE_22__* %275)
  %277 = load i32, i32* @VT_ARRAY, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @VT_BYREF, align 4
  %280 = or i32 %278, %279
  store i32 %280, i32* %25, align 4
  br label %300

281:                                              ; preds = %265
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 0
  %284 = load i32**, i32*** %283, align 8
  %285 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %286 = getelementptr inbounds i32*, i32** %284, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = bitcast i32* %290 to i8*
  %292 = bitcast i8* %291 to i32*
  store i32* %292, i32** %13, align 8
  %293 = load i32*, i32** %13, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = ashr i32 %295, 16
  %297 = icmp eq i32 %296, 32767
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i32 32767, i32 32766
  store i32 %299, i32* %25, align 4
  br label %300

300:                                              ; preds = %281, %271
  br label %301

301:                                              ; preds = %300, %259
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %303 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %304 = call i32 @ctl2_alloc_segment(%struct.TYPE_23__* %302, i64 %303, i32 8, i32 0)
  store i32 %304, i32* %12, align 4
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 0
  %307 = load i32**, i32*** %306, align 8
  %308 = load i64, i64* @MSFT_SEG_TYPEDESC, align 8
  %309 = getelementptr inbounds i32*, i32** %307, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = bitcast i32* %313 to i8*
  %315 = bitcast i8* %314 to i32*
  store i32* %315, i32** %13, align 8
  %316 = load i32, i32* %25, align 4
  %317 = shl i32 %316, 16
  %318 = load i32, i32* @VT_PTR, align 4
  %319 = or i32 %317, %318
  %320 = load i32*, i32** %13, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %14, align 4
  %323 = load i32*, i32** %13, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %301, %245
  %326 = load i32, i32* %12, align 4
  %327 = load i32*, i32** %10, align 8
  store i32 %326, i32* %327, align 4
  %328 = load i32, i32* %15, align 4
  %329 = add nsw i32 8, %328
  %330 = load i32*, i32** %11, align 8
  store i32 %329, i32* %330, align 4
  store i32 0, i32* %6, align 4
  br label %349

331:                                              ; preds = %175
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %333 = call i32 @dump_type(%struct.TYPE_22__* %332)
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %335 = load i32, i32* %16, align 4
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %337 = load i32*, i32** %10, align 8
  %338 = load i32*, i32** %11, align 8
  %339 = call i32 @encode_type(%struct.TYPE_23__* %334, i32 %335, %struct.TYPE_22__* %336, i32* %337, i32* %338)
  %340 = load i32, i32* %16, align 4
  %341 = load i32, i32* @VT_DISPATCH, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %347, label %343

343:                                              ; preds = %331
  %344 = load i32, i32* %16, align 4
  %345 = load i32, i32* @VT_UNKNOWN, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %343, %331
  store i32 2, i32* %6, align 4
  br label %349

348:                                              ; preds = %343
  store i32 0, i32* %6, align 4
  br label %349

349:                                              ; preds = %348, %347, %325, %199, %146
  %350 = load i32, i32* %6, align 4
  ret i32 %350
}

declare dso_local i32 @chat(i8*, ...) #1

declare dso_local i64 @is_array(%struct.TYPE_22__*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__*) #1

declare dso_local i32 @ctl2_alloc_segment(%struct.TYPE_23__*, i64, i32, i32) #1

declare dso_local i32 @type_array_get_dim(%struct.TYPE_22__*) #1

declare dso_local i32 @get_type_vt(%struct.TYPE_22__*) #1

declare dso_local i64 @is_ptr(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @type_pointer_get_ref(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @type_alias_get_aliasee(%struct.TYPE_22__*) #1

declare dso_local i32 @dump_type(%struct.TYPE_22__*) #1

declare dso_local i32 @encode_type(%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
