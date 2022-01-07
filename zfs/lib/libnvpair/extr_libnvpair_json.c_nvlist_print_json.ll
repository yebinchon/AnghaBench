; ModuleID = '/home/carl/AnghaBench/zfs/lib/libnvpair/extr_libnvpair_json.c_nvlist_print_json.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libnvpair/extr_libnvpair_json.c_nvlist_print_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%hhu\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvlist_print_json(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64*, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %48 = load i64, i64* @B_TRUE, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @nvlist_next_nvpair(i32* %51, i32* null)
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %525, %2
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %529

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @nvpair_type(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @B_FALSE, align 8
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i8* @nvpair_name(i32* %68)
  %70 = call i32 @nvlist_print_json_string(i32* %67, i8* %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %532

73:                                               ; preds = %66
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %524 [
    i32 138, label %77
    i32 156, label %86
    i32 154, label %89
    i32 153, label %98
    i32 142, label %103
    i32 130, label %108
    i32 148, label %113
    i32 136, label %118
    i32 146, label %123
    i32 134, label %128
    i32 144, label %133
    i32 132, label %138
    i32 149, label %143
    i32 150, label %150
    i32 140, label %157
    i32 137, label %165
    i32 139, label %197
    i32 155, label %229
    i32 152, label %262
    i32 129, label %291
    i32 141, label %320
    i32 135, label %349
    i32 147, label %378
    i32 133, label %407
    i32 145, label %436
    i32 131, label %465
    i32 143, label %494
    i32 128, label %523
    i32 151, label %523
  ]

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = call i8* @fnvpair_value_string(i32* %78)
  store i8* %79, i8** %9, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @nvlist_print_json_string(i32* %80, i8* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %532

85:                                               ; preds = %77
  br label %524

86:                                               ; preds = %73
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %524

89:                                               ; preds = %73
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @fnvpair_value_boolean_value(i32* %91)
  %93 = load i64, i64* @B_TRUE, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %97 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %524

98:                                               ; preds = %73
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @fnvpair_value_byte(i32* %100)
  %102 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %524

103:                                              ; preds = %73
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @fnvpair_value_int8(i32* %105)
  %107 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %524

108:                                              ; preds = %73
  %109 = load i32*, i32** %4, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @fnvpair_value_uint8(i32* %110)
  %112 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %524

113:                                              ; preds = %73
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @fnvpair_value_int16(i32* %115)
  %117 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  br label %524

118:                                              ; preds = %73
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @fnvpair_value_uint16(i32* %120)
  %122 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %121)
  br label %524

123:                                              ; preds = %73
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @fnvpair_value_int32(i32* %125)
  %127 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  br label %524

128:                                              ; preds = %73
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @fnvpair_value_uint32(i32* %130)
  %132 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %131)
  br label %524

133:                                              ; preds = %73
  %134 = load i32*, i32** %4, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i64 @fnvpair_value_int64(i32* %135)
  %137 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %136)
  br label %524

138:                                              ; preds = %73
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i64 @fnvpair_value_uint64(i32* %140)
  %142 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 %141)
  br label %524

143:                                              ; preds = %73
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @nvpair_value_hrtime(i32* %144, i64* %10)
  %146 = call i32 @VERIFY0(i32 %145)
  %147 = load i32*, i32** %4, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 %148)
  br label %524

150:                                              ; preds = %73
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @nvpair_value_double(i32* %151, double* %11)
  %153 = call i32 @VERIFY0(i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = load double, double* %11, align 8
  %156 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), double %155)
  br label %524

157:                                              ; preds = %73
  %158 = load i32*, i32** %4, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = call i32* @fnvpair_value_nvlist(i32* %159)
  %161 = call i32 @nvlist_print_json(i32* %158, i32* %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 -1, i32* %3, align 4
  br label %532

164:                                              ; preds = %157
  br label %524

165:                                              ; preds = %73
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @nvpair_value_string_array(i32* %166, i8*** %12, i64* %13)
  %168 = call i32 @VERIFY0(i32 %167)
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %14, align 8
  br label %171

171:                                              ; preds = %191, %165
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %13, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %171
  %176 = load i64, i64* %14, align 8
  %177 = icmp ugt i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32*, i32** %4, align 8
  %183 = load i8**, i8*** %12, align 8
  %184 = load i64, i64* %14, align 8
  %185 = getelementptr inbounds i8*, i8** %183, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @nvlist_print_json_string(i32* %182, i8* %186)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  store i32 -1, i32* %3, align 4
  br label %532

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %14, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %14, align 8
  br label %171

194:                                              ; preds = %171
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

197:                                              ; preds = %73
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @nvpair_value_nvlist_array(i32* %198, i32*** %15, i64* %16)
  %200 = call i32 @VERIFY0(i32 %199)
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %17, align 8
  br label %203

203:                                              ; preds = %223, %197
  %204 = load i64, i64* %17, align 8
  %205 = load i64, i64* %16, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = load i64, i64* %17, align 8
  %209 = icmp ugt i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32*, i32** %4, align 8
  %215 = load i32**, i32*** %15, align 8
  %216 = load i64, i64* %17, align 8
  %217 = getelementptr inbounds i32*, i32** %215, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @nvlist_print_json(i32* %214, i32* %218)
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store i32 -1, i32* %3, align 4
  br label %532

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %17, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %17, align 8
  br label %203

226:                                              ; preds = %203
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

229:                                              ; preds = %73
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @nvpair_value_boolean_array(i32* %230, i64** %18, i64* %19)
  %232 = call i32 @VERIFY0(i32 %231)
  %233 = load i32*, i32** %4, align 8
  %234 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %20, align 8
  br label %235

235:                                              ; preds = %256, %229
  %236 = load i64, i64* %20, align 8
  %237 = load i64, i64* %19, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %259

239:                                              ; preds = %235
  %240 = load i64, i64* %20, align 8
  %241 = icmp ugt i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32*, i32** %4, align 8
  %244 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i32*, i32** %4, align 8
  %247 = load i64*, i64** %18, align 8
  %248 = load i64, i64* %20, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @B_TRUE, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %255 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %246, i8* %254)
  br label %256

256:                                              ; preds = %245
  %257 = load i64, i64* %20, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %20, align 8
  br label %235

259:                                              ; preds = %235
  %260 = load i32*, i32** %4, align 8
  %261 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

262:                                              ; preds = %73
  %263 = load i32*, i32** %6, align 8
  %264 = call i32 @nvpair_value_byte_array(i32* %263, i32** %21, i64* %22)
  %265 = call i32 @VERIFY0(i32 %264)
  %266 = load i32*, i32** %4, align 8
  %267 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %23, align 8
  br label %268

268:                                              ; preds = %285, %262
  %269 = load i64, i64* %23, align 8
  %270 = load i64, i64* %22, align 8
  %271 = icmp ult i64 %269, %270
  br i1 %271, label %272, label %288

272:                                              ; preds = %268
  %273 = load i64, i64* %23, align 8
  %274 = icmp ugt i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32*, i32** %4, align 8
  %280 = load i32*, i32** %21, align 8
  %281 = load i64, i64* %23, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %278
  %286 = load i64, i64* %23, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %23, align 8
  br label %268

288:                                              ; preds = %268
  %289 = load i32*, i32** %4, align 8
  %290 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

291:                                              ; preds = %73
  %292 = load i32*, i32** %6, align 8
  %293 = call i32 @nvpair_value_uint8_array(i32* %292, i32** %24, i64* %25)
  %294 = call i32 @VERIFY0(i32 %293)
  %295 = load i32*, i32** %4, align 8
  %296 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %26, align 8
  br label %297

297:                                              ; preds = %314, %291
  %298 = load i64, i64* %26, align 8
  %299 = load i64, i64* %25, align 8
  %300 = icmp ult i64 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %297
  %302 = load i64, i64* %26, align 8
  %303 = icmp ugt i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32*, i32** %4, align 8
  %306 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i32*, i32** %4, align 8
  %309 = load i32*, i32** %24, align 8
  %310 = load i64, i64* %26, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %307
  %315 = load i64, i64* %26, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %26, align 8
  br label %297

317:                                              ; preds = %297
  %318 = load i32*, i32** %4, align 8
  %319 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

320:                                              ; preds = %73
  %321 = load i32*, i32** %6, align 8
  %322 = call i32 @nvpair_value_int8_array(i32* %321, i32** %27, i64* %28)
  %323 = call i32 @VERIFY0(i32 %322)
  %324 = load i32*, i32** %4, align 8
  %325 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %29, align 8
  br label %326

326:                                              ; preds = %343, %320
  %327 = load i64, i64* %29, align 8
  %328 = load i64, i64* %28, align 8
  %329 = icmp ult i64 %327, %328
  br i1 %329, label %330, label %346

330:                                              ; preds = %326
  %331 = load i64, i64* %29, align 8
  %332 = icmp ugt i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i32*, i32** %4, align 8
  %335 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %336

336:                                              ; preds = %333, %330
  %337 = load i32*, i32** %4, align 8
  %338 = load i32*, i32** %27, align 8
  %339 = load i64, i64* %29, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %336
  %344 = load i64, i64* %29, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %29, align 8
  br label %326

346:                                              ; preds = %326
  %347 = load i32*, i32** %4, align 8
  %348 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %347, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

349:                                              ; preds = %73
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @nvpair_value_uint16_array(i32* %350, i32** %30, i64* %31)
  %352 = call i32 @VERIFY0(i32 %351)
  %353 = load i32*, i32** %4, align 8
  %354 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %353, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %32, align 8
  br label %355

355:                                              ; preds = %372, %349
  %356 = load i64, i64* %32, align 8
  %357 = load i64, i64* %31, align 8
  %358 = icmp ult i64 %356, %357
  br i1 %358, label %359, label %375

359:                                              ; preds = %355
  %360 = load i64, i64* %32, align 8
  %361 = icmp ugt i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i32*, i32** %4, align 8
  %364 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %365

365:                                              ; preds = %362, %359
  %366 = load i32*, i32** %4, align 8
  %367 = load i32*, i32** %30, align 8
  %368 = load i64, i64* %32, align 8
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %366, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %370)
  br label %372

372:                                              ; preds = %365
  %373 = load i64, i64* %32, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %32, align 8
  br label %355

375:                                              ; preds = %355
  %376 = load i32*, i32** %4, align 8
  %377 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %376, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

378:                                              ; preds = %73
  %379 = load i32*, i32** %6, align 8
  %380 = call i32 @nvpair_value_int16_array(i32* %379, i32** %33, i64* %34)
  %381 = call i32 @VERIFY0(i32 %380)
  %382 = load i32*, i32** %4, align 8
  %383 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %382, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %35, align 8
  br label %384

384:                                              ; preds = %401, %378
  %385 = load i64, i64* %35, align 8
  %386 = load i64, i64* %34, align 8
  %387 = icmp ult i64 %385, %386
  br i1 %387, label %388, label %404

388:                                              ; preds = %384
  %389 = load i64, i64* %35, align 8
  %390 = icmp ugt i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i32*, i32** %4, align 8
  %393 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %392, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %394

394:                                              ; preds = %391, %388
  %395 = load i32*, i32** %4, align 8
  %396 = load i32*, i32** %33, align 8
  %397 = load i64, i64* %35, align 8
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %395, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %399)
  br label %401

401:                                              ; preds = %394
  %402 = load i64, i64* %35, align 8
  %403 = add i64 %402, 1
  store i64 %403, i64* %35, align 8
  br label %384

404:                                              ; preds = %384
  %405 = load i32*, i32** %4, align 8
  %406 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

407:                                              ; preds = %73
  %408 = load i32*, i32** %6, align 8
  %409 = call i32 @nvpair_value_uint32_array(i32* %408, i32** %36, i64* %37)
  %410 = call i32 @VERIFY0(i32 %409)
  %411 = load i32*, i32** %4, align 8
  %412 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %411, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %38, align 8
  br label %413

413:                                              ; preds = %430, %407
  %414 = load i64, i64* %38, align 8
  %415 = load i64, i64* %37, align 8
  %416 = icmp ult i64 %414, %415
  br i1 %416, label %417, label %433

417:                                              ; preds = %413
  %418 = load i64, i64* %38, align 8
  %419 = icmp ugt i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load i32*, i32** %4, align 8
  %422 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %423

423:                                              ; preds = %420, %417
  %424 = load i32*, i32** %4, align 8
  %425 = load i32*, i32** %36, align 8
  %426 = load i64, i64* %38, align 8
  %427 = getelementptr inbounds i32, i32* %425, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %424, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %423
  %431 = load i64, i64* %38, align 8
  %432 = add i64 %431, 1
  store i64 %432, i64* %38, align 8
  br label %413

433:                                              ; preds = %413
  %434 = load i32*, i32** %4, align 8
  %435 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %434, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

436:                                              ; preds = %73
  %437 = load i32*, i32** %6, align 8
  %438 = call i32 @nvpair_value_int32_array(i32* %437, i32** %39, i64* %40)
  %439 = call i32 @VERIFY0(i32 %438)
  %440 = load i32*, i32** %4, align 8
  %441 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %440, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %41, align 8
  br label %442

442:                                              ; preds = %459, %436
  %443 = load i64, i64* %41, align 8
  %444 = load i64, i64* %40, align 8
  %445 = icmp ult i64 %443, %444
  br i1 %445, label %446, label %462

446:                                              ; preds = %442
  %447 = load i64, i64* %41, align 8
  %448 = icmp ugt i64 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = load i32*, i32** %4, align 8
  %451 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %450, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %452

452:                                              ; preds = %449, %446
  %453 = load i32*, i32** %4, align 8
  %454 = load i32*, i32** %39, align 8
  %455 = load i64, i64* %41, align 8
  %456 = getelementptr inbounds i32, i32* %454, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %453, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %457)
  br label %459

459:                                              ; preds = %452
  %460 = load i64, i64* %41, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %41, align 8
  br label %442

462:                                              ; preds = %442
  %463 = load i32*, i32** %4, align 8
  %464 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %463, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

465:                                              ; preds = %73
  %466 = load i32*, i32** %6, align 8
  %467 = call i32 @nvpair_value_uint64_array(i32* %466, i64** %42, i64* %43)
  %468 = call i32 @VERIFY0(i32 %467)
  %469 = load i32*, i32** %4, align 8
  %470 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %469, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %44, align 8
  br label %471

471:                                              ; preds = %488, %465
  %472 = load i64, i64* %44, align 8
  %473 = load i64, i64* %43, align 8
  %474 = icmp ult i64 %472, %473
  br i1 %474, label %475, label %491

475:                                              ; preds = %471
  %476 = load i64, i64* %44, align 8
  %477 = icmp ugt i64 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = load i32*, i32** %4, align 8
  %480 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %479, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %481

481:                                              ; preds = %478, %475
  %482 = load i32*, i32** %4, align 8
  %483 = load i64*, i64** %42, align 8
  %484 = load i64, i64* %44, align 8
  %485 = getelementptr inbounds i64, i64* %483, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %482, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 %486)
  br label %488

488:                                              ; preds = %481
  %489 = load i64, i64* %44, align 8
  %490 = add i64 %489, 1
  store i64 %490, i64* %44, align 8
  br label %471

491:                                              ; preds = %471
  %492 = load i32*, i32** %4, align 8
  %493 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

494:                                              ; preds = %73
  %495 = load i32*, i32** %6, align 8
  %496 = call i32 @nvpair_value_int64_array(i32* %495, i64** %45, i64* %46)
  %497 = call i32 @VERIFY0(i32 %496)
  %498 = load i32*, i32** %4, align 8
  %499 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %498, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %47, align 8
  br label %500

500:                                              ; preds = %517, %494
  %501 = load i64, i64* %47, align 8
  %502 = load i64, i64* %46, align 8
  %503 = icmp ult i64 %501, %502
  br i1 %503, label %504, label %520

504:                                              ; preds = %500
  %505 = load i64, i64* %47, align 8
  %506 = icmp ugt i64 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %504
  %508 = load i32*, i32** %4, align 8
  %509 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %508, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %510

510:                                              ; preds = %507, %504
  %511 = load i32*, i32** %4, align 8
  %512 = load i64*, i64** %45, align 8
  %513 = load i64, i64* %47, align 8
  %514 = getelementptr inbounds i64, i64* %512, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %511, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %515)
  br label %517

517:                                              ; preds = %510
  %518 = load i64, i64* %47, align 8
  %519 = add i64 %518, 1
  store i64 %519, i64* %47, align 8
  br label %500

520:                                              ; preds = %500
  %521 = load i32*, i32** %4, align 8
  %522 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %524

523:                                              ; preds = %73, %73
  store i32 -1, i32* %3, align 4
  br label %532

524:                                              ; preds = %73, %520, %491, %462, %433, %404, %375, %346, %317, %288, %259, %226, %194, %164, %150, %143, %138, %133, %128, %123, %118, %113, %108, %103, %98, %89, %86, %85
  br label %525

525:                                              ; preds = %524
  %526 = load i32*, i32** %5, align 8
  %527 = load i32*, i32** %6, align 8
  %528 = call i32* @nvlist_next_nvpair(i32* %526, i32* %527)
  store i32* %528, i32** %6, align 8
  br label %53

529:                                              ; preds = %53
  %530 = load i32*, i32** %4, align 8
  %531 = call i32 (i32*, i8*, ...) @FPRINTF(i32* %530, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %532

532:                                              ; preds = %529, %523, %221, %189, %163, %84, %72
  %533 = load i32, i32* %3, align 4
  ret i32 %533
}

declare dso_local i32 @FPRINTF(i32*, i8*, ...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @nvlist_print_json_string(i32*, i8*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i64 @fnvpair_value_boolean_value(i32*) #1

declare dso_local i32 @fnvpair_value_byte(i32*) #1

declare dso_local i32 @fnvpair_value_int8(i32*) #1

declare dso_local i32 @fnvpair_value_uint8(i32*) #1

declare dso_local i32 @fnvpair_value_int16(i32*) #1

declare dso_local i32 @fnvpair_value_uint16(i32*) #1

declare dso_local i32 @fnvpair_value_int32(i32*) #1

declare dso_local i32 @fnvpair_value_uint32(i32*) #1

declare dso_local i64 @fnvpair_value_int64(i32*) #1

declare dso_local i64 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvpair_value_hrtime(i32*, i64*) #1

declare dso_local i32 @nvpair_value_double(i32*, double*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i32 @nvpair_value_string_array(i32*, i8***, i64*) #1

declare dso_local i32 @nvpair_value_nvlist_array(i32*, i32***, i64*) #1

declare dso_local i32 @nvpair_value_boolean_array(i32*, i64**, i64*) #1

declare dso_local i32 @nvpair_value_byte_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_uint8_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_int8_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_uint16_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_int16_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_uint32_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_int32_array(i32*, i32**, i64*) #1

declare dso_local i32 @nvpair_value_uint64_array(i32*, i64**, i64*) #1

declare dso_local i32 @nvpair_value_int64_array(i32*, i64**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
