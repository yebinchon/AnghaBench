; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_set_prop_nvlist.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_set_prop_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZPROP_SRC_INHERITED = common dso_local global i64 0, align 8
@DATA_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8
@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@DATA_TYPE_UINT64_ARRAY = common dso_local global i64 0, align 8
@DATA_TYPE_UINT64 = common dso_local global i64 0, align 8
@CE_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown property type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_set_prop_nvlist(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %24 = call i32* (...) @fnvlist_alloc()
  store i32* %24, i32** %14, align 8
  %25 = call i32* (...) @fnvlist_alloc()
  store i32* %25, i32** %15, align 8
  br label %26

26:                                               ; preds = %220, %4
  store i32* null, i32** %9, align 8
  br label %27

27:                                               ; preds = %211, %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @nvlist_next_nvpair(i32* %28, i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %212

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  %34 = call i8* @nvpair_name(i32* %33)
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = call i64 @zfs_name_to_prop(i8* %35)
  store i64 %36, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %37 = load i32*, i32** %9, align 8
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @nvpair_type(i32* %38)
  %40 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @fnvpair_value_nvlist(i32* %43)
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = load i32, i32* @ZPROP_VALUE, align 4
  %47 = call i64 @nvlist_lookup_nvpair(i32* %45, i32 %46, i32** %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = call i64 @nvpair_type(i32* %61)
  %63 = load i64, i64* @DATA_TYPE_BOOLEAN, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = call i32 @SET_ERROR(i32 %66)
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %157

69:                                               ; preds = %56, %53
  %70 = load i32, i32* %18, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %69
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* @ZPROP_INVAL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load i8*, i8** %16, align 8
  %78 = call i64 @zfs_prop_user(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32*, i32** %10, align 8
  %82 = call i64 @nvpair_type(i32* %81)
  %83 = load i64, i64* @DATA_TYPE_STRING, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32 @SET_ERROR(i32 %86)
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %85, %80
  br label %106

89:                                               ; preds = %76
  %90 = load i8*, i8** %16, align 8
  %91 = call i64 @zfs_prop_userquota(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32*, i32** %10, align 8
  %95 = call i64 @nvpair_type(i32* %94)
  %96 = load i64, i64* @DATA_TYPE_UINT64_ARRAY, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EINVAL, align 4
  %100 = call i32 @SET_ERROR(i32 %99)
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %98, %93
  br label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @SET_ERROR(i32 %103)
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %102, %101
  br label %106

106:                                              ; preds = %105, %88
  br label %156

107:                                              ; preds = %72, %69
  %108 = load i32, i32* %18, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  %111 = load i32*, i32** %10, align 8
  %112 = call i64 @nvpair_type(i32* %111)
  %113 = load i64, i64* @DATA_TYPE_STRING, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i64, i64* %17, align 8
  %117 = call i32 @zfs_prop_get_type(i64 %116)
  %118 = icmp ne i32 %117, 128
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @EINVAL, align 4
  %121 = call i32 @SET_ERROR(i32 %120)
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %119, %115
  br label %154

123:                                              ; preds = %110
  %124 = load i32*, i32** %10, align 8
  %125 = call i64 @nvpair_type(i32* %124)
  %126 = load i64, i64* @DATA_TYPE_UINT64, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %123
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @fnvpair_value_uint64(i32* %129)
  store i32 %130, i32* %12, align 4
  %131 = load i64, i64* %17, align 8
  %132 = call i32 @zfs_prop_get_type(i64 %131)
  switch i32 %132, label %146 [
    i32 129, label %133
    i32 128, label %134
    i32 130, label %137
  ]

133:                                              ; preds = %128
  br label %149

134:                                              ; preds = %128
  %135 = load i32, i32* @EINVAL, align 4
  %136 = call i32 @SET_ERROR(i32 %135)
  store i32 %136, i32* %18, align 4
  br label %149

137:                                              ; preds = %128
  %138 = load i64, i64* %17, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @zfs_prop_index_to_string(i64 %138, i32 %139, i8** %20)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @EINVAL, align 4
  %144 = call i32 @SET_ERROR(i32 %143)
  store i32 %144, i32* %18, align 4
  br label %145

145:                                              ; preds = %142, %137
  br label %149

146:                                              ; preds = %128
  %147 = load i32, i32* @CE_PANIC, align 4
  %148 = call i32 @cmn_err(i32 %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %145, %134, %133
  br label %153

150:                                              ; preds = %123
  %151 = load i32, i32* @EINVAL, align 4
  %152 = call i32 @SET_ERROR(i32 %151)
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %150, %149
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %107
  br label %156

156:                                              ; preds = %155, %106
  br label %157

157:                                              ; preds = %156, %68
  %158 = load i32, i32* %18, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** %5, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 (...) @CRED()
  %164 = call i32 @zfs_check_settable(i8* %161, i32* %162, i32 %163)
  store i32 %164, i32* %18, align 4
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32, i32* %18, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %165
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 -1, i32* %18, align 4
  br label %178

173:                                              ; preds = %168
  %174 = load i8*, i8** %5, align 8
  %175 = load i64, i64* %6, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @zfs_prop_set_special(i8* %174, i64 %175, i32* %176)
  store i32 %177, i32* %18, align 4
  br label %178

178:                                              ; preds = %173, %172
  %179 = load i32, i32* %18, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32*, i32** %14, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @nvlist_add_nvpair(i32* %182, i32* %183)
  store i32 %184, i32* %18, align 4
  br label %197

185:                                              ; preds = %178
  %186 = load i32, i32* %18, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load i32*, i32** %7, align 8
  %190 = load i32*, i32** %15, align 8
  %191 = icmp ne i32* %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32*, i32** %15, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 @nvlist_add_nvpair(i32* %193, i32* %194)
  store i32 %195, i32* %18, align 4
  br label %196

196:                                              ; preds = %192, %188, %185
  br label %197

197:                                              ; preds = %196, %181
  br label %198

198:                                              ; preds = %197, %165
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i32*, i32** %8, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32*, i32** %8, align 8
  %206 = load i8*, i8** %16, align 8
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @fnvlist_add_int32(i32* %205, i8* %206, i32 %207)
  br label %209

209:                                              ; preds = %204, %201
  %210 = load i32, i32* %18, align 4
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %209, %198
  br label %27

212:                                              ; preds = %27
  %213 = load i32*, i32** %7, align 8
  %214 = load i32*, i32** %15, align 8
  %215 = icmp ne i32* %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load i32*, i32** %15, align 8
  %218 = call i32 @nvlist_empty(i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = load i32*, i32** %15, align 8
  store i32* %221, i32** %7, align 8
  br label %26

222:                                              ; preds = %216, %212
  %223 = load i32*, i32** %14, align 8
  %224 = call i32 @nvlist_empty(i32* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %299, label %226

226:                                              ; preds = %222
  %227 = load i8*, i8** %5, align 8
  %228 = load i64, i64* %6, align 8
  %229 = load i32*, i32** %14, align 8
  %230 = call i64 @dsl_props_set(i8* %227, i64 %228, i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %299

232:                                              ; preds = %226
  store i32* null, i32** %9, align 8
  br label %233

233:                                              ; preds = %297, %232
  %234 = load i32*, i32** %14, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = call i32* @nvlist_next_nvpair(i32* %234, i32* %235)
  store i32* %236, i32** %9, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %298

238:                                              ; preds = %233
  %239 = load i32*, i32** %9, align 8
  %240 = call i8* @nvpair_name(i32* %239)
  store i8* %240, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %241 = load i32*, i32** %9, align 8
  store i32* %241, i32** %10, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = call i64 @nvpair_type(i32* %242)
  %244 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %238
  %247 = load i32*, i32** %9, align 8
  %248 = call i32* @fnvpair_value_nvlist(i32* %247)
  store i32* %248, i32** %23, align 8
  %249 = load i32*, i32** %23, align 8
  %250 = load i32, i32* @ZPROP_VALUE, align 4
  %251 = call i32* @fnvlist_lookup_nvpair(i32* %249, i32 %250)
  store i32* %251, i32** %10, align 8
  br label %252

252:                                              ; preds = %246, %238
  %253 = load i32*, i32** %10, align 8
  %254 = call i64 @nvpair_type(i32* %253)
  %255 = load i64, i64* @DATA_TYPE_STRING, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = load i32*, i32** %10, align 8
  %259 = call i8* @fnvpair_value_string(i32* %258)
  store i8* %259, i8** %13, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = load i8*, i8** %21, align 8
  %262 = load i64, i64* %6, align 8
  %263 = load i8*, i8** %13, align 8
  %264 = call i32 @dsl_prop_set_string(i8* %260, i8* %261, i64 %262, i8* %263)
  store i32 %264, i32* %22, align 4
  br label %284

265:                                              ; preds = %252
  %266 = load i32*, i32** %10, align 8
  %267 = call i64 @nvpair_type(i32* %266)
  %268 = load i64, i64* @DATA_TYPE_BOOLEAN, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i8*, i8** %5, align 8
  %272 = load i8*, i8** %21, align 8
  %273 = load i64, i64* %6, align 8
  %274 = call i32 @dsl_prop_inherit(i8* %271, i8* %272, i64 %273)
  store i32 %274, i32* %22, align 4
  br label %283

275:                                              ; preds = %265
  %276 = load i32*, i32** %10, align 8
  %277 = call i32 @fnvpair_value_uint64(i32* %276)
  store i32 %277, i32* %12, align 4
  %278 = load i8*, i8** %5, align 8
  %279 = load i8*, i8** %21, align 8
  %280 = load i64, i64* %6, align 8
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @dsl_prop_set_int(i8* %278, i8* %279, i64 %280, i32 %281)
  store i32 %282, i32* %22, align 4
  br label %283

283:                                              ; preds = %275, %270
  br label %284

284:                                              ; preds = %283, %257
  %285 = load i32, i32* %22, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %284
  %288 = load i32*, i32** %8, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load i32*, i32** %8, align 8
  %292 = load i8*, i8** %21, align 8
  %293 = load i32, i32* %22, align 4
  %294 = call i32 @fnvlist_add_int32(i32* %291, i8* %292, i32 %293)
  br label %295

295:                                              ; preds = %290, %287
  %296 = load i32, i32* %22, align 4
  store i32 %296, i32* %11, align 4
  br label %297

297:                                              ; preds = %295, %284
  br label %233

298:                                              ; preds = %233
  br label %299

299:                                              ; preds = %298, %226, %222
  %300 = load i32*, i32** %14, align 8
  %301 = call i32 @nvlist_free(i32* %300)
  %302 = load i32*, i32** %15, align 8
  %303 = call i32 @nvlist_free(i32* %302)
  %304 = load i32, i32* %11, align 4
  ret i32 %304
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @zfs_prop_get_type(i64) #1

declare dso_local i32 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @zfs_prop_index_to_string(i64, i32, i8**) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

declare dso_local i32 @zfs_check_settable(i8*, i32*, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @zfs_prop_set_special(i8*, i64, i32*) #1

declare dso_local i32 @nvlist_add_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i64 @dsl_props_set(i8*, i64, i32*) #1

declare dso_local i32* @fnvlist_lookup_nvpair(i32*, i32) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i32 @dsl_prop_set_string(i8*, i8*, i64, i8*) #1

declare dso_local i32 @dsl_prop_inherit(i8*, i8*, i64) #1

declare dso_local i32 @dsl_prop_set_int(i8*, i8*, i64, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
