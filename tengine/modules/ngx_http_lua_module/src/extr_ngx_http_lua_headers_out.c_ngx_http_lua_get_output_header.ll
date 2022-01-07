; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_out.c_ngx_http_lua_get_output_header.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_out.c_ngx_http_lua_get_output_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_16__, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_14__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"looking for response header \22%.*s\22\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"not a built-in output header\00", align 1
@ngx_http_lua_location_hash = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_get_output_header(i32* %0, %struct.TYPE_15__* %1, i32* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  switch i64 %24, label %79 [
    i64 14, label %25
    i64 12, label %51
  ]

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ngx_strncasecmp(i32 %40, i32* bitcast ([15 x i8]* @.str.1 to i32*), i32 14)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @lua_pushinteger(i32* %44, i32 %48)
  store i32 1, i32* %5, align 4
  br label %255

50:                                               ; preds = %37, %31, %25
  br label %80

51:                                               ; preds = %4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ngx_strncasecmp(i32 %54, i32* bitcast ([13 x i8]* @.str.2 to i32*), i32 12)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @lua_pushlstring(i32* %65, i8* %71, i32 %76)
  store i32 1, i32* %5, align 4
  br label %255

78:                                               ; preds = %57, %51
  br label %80

79:                                               ; preds = %4
  br label %80

80:                                               ; preds = %79, %78, %50
  %81 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %121

87:                                               ; preds = %80
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %87
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 47
  br i1 %107, label %108, label %121

108:                                              ; preds = %96
  %109 = load i32, i32* @ngx_http_lua_location_hash, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  store i32 %109, i32* %114, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = call i32 @ngx_str_set(i32* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %108, %96, %87, %80
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %11, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %10, align 8
  store i64 0, i64* %12, align 8
  br label %129

129:                                              ; preds = %245, %121
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp uge i64 %130, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = icmp eq %struct.TYPE_14__* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %248

141:                                              ; preds = %135
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %11, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %10, align 8
  store i64 0, i64* %12, align 8
  br label %148

148:                                              ; preds = %141, %129
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %245

156:                                              ; preds = %148
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %244

163:                                              ; preds = %156
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  br i1 %173, label %174, label %244

174:                                              ; preds = %163
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %185 = load i64, i64* %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i64 @ngx_strncasecmp(i32 %177, i32* %183, i32 %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %244

193:                                              ; preds = %174
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %212, label %196

196:                                              ; preds = %193
  store i32 1, i32* %13, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %199 = load i64, i64* %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i8*
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %206 = load i64, i64* %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @lua_pushlstring(i32* %197, i8* %204, i32 %210)
  br label %245

212:                                              ; preds = %193
  %213 = load i32, i32* %13, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @lua_createtable(i32* %216, i32 4, i32 0)
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @lua_insert(i32* %218, i32 -2)
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @lua_rawseti(i32* %220, i32 -2, i32 %221)
  br label %223

223:                                              ; preds = %215, %212
  %224 = load i32, i32* %13, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %13, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %228 = load i64, i64* %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %235 = load i64, i64* %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @lua_pushlstring(i32* %226, i8* %233, i32 %239)
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* %13, align 4
  %243 = call i32 @lua_rawseti(i32* %241, i32 -2, i32 %242)
  br label %244

244:                                              ; preds = %223, %174, %163, %156
  br label %245

245:                                              ; preds = %244, %196, %155
  %246 = load i64, i64* %12, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %12, align 8
  br label %129

248:                                              ; preds = %140
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 1, i32* %5, align 4
  br label %255

252:                                              ; preds = %248
  %253 = load i32*, i32** %6, align 8
  %254 = call i32 @lua_pushnil(i32* %253)
  store i32 1, i32* %5, align 4
  br label %255

255:                                              ; preds = %252, %251, %64, %43
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
