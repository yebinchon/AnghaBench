; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_array_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_array_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTR_POINTERTYPE = common dso_local global i32 0, align 4
@current_structure = common dso_local global i32* null, align 8
@FC_RP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"0x%02x,\09/* %s */\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0x%x,\09/* %d */\0A\00", align 1
@FC_BOGUS_ARRAY = common dso_local global i8 0, align 1
@FC_LGFARRAY = common dso_local global i8 0, align 1
@FC_LGVARRAY = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"NdrFcLong(0x%x),\09/* %u */\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"NdrFcShort(0x%hx),\09/* %u */\0A\00", align 1
@FC_SMVARRAY = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"0x%x,\09/* FC_PP */\0A\00", align 1
@FC_PP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"0x%x,\09/* FC_PAD */\0A\00", align 1
@FC_PAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"0x%x,\09/* FC_END */\0A\00", align 1
@FC_END = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i32*)* @write_array_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_array_tfs(i32* %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @type_array_get_variance(i32* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @type_array_get_conformance(i32* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ATTR_POINTERTYPE, align 4
  %28 = call i32 @get_attrv(i32* %26, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @type_array_is_decl_as_ptr(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %5
  %33 = load i32*, i32** @current_structure, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** @current_structure, align 8
  %37 = call i32 @type_memsize(i32* %36)
  br label %39

38:                                               ; preds = %32, %5
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @FC_RP, align 4
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @type_array_get_element(i32* %47)
  %49 = call i64 @is_string_type(i32* %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @type_array_get_element(i32* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @write_embedded_types(i32* %52, i32* %53, i32* %55, i8* %56, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %51, %45
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @is_conformant_array(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @type_array_get_element(i32* %65)
  br label %69

67:                                               ; preds = %60
  %68 = load i32*, i32** %8, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32* [ %66, %64 ], [ %68, %67 ]
  %71 = call i32 @type_memsize(i32* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @is_conformant_array(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32*, i32** %8, align 8
  %77 = call i32* @type_array_get_element(i32* %76)
  br label %80

78:                                               ; preds = %69
  %79 = load i32*, i32** %8, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i32* [ %77, %75 ], [ %79, %78 ]
  %82 = call i32 @type_buffer_alignment(i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call zeroext i8 @get_array_fc(i32* %83)
  store i8 %84, i8* %16, align 1
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @update_tfsoff(i32* %87, i32 %88, i32* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @print_start_tfs_comment(i32* %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i8, i8* %16, align 1
  %97 = zext i8 %96 to i16
  %98 = load i8, i8* %16, align 1
  %99 = call i32 @string_of_type(i8 zeroext %98)
  %100 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %95, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i16 zeroext %97, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sub i32 %102, 1
  %104 = trunc i32 %103 to i16
  %105 = load i32, i32* %13, align 4
  %106 = sub i32 %105, 1
  %107 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %101, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %104, i32 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, 2
  store i32 %110, i32* %108, align 4
  store i32 0, i32* %13, align 4
  %111 = load i8, i8* %16, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %289

116:                                              ; preds = %80
  %117 = load i8, i8* %16, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @FC_LGFARRAY, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load i8, i8* %16, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @FC_LGVARRAY, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %122, %116
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %14, align 4
  %131 = trunc i32 %130 to i16
  %132 = load i32, i32* %14, align 4
  %133 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %129, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %131, i32 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, 4
  store i32 %136, i32* %134, align 4
  br label %146

137:                                              ; preds = %122
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %14, align 4
  %140 = trunc i32 %139 to i16
  %141 = load i32, i32* %14, align 4
  %142 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %138, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %140, i32 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, 2
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %137, %128
  %147 = load i32*, i32** %8, align 8
  %148 = call i64 @is_conformant_array(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i32*, i32** %6, align 8
  %152 = load i32*, i32** @current_structure, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i64 @write_conf_or_var_desc(i32* %151, i32* %152, i32 %153, i32* %154, i32* %155)
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  %160 = add nsw i64 %159, %156
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  br label %162

162:                                              ; preds = %150, %146
  %163 = load i8, i8* %16, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* @FC_SMVARRAY, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load i8, i8* %16, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, i8* @FC_LGVARRAY, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %212

174:                                              ; preds = %168, %162
  %175 = load i32*, i32** %8, align 8
  %176 = call i32* @type_array_get_element(i32* %175)
  %177 = call i32 @type_memsize(i32* %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @type_array_get_dim(i32* %178)
  store i32 %179, i32* %20, align 4
  %180 = load i8, i8* %16, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @FC_LGVARRAY, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %174
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %20, align 4
  %188 = trunc i32 %187 to i16
  %189 = load i32, i32* %20, align 4
  %190 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %186, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %188, i32 %189)
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %191, align 4
  %193 = add i32 %192, 4
  store i32 %193, i32* %191, align 4
  br label %203

194:                                              ; preds = %174
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %20, align 4
  %197 = trunc i32 %196 to i16
  %198 = load i32, i32* %20, align 4
  %199 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %195, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %197, i32 %198)
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %201, 2
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %194, %185
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %19, align 4
  %206 = trunc i32 %205 to i16
  %207 = load i32, i32* %19, align 4
  %208 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %204, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %206, i32 %207)
  %209 = load i32*, i32** %10, align 8
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, 2
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %203, %168
  %213 = load i32*, i32** %11, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load i32*, i32** %6, align 8
  %217 = load i32*, i32** @current_structure, align 8
  %218 = load i32, i32* %18, align 4
  %219 = load i32*, i32** %8, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = call i64 @write_conf_or_var_desc(i32* %216, i32* %217, i32 %218, i32* %219, i32* %220)
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  %225 = add nsw i64 %224, %221
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  br label %227

227:                                              ; preds = %215, %212
  %228 = load i32*, i32** %8, align 8
  %229 = call i32* @type_array_get_element(i32* %228)
  %230 = call i64 @type_has_pointers(i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %271

232:                                              ; preds = %227
  %233 = load i32*, i32** %8, align 8
  %234 = call i64 @type_array_is_decl_as_ptr(i32* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = load i32*, i32** @current_structure, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %271, label %239

239:                                              ; preds = %236, %232
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* @FC_PP, align 4
  %242 = trunc i32 %241 to i16
  %243 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %240, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %242)
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* @FC_PAD, align 4
  %246 = trunc i32 %245 to i16
  %247 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %244, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %246)
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %248, align 4
  %250 = add i32 %249, 2
  store i32 %250, i32* %248, align 4
  %251 = load i32*, i32** %6, align 8
  %252 = load i32*, i32** %7, align 8
  %253 = load i32*, i32** %8, align 8
  %254 = call i64 @is_string_type(i32* %252, i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %239
  %257 = load i32*, i32** %7, align 8
  br label %259

258:                                              ; preds = %239
  br label %259

259:                                              ; preds = %258, %256
  %260 = phi i32* [ %257, %256 ], [ null, %258 ]
  %261 = load i32*, i32** %8, align 8
  %262 = load i32*, i32** %10, align 8
  %263 = call i32 @write_pointer_description(i32* %251, i32* %260, i32* %261, i32* %262)
  %264 = load i32*, i32** %6, align 8
  %265 = load i32, i32* @FC_END, align 4
  %266 = trunc i32 %265 to i16
  %267 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %264, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i16 zeroext %266)
  %268 = load i32*, i32** %10, align 8
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %259, %236, %227
  %272 = load i32*, i32** %6, align 8
  %273 = load i32*, i32** %7, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = call i64 @is_string_type(i32* %273, i32* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  %278 = load i32*, i32** %7, align 8
  br label %280

279:                                              ; preds = %271
  br label %280

280:                                              ; preds = %279, %277
  %281 = phi i32* [ %278, %277 ], [ null, %279 ]
  %282 = load i32*, i32** %8, align 8
  %283 = load i32, i32* @FALSE, align 4
  %284 = load i32*, i32** %10, align 8
  %285 = call i32 @write_array_element_type(i32* %272, i32* %281, i32* %282, i32 %283, i32* %284)
  %286 = load i32*, i32** %6, align 8
  %287 = load i32*, i32** %10, align 8
  %288 = call i32 @write_end(i32* %286, i32* %287)
  br label %345

289:                                              ; preds = %80
  %290 = load i32*, i32** %12, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %296

293:                                              ; preds = %289
  %294 = load i32*, i32** %8, align 8
  %295 = call i32 @type_array_get_dim(i32* %294)
  br label %296

296:                                              ; preds = %293, %292
  %297 = phi i32 [ 0, %292 ], [ %295, %293 ]
  store i32 %297, i32* %21, align 4
  %298 = load i32*, i32** %6, align 8
  %299 = load i32, i32* %21, align 4
  %300 = trunc i32 %299 to i16
  %301 = load i32, i32* %21, align 4
  %302 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %298, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %300, i32 %301)
  %303 = load i32*, i32** %10, align 8
  %304 = load i32, i32* %303, align 4
  %305 = add i32 %304, 2
  store i32 %305, i32* %303, align 4
  %306 = load i32*, i32** %6, align 8
  %307 = load i32*, i32** @current_structure, align 8
  %308 = load i32, i32* %18, align 4
  %309 = load i32*, i32** %8, align 8
  %310 = load i32*, i32** %12, align 8
  %311 = call i64 @write_conf_or_var_desc(i32* %306, i32* %307, i32 %308, i32* %309, i32* %310)
  %312 = load i32*, i32** %10, align 8
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  %315 = add nsw i64 %314, %311
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %312, align 4
  %317 = load i32*, i32** %6, align 8
  %318 = load i32*, i32** @current_structure, align 8
  %319 = load i32, i32* %18, align 4
  %320 = load i32*, i32** %8, align 8
  %321 = load i32*, i32** %11, align 8
  %322 = call i64 @write_conf_or_var_desc(i32* %317, i32* %318, i32 %319, i32* %320, i32* %321)
  %323 = load i32*, i32** %10, align 8
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  %326 = add nsw i64 %325, %322
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 4
  %328 = load i32*, i32** %6, align 8
  %329 = load i32*, i32** %7, align 8
  %330 = load i32*, i32** %8, align 8
  %331 = call i64 @is_string_type(i32* %329, i32* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %296
  %334 = load i32*, i32** %7, align 8
  br label %336

335:                                              ; preds = %296
  br label %336

336:                                              ; preds = %335, %333
  %337 = phi i32* [ %334, %333 ], [ null, %335 ]
  %338 = load i32*, i32** %8, align 8
  %339 = load i32, i32* @TRUE, align 4
  %340 = load i32*, i32** %10, align 8
  %341 = call i32 @write_array_element_type(i32* %328, i32* %337, i32* %338, i32 %339, i32* %340)
  %342 = load i32*, i32** %6, align 8
  %343 = load i32*, i32** %10, align 8
  %344 = call i32 @write_end(i32* %342, i32* %343)
  br label %345

345:                                              ; preds = %336, %280
  %346 = load i32, i32* %15, align 4
  ret i32 %346
}

declare dso_local i32* @type_array_get_variance(i32*) #1

declare dso_local i32* @type_array_get_conformance(i32*) #1

declare dso_local i32 @get_attrv(i32*, i32) #1

declare dso_local i64 @type_array_is_decl_as_ptr(i32*) #1

declare dso_local i32 @type_memsize(i32*) #1

declare dso_local i64 @is_string_type(i32*, i32*) #1

declare dso_local i32* @type_array_get_element(i32*) #1

declare dso_local i32 @write_embedded_types(i32*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @is_conformant_array(i32*) #1

declare dso_local i32 @type_buffer_alignment(i32*) #1

declare dso_local zeroext i8 @get_array_fc(i32*) #1

declare dso_local i32 @update_tfsoff(i32*, i32, i32*) #1

declare dso_local i32 @print_start_tfs_comment(i32*, i32*, i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, i16 zeroext, ...) #1

declare dso_local i32 @string_of_type(i8 zeroext) #1

declare dso_local i64 @write_conf_or_var_desc(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @type_array_get_dim(i32*) #1

declare dso_local i64 @type_has_pointers(i32*) #1

declare dso_local i32 @write_pointer_description(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @write_array_element_type(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @write_end(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
