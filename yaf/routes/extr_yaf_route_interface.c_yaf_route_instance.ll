; ModuleID = '/home/carl/AnghaBench/yaf/routes/extr_yaf_route_interface.c_yaf_route_instance.c'
source_filename = "/home/carl/AnghaBench/yaf/routes/extr_yaf_route_interface.c_yaf_route_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"route\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"controllerPrefer\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"supervar\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"varname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yaf_route_instance(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i64, i64* @IS_ARRAY, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @Z_TYPE_P(i32* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32* null, i32** %3, align 8
  br label %262

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @Z_ARRVAL_P(i32* %24)
  %26 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @zend_hash_str_find(i32 %25, i32 %26)
  store i32* %27, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @IS_STRING, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i64 @Z_TYPE_P(i32* %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %23
  store i32* null, i32** %3, align 8
  br label %262

35:                                               ; preds = %29
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @Z_STR_P(i32* %36)
  %38 = call i64 @zend_string_equals_literal_ci(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @Z_ARRVAL_P(i32* %41)
  %43 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32* @zend_hash_str_find(i32 %42, i32 %43)
  store i32* %44, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @Z_TYPE_P(i32* %47)
  %49 = load i64, i64* @IS_STRING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40
  store i32* null, i32** %3, align 8
  br label %262

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @Z_ARRVAL_P(i32* %53)
  %55 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32* @zend_hash_str_find(i32 %54, i32 %55)
  store i32* %56, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @Z_TYPE_P(i32* %59)
  %61 = load i64, i64* @IS_ARRAY, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %52
  store i32* null, i32** %3, align 8
  br label %262

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @Z_ARRVAL_P(i32* %65)
  %67 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32* @zend_hash_str_find(i32 %66, i32 %67)
  store i32* %68, i32** %9, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @Z_TYPE_P(i32* %71)
  %73 = load i64, i64* @IS_ARRAY, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %64
  store i32* null, i32** %9, align 8
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32* @yaf_route_rewrite_instance(i32* %77, i32* %78, i32* %79, i32* %80)
  store i32* %81, i32** %12, align 8
  br label %260

82:                                               ; preds = %35
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @Z_STR_P(i32* %83)
  %85 = call i64 @zend_string_equals_literal_ci(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %155

87:                                               ; preds = %82
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @Z_ARRVAL_P(i32* %88)
  %90 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i32* @zend_hash_str_find(i32 %89, i32 %90)
  store i32* %91, i32** %6, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @Z_TYPE_P(i32* %94)
  %96 = load i64, i64* @IS_STRING, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %87
  store i32* null, i32** %3, align 8
  br label %262

99:                                               ; preds = %93
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @Z_ARRVAL_P(i32* %100)
  %102 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32* @zend_hash_str_find(i32 %101, i32 %102)
  store i32* %103, i32** %7, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @Z_TYPE_P(i32* %106)
  %108 = load i64, i64* @IS_ARRAY, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %99
  store i32* null, i32** %3, align 8
  br label %262

111:                                              ; preds = %105
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @Z_ARRVAL_P(i32* %112)
  %114 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32* @zend_hash_str_find(i32 %113, i32 %114)
  store i32* %115, i32** %8, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %111
  %118 = load i32*, i32** %8, align 8
  %119 = call i64 @Z_TYPE_P(i32* %118)
  %120 = load i64, i64* @IS_ARRAY, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %111
  store i32* null, i32** %8, align 8
  br label %123

123:                                              ; preds = %122, %117
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @Z_ARRVAL_P(i32* %124)
  %126 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %127 = call i32* @zend_hash_str_find(i32 %125, i32 %126)
  store i32* %127, i32** %9, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load i32*, i32** %9, align 8
  %131 = call i64 @Z_TYPE_P(i32* %130)
  %132 = load i64, i64* @IS_ARRAY, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %123
  store i32* null, i32** %9, align 8
  br label %135

135:                                              ; preds = %134, %129
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @Z_ARRVAL_P(i32* %136)
  %138 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %139 = call i32* @zend_hash_str_find(i32 %137, i32 %138)
  store i32* %139, i32** %10, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %135
  %142 = load i32*, i32** %10, align 8
  %143 = call i64 @Z_TYPE_P(i32* %142)
  %144 = load i64, i64* @IS_STRING, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %141, %135
  store i32* null, i32** %10, align 8
  br label %147

147:                                              ; preds = %146, %141
  %148 = load i32*, i32** %4, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = call i32* @yaf_route_regex_instance(i32* %148, i32* %149, i32* %150, i32* %151, i32* %152, i32* %153)
  store i32* %154, i32** %12, align 8
  br label %259

155:                                              ; preds = %82
  %156 = load i32*, i32** %11, align 8
  %157 = call i32* @Z_STR_P(i32* %156)
  %158 = call i64 @zend_string_equals_literal_ci(i32* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %155
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @Z_ARRVAL_P(i32* %161)
  %163 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %164 = call i32* @zend_hash_str_find(i32 %162, i32 %163)
  store i32* %164, i32** %11, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @zend_is_true(i32* %167)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %166, %160
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @Z_ARRVAL_P(i32* %170)
  %172 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %173 = call i32* @zend_hash_str_find(i32 %171, i32 %172)
  store i32* %173, i32** %11, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = load i32*, i32** %11, align 8
  %177 = call i64 @Z_TYPE_P(i32* %176)
  %178 = load i64, i64* @IS_STRING, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32*, i32** %11, align 8
  %182 = call i32* @Z_STR_P(i32* %181)
  store i32* %182, i32** %13, align 8
  br label %183

183:                                              ; preds = %180, %175, %169
  %184 = load i32*, i32** %4, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32*, i32** %13, align 8
  %187 = call i32* @yaf_route_map_instance(i32* %184, i32 %185, i32* %186)
  store i32* %187, i32** %12, align 8
  br label %258

188:                                              ; preds = %155
  %189 = load i32*, i32** %11, align 8
  %190 = call i32* @Z_STR_P(i32* %189)
  %191 = call i64 @zend_string_equals_literal_ci(i32* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %235

193:                                              ; preds = %188
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @Z_ARRVAL_P(i32* %194)
  %196 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %197 = call i32* @zend_hash_str_find(i32 %195, i32 %196)
  store i32* %197, i32** %6, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %193
  %200 = load i32*, i32** %6, align 8
  %201 = call i64 @Z_TYPE_P(i32* %200)
  %202 = load i64, i64* @IS_STRING, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199, %193
  store i32* null, i32** %3, align 8
  br label %262

205:                                              ; preds = %199
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 @Z_ARRVAL_P(i32* %206)
  %208 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %209 = call i32* @zend_hash_str_find(i32 %207, i32 %208)
  store i32* %209, i32** %7, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %205
  %212 = load i32*, i32** %7, align 8
  %213 = call i64 @Z_TYPE_P(i32* %212)
  %214 = load i64, i64* @IS_STRING, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %211, %205
  store i32* null, i32** %3, align 8
  br label %262

217:                                              ; preds = %211
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @Z_ARRVAL_P(i32* %218)
  %220 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %221 = call i32* @zend_hash_str_find(i32 %219, i32 %220)
  store i32* %221, i32** %8, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %228, label %223

223:                                              ; preds = %217
  %224 = load i32*, i32** %8, align 8
  %225 = call i64 @Z_TYPE_P(i32* %224)
  %226 = load i64, i64* @IS_STRING, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %223, %217
  store i32* null, i32** %3, align 8
  br label %262

229:                                              ; preds = %223
  %230 = load i32*, i32** %4, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = call i32* @yaf_route_simple_instance(i32* %230, i32* %231, i32* %232, i32* %233)
  store i32* %234, i32** %12, align 8
  br label %257

235:                                              ; preds = %188
  %236 = load i32*, i32** %11, align 8
  %237 = call i32* @Z_STR_P(i32* %236)
  %238 = call i64 @zend_string_equals_literal_ci(i32* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %235
  %241 = load i32*, i32** %5, align 8
  %242 = call i32 @Z_ARRVAL_P(i32* %241)
  %243 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %244 = call i32* @zend_hash_str_find(i32 %242, i32 %243)
  store i32* %244, i32** %6, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %240
  %247 = load i32*, i32** %6, align 8
  %248 = call i64 @Z_TYPE_P(i32* %247)
  %249 = load i64, i64* @IS_STRING, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %246, %240
  store i32* null, i32** %3, align 8
  br label %262

252:                                              ; preds = %246
  %253 = load i32*, i32** %4, align 8
  %254 = load i32*, i32** %6, align 8
  %255 = call i32* @yaf_route_supervar_instance(i32* %253, i32* %254)
  store i32* %255, i32** %12, align 8
  br label %256

256:                                              ; preds = %252, %235
  br label %257

257:                                              ; preds = %256, %229
  br label %258

258:                                              ; preds = %257, %183
  br label %259

259:                                              ; preds = %258, %147
  br label %260

260:                                              ; preds = %259, %76
  %261 = load i32*, i32** %12, align 8
  store i32* %261, i32** %3, align 8
  br label %262

262:                                              ; preds = %260, %251, %228, %216, %204, %110, %98, %63, %51, %34, %22
  %263 = load i32*, i32** %3, align 8
  ret i32* %263
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_hash_str_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

declare dso_local i64 @zend_string_equals_literal_ci(i32*, i8*) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32* @yaf_route_rewrite_instance(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @yaf_route_regex_instance(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zend_is_true(i32*) #1

declare dso_local i32* @yaf_route_map_instance(i32*, i32, i32*) #1

declare dso_local i32* @yaf_route_simple_instance(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @yaf_route_supervar_instance(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
