; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_variable.c_ngx_http_lua_ffi_var_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_variable.c_ngx_http_lua_ffi_var_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, i64, i32*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64, i32, i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32)* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"API disabled in the current context\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"variable name: %.*s\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"variable not changeable\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"variable \22%*s\22 not changeable\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"set variables with set_handler\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_INDEXED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"set indexed variable\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"variable \22%*s\22 cannot be assigned a value\00", align 1
@.str.8 = private unnamed_addr constant [167 x i8] c"variable \22%*s\22 not found for writing; maybe it is a built-in variable that is not changeable or you forgot to use \22set $%*s '';\22 in the config file to define it first\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_var_set(%struct.TYPE_15__* %0, i32* %1, i64 %2, i32* %3, i32* %4, i64 %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64* %7, i64** %17, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %8
  %26 = load i32*, i32** %16, align 8
  %27 = load i64*, i64** %17, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %26, i64 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %16, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = load i64*, i64** %17, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* @NGX_ERROR, align 4
  store i32 %36, i32* %9, align 4
  br label %279

37:                                               ; preds = %8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load i32*, i32** %16, align 8
  %46 = load i64*, i64** %17, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %45, i64 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %16, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = load i64*, i64** %17, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %9, align 4
  br label %279

56:                                               ; preds = %37
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @ngx_hash_strlow(i32* %57, i32* %58, i64 %59)
  store i32 %60, i32* %19, align 4
  %61 = load i64, i64* %12, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = load i32, i32* @ngx_http_core_module, align 4
  %67 = call %struct.TYPE_16__* @ngx_http_get_module_main_conf(%struct.TYPE_15__* %65, i32 %66)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %22, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %19, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call %struct.TYPE_14__* @ngx_hash_find(i32* %69, i32 %70, i32* %71, i64 %72)
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %20, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %75 = icmp ne %struct.TYPE_14__* %74, null
  br i1 %75, label %76, label %251

76:                                               ; preds = %56
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32*, i32** %16, align 8
  %86 = load i64*, i64** %17, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %85, i64 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %88, i32* %89)
  %91 = load i32*, i32** %16, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = load i64*, i64** %17, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* @NGX_ERROR, align 4
  store i32 %97, i32* %9, align 4
  br label %279

98:                                               ; preds = %76
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32)* %101, null
  br i1 %102, label %103, label %178

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32*, i32** %14, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %130

107:                                              ; preds = %103
  %108 = load i64, i64* %15, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %15, align 8
  %115 = add i64 32, %114
  %116 = call i8* @ngx_palloc(i32 %113, i64 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %21, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %119 = icmp eq %struct.TYPE_13__* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %267

121:                                              ; preds = %110
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %123 = bitcast %struct.TYPE_13__* %122 to i32*
  %124 = getelementptr inbounds i32, i32* %123, i64 32
  store i32* %124, i32** %18, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @ngx_memcpy(i32* %125, i32* %126, i64 %127)
  %129 = load i32*, i32** %18, align 8
  store i32* %129, i32** %14, align 8
  br label %140

130:                                              ; preds = %107, %103
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @ngx_palloc(i32 %133, i64 32)
  %135 = bitcast i8* %134 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %21, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %137 = icmp eq %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %267

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %121
  %141 = load i32*, i32** %14, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 3
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  br label %167

154:                                              ; preds = %140
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 4
  store i64 0, i64* %160, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  store i32* %161, i32** %163, align 8
  %164 = load i64, i64* %15, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %154, %143
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 3
  %170 = load i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32)** %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %170(%struct.TYPE_15__* %171, %struct.TYPE_13__* %172, i32 %175)
  %177 = load i32, i32* @NGX_OK, align 4
  store i32 %177, i32* %9, align 4
  br label %279

178:                                              ; preds = %98
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @NGX_HTTP_VAR_INDEXED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %237

185:                                              ; preds = %178
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 %191
  store %struct.TYPE_13__* %192, %struct.TYPE_13__** %21, align 8
  %193 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %194 = load i32*, i32** %14, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %185
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  store i64 0, i64* %202, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 3
  store i32* null, i32** %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  br label %235

207:                                              ; preds = %185
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i64, i64* %15, align 8
  %212 = call i8* @ngx_palloc(i32 %210, i64 %211)
  %213 = bitcast i8* %212 to i32*
  store i32* %213, i32** %18, align 8
  %214 = load i32*, i32** %18, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %267

217:                                              ; preds = %207
  %218 = load i32*, i32** %18, align 8
  %219 = load i32*, i32** %14, align 8
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @ngx_memcpy(i32* %218, i32* %219, i64 %220)
  %222 = load i32*, i32** %18, align 8
  store i32* %222, i32** %14, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  store i32 0, i32* %226, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 4
  store i64 0, i64* %228, align 8
  %229 = load i32*, i32** %14, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 3
  store i32* %229, i32** %231, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %217, %196
  %236 = load i32, i32* @NGX_OK, align 4
  store i32 %236, i32* %9, align 4
  br label %279

237:                                              ; preds = %178
  %238 = load i32*, i32** %16, align 8
  %239 = load i64*, i64** %17, align 8
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %12, align 8
  %242 = load i32*, i32** %13, align 8
  %243 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %238, i64 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %241, i32* %242)
  %244 = load i32*, i32** %16, align 8
  %245 = ptrtoint i32* %243 to i64
  %246 = ptrtoint i32* %244 to i64
  %247 = sub i64 %245, %246
  %248 = sdiv exact i64 %247, 4
  %249 = load i64*, i64** %17, align 8
  store i64 %248, i64* %249, align 8
  %250 = load i32, i32* @NGX_ERROR, align 4
  store i32 %250, i32* %9, align 4
  br label %279

251:                                              ; preds = %56
  %252 = load i32*, i32** %16, align 8
  %253 = load i64*, i64** %17, align 8
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %12, align 8
  %256 = load i32*, i32** %13, align 8
  %257 = load i64, i64* %12, align 8
  %258 = load i32*, i32** %13, align 8
  %259 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %252, i64 %254, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.8, i64 0, i64 0), i64 %255, i32* %256, i64 %257, i32* %258)
  %260 = load i32*, i32** %16, align 8
  %261 = ptrtoint i32* %259 to i64
  %262 = ptrtoint i32* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sdiv exact i64 %263, 4
  %265 = load i64*, i64** %17, align 8
  store i64 %264, i64* %265, align 8
  %266 = load i32, i32* @NGX_ERROR, align 4
  store i32 %266, i32* %9, align 4
  br label %279

267:                                              ; preds = %216, %138, %120
  %268 = load i32*, i32** %16, align 8
  %269 = load i64*, i64** %17, align 8
  %270 = load i64, i64* %269, align 8
  %271 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %268, i64 %270, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %272 = load i32*, i32** %16, align 8
  %273 = ptrtoint i32* %271 to i64
  %274 = ptrtoint i32* %272 to i64
  %275 = sub i64 %273, %274
  %276 = sdiv exact i64 %275, 4
  %277 = load i64*, i64** %17, align 8
  store i64 %276, i64* %277, align 8
  %278 = load i32, i32* @NGX_ERROR, align 4
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %267, %251, %237, %235, %167, %83, %44, %25
  %280 = load i32, i32* %9, align 4
  ret i32 %280
}

declare dso_local i32* @ngx_snprintf(i32*, i64, i8*, ...) #1

declare dso_local i32 @ngx_hash_strlow(i32*, i32*, i64) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_main_conf(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_hash_find(i32*, i32, i32*, i64) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
