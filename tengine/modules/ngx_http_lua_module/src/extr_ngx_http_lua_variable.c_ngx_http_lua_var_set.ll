; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_variable.c_ngx_http_lua_var_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_variable.c_ngx_http_lua_var_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bad variable name\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"string, number, or nil expected, but got %s\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"variable \22%s\22 not changeable\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"set variables with set_handler\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@NGX_HTTP_VAR_INDEXED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"set indexed variable\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"variable \22%s\22 cannot be assigned a value\00", align 1
@.str.9 = private unnamed_addr constant [165 x i8] c"variable \22%s\22 not found for writing; maybe it is a built-in variable that is not changeable or you forgot to use \22set $%s '';\22 in the config file to define it first\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_var_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_var_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_16__* @ngx_http_lua_get_req(i32* %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %13, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @luaL_error(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  br label %216

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %26 = call i32 @ngx_http_lua_check_fake_request(i32* %24, %struct.TYPE_16__* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_type(i32* %27, i32 2)
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (i32*, i8*, ...) @luaL_error(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %216

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @lua_tolstring(i32* %34, i32 2, i64* %10)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  %40 = call i8* @lua_newuserdata(i32* %37, i64 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ngx_hash_strlow(i8* %41, i8* %42, i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_type(i32* %52, i32 3)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  switch i32 %54, label %76 [
    i32 129, label %55
    i32 128, label %55
    i32 130, label %75
  ]

55:                                               ; preds = %33, %33
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @luaL_checklstring(i32* %56, i32 3, i64* %10)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %7, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i8* @ngx_palloc(i32 %61, i32 %63)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @luaL_error(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %69, i32* %2, align 4
  br label %216

70:                                               ; preds = %55
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @ngx_memcpy(i8* %71, i8* %72, i64 %73)
  br label %85

75:                                               ; preds = %33
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %85

76:                                               ; preds = %33
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @lua_typename(i32* %78, i32 %79)
  %81 = call i8* @lua_pushfstring(i32* %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  store i8* %81, i8** %15, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @luaL_argerror(i32* %82, i32 1, i8* %83)
  store i32 %84, i32* %2, align 4
  br label %216

85:                                               ; preds = %75, %70
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %87 = load i32, i32* @ngx_http_core_module, align 4
  %88 = call %struct.TYPE_17__* @ngx_http_get_module_main_conf(%struct.TYPE_16__* %86, i32 %87)
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %6, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %12, align 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %struct.TYPE_15__* @ngx_hash_find(i32* %90, i32 %91, i8* %93, i64 %95)
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %4, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = icmp ne %struct.TYPE_15__* %97, null
  br i1 %98, label %99, label %211

99:                                               ; preds = %85
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** %3, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 (i32*, i8*, ...) @luaL_error(i32* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  store i32 %109, i32* %2, align 4
  br label %216

110:                                              ; preds = %99
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)** %112, align 8
  %114 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)* %113, null
  br i1 %114, label %115, label %164

115:                                              ; preds = %110
  %116 = call i32 @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @ngx_palloc(i32 %119, i32 32)
  %121 = bitcast i8* %120 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %5, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = icmp eq %struct.TYPE_14__* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 (i32*, i8*, ...) @luaL_error(i32* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %126, i32* %2, align 4
  br label %216

127:                                              ; preds = %115
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, 130
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  store i8* null, i8** %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  br label %154

141:                                              ; preds = %127
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 4
  store i64 0, i64* %147, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %141, %130
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 3
  %157 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)** %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 %157(%struct.TYPE_16__* %158, %struct.TYPE_14__* %159, i32 %162)
  store i32 0, i32* %2, align 4
  br label %216

164:                                              ; preds = %110
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @NGX_HTTP_VAR_INDEXED, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %207

171:                                              ; preds = %164
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i64 %177
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %5, align 8
  %179 = call i32 @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %180 = load i32, i32* %14, align 4
  %181 = icmp eq i32 %180, 130
  br i1 %181, label %182, label %193

182:                                              ; preds = %171
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  store i8* null, i8** %190, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  br label %206

193:                                              ; preds = %171
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  store i32 0, i32* %197, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 4
  store i64 0, i64* %199, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  store i8* %200, i8** %202, align 8
  %203 = load i64, i64* %10, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %193, %182
  store i32 0, i32* %2, align 4
  br label %216

207:                                              ; preds = %164
  %208 = load i32*, i32** %3, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = call i32 (i32*, i8*, ...) @luaL_error(i32* %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %209)
  store i32 %210, i32* %2, align 4
  br label %216

211:                                              ; preds = %85
  %212 = load i32*, i32** %3, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = call i32 (i32*, i8*, ...) @luaL_error(i32* %212, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.9, i64 0, i64 0), i8* %213, i8* %214)
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %211, %207, %206, %154, %124, %106, %76, %67, %30, %20
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_16__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i8* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @ngx_hash_strlow(i8*, i8*, i64) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_main_conf(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_hash_find(i32*, i32, i8*, i64) #1

declare dso_local i32 @dd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
