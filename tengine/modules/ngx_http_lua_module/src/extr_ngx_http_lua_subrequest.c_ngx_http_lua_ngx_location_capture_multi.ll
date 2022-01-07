; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_ngx_location_capture_multi.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_ngx_location_capture_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i32, %struct.TYPE_47__*, i32, %struct.TYPE_46__* }
%struct.TYPE_47__ = type { i32, i64 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_52__ = type { %struct.TYPE_53__*, i32 }
%struct.TYPE_53__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_54__* }
%struct.TYPE_54__ = type { i32, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_48__ = type { i64, i32* }
%struct.TYPE_51__ = type { %struct.TYPE_44__*, %struct.TYPE_49__* }
%struct.TYPE_44__ = type { i32* }
%struct.TYPE_49__ = type { i32*, %struct.TYPE_44__* }

@.str = private unnamed_addr constant [42 x i8] c"only one argument is expected, but got %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"at least one subrequest should be specified\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"lua location capture, uri:\22%V\22 c:%ud\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"only array-like tables are allowed\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"queries query: top %d\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"the query argument %d is not a table, but a %s\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"query argument %d expecting one or two arguments\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"queries query uri: %d\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"first arg in first query: %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"queries query uri opts: %d\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"expecting table as the 2nd argument for subrequest %d, but got %s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Bad args option value\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"post process vars top: %d\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Bad vars option value\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"share_all_vars\00", align 1
@NGX_HTTP_LUA_SHARE_ALL_VARS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"Bad share_all_vars option value\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"copy_all_vars\00", align 1
@NGX_HTTP_LUA_COPY_ALL_VARS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"Bad copy_all_vars option value\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"always_forward_body\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"always forward body: %d\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@NGX_HTTP_GET = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"Bad http request method\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Bad ctx option value type %s, expected a Lua table\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"queries query uri opts ctx?: %d\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Bad http request body\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"request body: [%.*s]\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"queries query uri ctx?: %d\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"rc = %d\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"unsafe uri in argument #1: %s\00", align 1
@ngx_http_lua_post_subrequest = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [31 x i8] c"failed to issue subrequest: %d\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"failed to adjust the subrequest: %d\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"queries query uri opts ctx? %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_location_capture_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_location_capture_multi(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_50__*, align 8
  %5 = alloca %struct.TYPE_50__*, align 8
  %6 = alloca %struct.TYPE_52__*, align 8
  %7 = alloca %struct.TYPE_53__*, align 8
  %8 = alloca %struct.TYPE_53__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_48__, align 8
  %11 = alloca %struct.TYPE_48__, align 8
  %12 = alloca %struct.TYPE_48__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_51__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_44__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_54__*, align 8
  %36 = alloca %struct.TYPE_53__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_50__* null, %struct.TYPE_50__** %5, align 8
  store i32 0, i32* %20, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_gettop(i32* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %19, align 4
  %44 = call i32 (i32*, i8*, ...) @luaL_error(i32* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %2, align 4
  br label %745

45:                                               ; preds = %1
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @luaL_checktype(i32* %46, i32 1, i32 128)
  %48 = load i32*, i32** %3, align 8
  %49 = call i8* @lua_objlen(i32* %48, i32 1)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %26, align 4
  %51 = load i32, i32* %26, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 (i32*, i8*, ...) @luaL_error(i32* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %2, align 4
  br label %745

56:                                               ; preds = %45
  %57 = load i32*, i32** %3, align 8
  %58 = call %struct.TYPE_50__* @ngx_http_lua_get_req(i32* %57)
  store %struct.TYPE_50__* %58, %struct.TYPE_50__** %4, align 8
  %59 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %60 = icmp eq %struct.TYPE_50__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 (i32*, i8*, ...) @luaL_error(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %2, align 4
  br label %745

64:                                               ; preds = %56
  %65 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %66 = load i32, i32* @ngx_http_lua_module, align 4
  %67 = call %struct.TYPE_53__* @ngx_http_get_module_ctx(%struct.TYPE_50__* %65, i32 %66)
  store %struct.TYPE_53__* %67, %struct.TYPE_53__** %8, align 8
  %68 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %69 = icmp eq %struct.TYPE_53__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @luaL_error(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %72, i32* %2, align 4
  br label %745

73:                                               ; preds = %64
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %76 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %77 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ngx_http_lua_check_context(i32* %74, %struct.TYPE_53__* %75, i32 %80)
  %82 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %82, i32 0, i32 8
  %84 = load %struct.TYPE_54__*, %struct.TYPE_54__** %83, align 8
  store %struct.TYPE_54__* %84, %struct.TYPE_54__** %35, align 8
  %85 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %86 = icmp eq %struct.TYPE_54__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 (i32*, i8*, ...) @luaL_error(i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %89, i32* %2, align 4
  br label %745

90:                                               ; preds = %73
  %91 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %92 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_46__*, %struct.TYPE_46__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_47__*, %struct.TYPE_47__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ngx_log_debug2(i32 %91, i32 %96, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* %98, i32 %103)
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  store i64 %107, i64* %28, align 8
  %108 = load i32, i32* %26, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  store i64 %110, i64* %29, align 8
  %111 = load i32, i32* %26, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 16
  store i64 %113, i64* %30, align 8
  %114 = load i32, i32* %26, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  store i64 %116, i64* %31, align 8
  %117 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %28, align 8
  %121 = load i64, i64* %29, align 8
  %122 = add i64 %120, %121
  %123 = load i64, i64* %30, align 8
  %124 = add i64 %122, %123
  %125 = load i64, i64* %31, align 8
  %126 = add i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = call i8* @ngx_pcalloc(i32 %119, i32 %127)
  %129 = bitcast i8* %128 to i32*
  store i32* %129, i32** %14, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %90
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 (i32*, i8*, ...) @luaL_error(i32* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %134, i32* %2, align 4
  br label %745

135:                                              ; preds = %90
  %136 = load i32*, i32** %14, align 8
  %137 = bitcast i32* %136 to i8*
  %138 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %139 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 %140
  store i32* %142, i32** %14, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = bitcast i32* %143 to i8*
  %145 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %146 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i64, i64* %29, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 %147
  store i32* %149, i32** %14, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = bitcast i32* %150 to i8*
  %152 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %153 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load i64, i64* %30, align 8
  %155 = load i32*, i32** %14, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %14, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %160 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* %26, align 4
  %162 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %163 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %165 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %9, align 8
  store i32 0, i32* %27, align 4
  br label %166

166:                                              ; preds = %731, %135
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %26, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %734

170:                                              ; preds = %166
  %171 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %172 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = load i32*, i32** %3, align 8
  %176 = load i32, i32* %27, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i32 @lua_rawgeti(i32* %175, i32 1, i32 %177)
  %179 = load i32*, i32** %3, align 8
  %180 = call i64 @lua_isnil(i32* %179, i32 -1)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %170
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 (i32*, i8*, ...) @luaL_error(i32* %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 %184, i32* %2, align 4
  br label %745

185:                                              ; preds = %170
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @lua_gettop(i32* %186)
  %188 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @lua_type(i32* %189, i32 -1)
  %191 = icmp ne i32 %190, 128
  br i1 %191, label %192, label %200

192:                                              ; preds = %185
  %193 = load i32*, i32** %3, align 8
  %194 = load i32, i32* %27, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 @lua_type(i32* %196, i32 -1)
  %198 = call i32 @lua_typename(i32* %195, i32 %197)
  %199 = call i32 (i32*, i8*, ...) @luaL_error(i32* %193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %194, i32 %198)
  store i32 %199, i32* %2, align 4
  br label %745

200:                                              ; preds = %185
  %201 = load i32*, i32** %3, align 8
  %202 = call i8* @lua_objlen(i32* %201, i32 -1)
  %203 = ptrtoint i8* %202 to i64
  store i64 %203, i64* %17, align 8
  %204 = load i64, i64* %17, align 8
  %205 = icmp ne i64 %204, 1
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load i64, i64* %17, align 8
  %208 = icmp ne i64 %207, 2
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i32*, i32** %3, align 8
  %211 = load i32, i32* %27, align 4
  %212 = call i32 (i32*, i8*, ...) @luaL_error(i32* %210, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  store i32 %212, i32* %2, align 4
  br label %745

213:                                              ; preds = %206, %200
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @lua_rawgeti(i32* %214, i32 2, i32 1)
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @lua_gettop(i32* %216)
  %218 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %217)
  %219 = load i32*, i32** %3, align 8
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 @lua_type(i32* %220, i32 -1)
  %222 = call i32 @lua_typename(i32* %219, i32 %221)
  %223 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %222)
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %22, align 8
  %224 = call i32 @ngx_str_null(%struct.TYPE_48__* %12)
  %225 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %226 = icmp ne %struct.TYPE_45__* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %213
  %228 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %228, i32 0, i32 0
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %227, %213
  store i32 0, i32* %25, align 4
  store i32 0, i32* %34, align 4
  %231 = load i64, i64* %17, align 8
  %232 = icmp eq i64 %231, 2
  br i1 %232, label %233, label %492

233:                                              ; preds = %230
  %234 = load i32*, i32** %3, align 8
  %235 = call i32 @lua_rawgeti(i32* %234, i32 2, i32 2)
  %236 = load i32*, i32** %3, align 8
  %237 = call i32 @lua_gettop(i32* %236)
  %238 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %237)
  %239 = load i32*, i32** %3, align 8
  %240 = call i32 @lua_type(i32* %239, i32 4)
  %241 = icmp ne i32 %240, 128
  br i1 %241, label %242, label %248

242:                                              ; preds = %233
  %243 = load i32*, i32** %3, align 8
  %244 = load i32, i32* %27, align 4
  %245 = load i32*, i32** %3, align 8
  %246 = call i32 @luaL_typename(i32* %245, i32 4)
  %247 = call i32 (i32*, i8*, ...) @luaL_error(i32* %243, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i64 0, i64 0), i32 %244, i32 %246)
  store i32 %247, i32* %2, align 4
  br label %745

248:                                              ; preds = %233
  %249 = load i32*, i32** %3, align 8
  %250 = call i32 @lua_gettop(i32* %249)
  %251 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %250)
  %252 = load i32*, i32** %3, align 8
  %253 = call i32 @lua_getfield(i32* %252, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @lua_type(i32* %254, i32 -1)
  store i32 %255, i32* %23, align 4
  %256 = load i32, i32* %23, align 4
  switch i32 %256, label %269 [
    i32 128, label %257
    i32 131, label %261
    i32 130, label %262
    i32 129, label %262
  ]

257:                                              ; preds = %248
  %258 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %259 = load i32*, i32** %3, align 8
  %260 = call i32 @ngx_http_lua_process_args_option(%struct.TYPE_50__* %258, i32* %259, i32 -1, %struct.TYPE_48__* %12)
  br label %272

261:                                              ; preds = %248
  br label %272

262:                                              ; preds = %248, %248
  %263 = load i32*, i32** %3, align 8
  %264 = call i64 @lua_tolstring(i32* %263, i32 -1, i64* %16)
  %265 = inttoptr i64 %264 to i32*
  %266 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 1
  store i32* %265, i32** %266, align 8
  %267 = load i64, i64* %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  store i64 %267, i64* %268, align 8
  br label %272

269:                                              ; preds = %248
  %270 = load i32*, i32** %3, align 8
  %271 = call i32 (i32*, i8*, ...) @luaL_error(i32* %270, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  store i32 %271, i32* %2, align 4
  br label %745

272:                                              ; preds = %262, %261, %257
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @lua_pop(i32* %273, i32 1)
  %275 = load i32*, i32** %3, align 8
  %276 = call i32 @lua_gettop(i32* %275)
  %277 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %276)
  %278 = load i32*, i32** %3, align 8
  %279 = call i32 @lua_getfield(i32* %278, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %280 = load i32*, i32** %3, align 8
  %281 = call i32 @lua_type(i32* %280, i32 -1)
  switch i32 %281, label %290 [
    i32 128, label %282
    i32 131, label %289
  ]

282:                                              ; preds = %272
  %283 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %284 = load i32*, i32** %3, align 8
  %285 = call i32 @ngx_http_lua_process_vars_option(%struct.TYPE_50__* %283, i32* %284, i32 -1, %struct.TYPE_45__** %9)
  %286 = load i32*, i32** %3, align 8
  %287 = call i32 @lua_gettop(i32* %286)
  %288 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %287)
  br label %293

289:                                              ; preds = %272
  br label %293

290:                                              ; preds = %272
  %291 = load i32*, i32** %3, align 8
  %292 = call i32 (i32*, i8*, ...) @luaL_error(i32* %291, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  store i32 %292, i32* %2, align 4
  br label %745

293:                                              ; preds = %289, %282
  %294 = load i32*, i32** %3, align 8
  %295 = call i32 @lua_pop(i32* %294, i32 1)
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @lua_gettop(i32* %296)
  %298 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %297)
  %299 = load i32*, i32** %3, align 8
  %300 = call i32 @lua_getfield(i32* %299, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %301 = load i32*, i32** %3, align 8
  %302 = call i32 @lua_type(i32* %301, i32 -1)
  switch i32 %302, label %313 [
    i32 131, label %303
    i32 132, label %304
  ]

303:                                              ; preds = %293
  br label %316

304:                                              ; preds = %293
  %305 = load i32*, i32** %3, align 8
  %306 = call i32 @lua_toboolean(i32* %305, i32 -1)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load i32, i32* @NGX_HTTP_LUA_SHARE_ALL_VARS, align 4
  %310 = load i32, i32* %25, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %25, align 4
  br label %312

312:                                              ; preds = %308, %304
  br label %316

313:                                              ; preds = %293
  %314 = load i32*, i32** %3, align 8
  %315 = call i32 (i32*, i8*, ...) @luaL_error(i32* %314, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  store i32 %315, i32* %2, align 4
  br label %745

316:                                              ; preds = %312, %303
  %317 = load i32*, i32** %3, align 8
  %318 = call i32 @lua_pop(i32* %317, i32 1)
  %319 = load i32*, i32** %3, align 8
  %320 = call i32 @lua_gettop(i32* %319)
  %321 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %320)
  %322 = load i32*, i32** %3, align 8
  %323 = call i32 @lua_getfield(i32* %322, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %324 = load i32*, i32** %3, align 8
  %325 = call i32 @lua_type(i32* %324, i32 -1)
  switch i32 %325, label %336 [
    i32 131, label %326
    i32 132, label %327
  ]

326:                                              ; preds = %316
  br label %339

327:                                              ; preds = %316
  %328 = load i32*, i32** %3, align 8
  %329 = call i32 @lua_toboolean(i32* %328, i32 -1)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = load i32, i32* @NGX_HTTP_LUA_COPY_ALL_VARS, align 4
  %333 = load i32, i32* %25, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %25, align 4
  br label %335

335:                                              ; preds = %331, %327
  br label %339

336:                                              ; preds = %316
  %337 = load i32*, i32** %3, align 8
  %338 = call i32 (i32*, i8*, ...) @luaL_error(i32* %337, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  store i32 %338, i32* %2, align 4
  br label %745

339:                                              ; preds = %335, %326
  %340 = load i32*, i32** %3, align 8
  %341 = call i32 @lua_pop(i32* %340, i32 1)
  %342 = load i32*, i32** %3, align 8
  %343 = call i32 @lua_gettop(i32* %342)
  %344 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %343)
  %345 = load i32*, i32** %3, align 8
  %346 = call i32 @lua_getfield(i32* %345, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %347 = load i32*, i32** %3, align 8
  %348 = call i32 @lua_toboolean(i32* %347, i32 -1)
  store i32 %348, i32* %20, align 4
  %349 = load i32*, i32** %3, align 8
  %350 = call i32 @lua_pop(i32* %349, i32 1)
  %351 = load i32, i32* %20, align 4
  %352 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %351)
  %353 = load i32*, i32** %3, align 8
  %354 = call i32 @lua_getfield(i32* %353, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %355 = load i32*, i32** %3, align 8
  %356 = call i32 @lua_type(i32* %355, i32 -1)
  store i32 %356, i32* %23, align 4
  %357 = load i32, i32* %23, align 4
  %358 = icmp eq i32 %357, 131
  br i1 %358, label %359, label %361

359:                                              ; preds = %339
  %360 = load i32, i32* @NGX_HTTP_GET, align 4
  store i32 %360, i32* %21, align 4
  br label %371

361:                                              ; preds = %339
  %362 = load i32, i32* %23, align 4
  %363 = icmp ne i32 %362, 130
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load i32*, i32** %3, align 8
  %366 = call i32 (i32*, i8*, ...) @luaL_error(i32* %365, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  store i32 %366, i32* %2, align 4
  br label %745

367:                                              ; preds = %361
  %368 = load i32*, i32** %3, align 8
  %369 = call i64 @lua_tonumber(i32* %368, i32 -1)
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %21, align 4
  br label %371

371:                                              ; preds = %367, %359
  %372 = load i32*, i32** %3, align 8
  %373 = call i32 @lua_pop(i32* %372, i32 1)
  %374 = load i32*, i32** %3, align 8
  %375 = call i32 @lua_gettop(i32* %374)
  %376 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %375)
  %377 = load i32*, i32** %3, align 8
  %378 = call i32 @lua_getfield(i32* %377, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %379 = load i32*, i32** %3, align 8
  %380 = call i32 @lua_type(i32* %379, i32 -1)
  store i32 %380, i32* %23, align 4
  %381 = load i32, i32* %23, align 4
  %382 = icmp ne i32 %381, 131
  br i1 %382, label %383, label %393

383:                                              ; preds = %371
  %384 = load i32, i32* %23, align 4
  %385 = icmp ne i32 %384, 128
  br i1 %385, label %386, label %392

386:                                              ; preds = %383
  %387 = load i32*, i32** %3, align 8
  %388 = load i32*, i32** %3, align 8
  %389 = load i32, i32* %23, align 4
  %390 = call i32 @lua_typename(i32* %388, i32 %389)
  %391 = call i32 (i32*, i8*, ...) @luaL_error(i32* %387, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 %390)
  store i32 %391, i32* %2, align 4
  br label %745

392:                                              ; preds = %383
  store i32 1, i32* %34, align 4
  br label %396

393:                                              ; preds = %371
  %394 = load i32*, i32** %3, align 8
  %395 = call i32 @lua_pop(i32* %394, i32 1)
  br label %396

396:                                              ; preds = %393, %392
  %397 = load i32*, i32** %3, align 8
  %398 = call i32 @lua_gettop(i32* %397)
  %399 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i32 %398)
  %400 = load i32*, i32** %3, align 8
  %401 = call i32 @lua_getfield(i32* %400, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %402 = load i32*, i32** %3, align 8
  %403 = call i32 @lua_type(i32* %402, i32 -1)
  store i32 %403, i32* %23, align 4
  %404 = load i32, i32* %23, align 4
  %405 = icmp ne i32 %404, 131
  br i1 %405, label %406, label %484

406:                                              ; preds = %396
  %407 = load i32, i32* %23, align 4
  %408 = icmp ne i32 %407, 129
  br i1 %408, label %409, label %415

409:                                              ; preds = %406
  %410 = load i32, i32* %23, align 4
  %411 = icmp ne i32 %410, 130
  br i1 %411, label %412, label %415

412:                                              ; preds = %409
  %413 = load i32*, i32** %3, align 8
  %414 = call i32 (i32*, i8*, ...) @luaL_error(i32* %413, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  store i32 %414, i32* %2, align 4
  br label %745

415:                                              ; preds = %409, %406
  %416 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = call i8* @ngx_pcalloc(i32 %418, i32 16)
  %420 = bitcast i8* %419 to %struct.TYPE_51__*
  store %struct.TYPE_51__* %420, %struct.TYPE_51__** %22, align 8
  %421 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %422 = icmp eq %struct.TYPE_51__* %421, null
  br i1 %422, label %423, label %426

423:                                              ; preds = %415
  %424 = load i32*, i32** %3, align 8
  %425 = call i32 (i32*, i8*, ...) @luaL_error(i32* %424, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %425, i32* %2, align 4
  br label %745

426:                                              ; preds = %415
  %427 = load i32*, i32** %3, align 8
  %428 = call i64 @lua_tolstring(i32* %427, i32 -1, i64* %16)
  %429 = inttoptr i64 %428 to i32*
  store i32* %429, i32** %15, align 8
  %430 = load i64, i64* %16, align 8
  %431 = trunc i64 %430 to i32
  %432 = load i32*, i32** %15, align 8
  %433 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %431, i32* %432)
  %434 = load i64, i64* %16, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %483

436:                                              ; preds = %426
  %437 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i64, i64* %16, align 8
  %441 = call %struct.TYPE_44__* @ngx_create_temp_buf(i32 %439, i64 %440)
  store %struct.TYPE_44__* %441, %struct.TYPE_44__** %24, align 8
  %442 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %443 = icmp eq %struct.TYPE_44__* %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %436
  %445 = load i32*, i32** %3, align 8
  %446 = call i32 (i32*, i8*, ...) @luaL_error(i32* %445, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %446, i32* %2, align 4
  br label %745

447:                                              ; preds = %436
  %448 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %449 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %448, i32 0, i32 0
  %450 = load i32*, i32** %449, align 8
  %451 = load i32*, i32** %15, align 8
  %452 = load i64, i64* %16, align 8
  %453 = call i8* @ngx_copy(i32* %450, i32* %451, i64 %452)
  %454 = bitcast i8* %453 to i32*
  %455 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %456 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %455, i32 0, i32 0
  store i32* %454, i32** %456, align 8
  %457 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call %struct.TYPE_49__* @ngx_alloc_chain_link(i32 %459)
  %461 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %462 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %461, i32 0, i32 1
  store %struct.TYPE_49__* %460, %struct.TYPE_49__** %462, align 8
  %463 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %464 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_49__*, %struct.TYPE_49__** %464, align 8
  %466 = icmp eq %struct.TYPE_49__* %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %447
  %468 = load i32*, i32** %3, align 8
  %469 = call i32 (i32*, i8*, ...) @luaL_error(i32* %468, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %469, i32* %2, align 4
  br label %745

470:                                              ; preds = %447
  %471 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %472 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %473 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_49__*, %struct.TYPE_49__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %474, i32 0, i32 1
  store %struct.TYPE_44__* %471, %struct.TYPE_44__** %475, align 8
  %476 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %477 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %476, i32 0, i32 1
  %478 = load %struct.TYPE_49__*, %struct.TYPE_49__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %478, i32 0, i32 0
  store i32* null, i32** %479, align 8
  %480 = load %struct.TYPE_44__*, %struct.TYPE_44__** %24, align 8
  %481 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %482 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %481, i32 0, i32 0
  store %struct.TYPE_44__* %480, %struct.TYPE_44__** %482, align 8
  br label %483

483:                                              ; preds = %470, %426
  br label %484

484:                                              ; preds = %483, %396
  %485 = load i32*, i32** %3, align 8
  %486 = call i32 @lua_pop(i32* %485, i32 1)
  %487 = load i32*, i32** %3, align 8
  %488 = call i32 @lua_remove(i32* %487, i32 4)
  %489 = load i32*, i32** %3, align 8
  %490 = call i32 @lua_gettop(i32* %489)
  %491 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 %490)
  br label %494

492:                                              ; preds = %230
  %493 = load i32, i32* @NGX_HTTP_GET, align 4
  store i32 %493, i32* %21, align 4
  br label %494

494:                                              ; preds = %492, %484
  %495 = load i32*, i32** %3, align 8
  %496 = call i64 @luaL_checklstring(i32* %495, i32 3, i64* %16)
  %497 = inttoptr i64 %496 to i32*
  store i32* %497, i32** %14, align 8
  %498 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i64, i64* %16, align 8
  %502 = call i8* @ngx_palloc(i32 %500, i64 %501)
  %503 = bitcast i8* %502 to i32*
  %504 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 1
  store i32* %503, i32** %504, align 8
  %505 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 1
  %506 = load i32*, i32** %505, align 8
  %507 = icmp eq i32* %506, null
  br i1 %507, label %508, label %511

508:                                              ; preds = %494
  %509 = load i32*, i32** %3, align 8
  %510 = call i32 (i32*, i8*, ...) @luaL_error(i32* %509, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0))
  store i32 %510, i32* %2, align 4
  br label %745

511:                                              ; preds = %494
  %512 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 1
  %513 = load i32*, i32** %512, align 8
  %514 = load i32*, i32** %14, align 8
  %515 = load i64, i64* %16, align 8
  %516 = call i32 @ngx_memcpy(i32* %513, i32* %514, i64 %515)
  %517 = load i64, i64* %16, align 8
  %518 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 0
  store i64 %517, i64* %518, align 8
  %519 = call i32 @ngx_str_null(%struct.TYPE_48__* %11)
  store i32 0, i32* %13, align 4
  %520 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %521 = call i32 @ngx_http_parse_unsafe_uri(%struct.TYPE_50__* %520, %struct.TYPE_48__* %10, %struct.TYPE_48__* %11, i32* %13)
  store i32 %521, i32* %18, align 4
  %522 = load i32, i32* %18, align 4
  %523 = load i32, i32* @NGX_OK, align 4
  %524 = icmp ne i32 %522, %523
  br i1 %524, label %525, label %531

525:                                              ; preds = %511
  %526 = load i32, i32* %18, align 4
  %527 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32 %526)
  %528 = load i32*, i32** %3, align 8
  %529 = load i32*, i32** %14, align 8
  %530 = call i32 (i32*, i8*, ...) @luaL_error(i32* %528, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32* %529)
  store i32 %530, i32* %2, align 4
  br label %745

531:                                              ; preds = %511
  %532 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %565

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %564

539:                                              ; preds = %535
  %540 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = call i8* @ngx_palloc(i32 %542, i64 %544)
  %546 = bitcast i8* %545 to i32*
  store i32* %546, i32** %14, align 8
  %547 = load i32*, i32** %14, align 8
  %548 = icmp eq i32* %547, null
  br i1 %548, label %549, label %552

549:                                              ; preds = %539
  %550 = load i32*, i32** %3, align 8
  %551 = call i32 (i32*, i8*, ...) @luaL_error(i32* %550, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %551, i32* %2, align 4
  br label %745

552:                                              ; preds = %539
  %553 = load i32*, i32** %14, align 8
  %554 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 1
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = call i32 @ngx_memcpy(i32* %553, i32* %555, i64 %557)
  %559 = load i32*, i32** %14, align 8
  %560 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 1
  store i32* %559, i32** %560, align 8
  %561 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  store i64 %562, i64* %563, align 8
  br label %564

564:                                              ; preds = %552, %535
  br label %608

565:                                              ; preds = %531
  %566 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %607

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %571, 1
  %573 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = add i64 %572, %574
  store i64 %575, i64* %16, align 8
  %576 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %577 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load i64, i64* %16, align 8
  %580 = call i8* @ngx_palloc(i32 %578, i64 %579)
  %581 = bitcast i8* %580 to i32*
  store i32* %581, i32** %14, align 8
  %582 = load i32*, i32** %14, align 8
  %583 = icmp eq i32* %582, null
  br i1 %583, label %584, label %587

584:                                              ; preds = %569
  %585 = load i32*, i32** %3, align 8
  %586 = call i32 (i32*, i8*, ...) @luaL_error(i32* %585, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %586, i32* %2, align 4
  br label %745

587:                                              ; preds = %569
  %588 = load i32*, i32** %14, align 8
  %589 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 1
  %590 = load i32*, i32** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = call i8* @ngx_copy(i32* %588, i32* %590, i64 %592)
  %594 = bitcast i8* %593 to i32*
  store i32* %594, i32** %15, align 8
  %595 = load i32*, i32** %15, align 8
  %596 = getelementptr inbounds i32, i32* %595, i32 1
  store i32* %596, i32** %15, align 8
  store i32 38, i32* %595, align 4
  %597 = load i32*, i32** %15, align 8
  %598 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 1
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = call i32 @ngx_memcpy(i32* %597, i32* %599, i64 %601)
  %603 = load i32*, i32** %14, align 8
  %604 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 1
  store i32* %603, i32** %604, align 8
  %605 = load i64, i64* %16, align 8
  %606 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  store i64 %605, i64* %606, align 8
  br label %607

607:                                              ; preds = %587, %565
  br label %608

608:                                              ; preds = %607, %564
  %609 = call i64 @ngx_align(i32 16, i32 8)
  store i64 %609, i64* %32, align 8
  %610 = call i64 @ngx_align(i32 56, i32 8)
  store i64 %610, i64* %33, align 8
  %611 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %612 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load i64, i64* %32, align 8
  %615 = load i64, i64* %33, align 8
  %616 = add i64 %614, %615
  %617 = add i64 %616, 56
  %618 = call i8* @ngx_palloc(i32 %613, i64 %617)
  %619 = bitcast i8* %618 to i32*
  store i32* %619, i32** %14, align 8
  %620 = load i32*, i32** %14, align 8
  %621 = icmp eq i32* %620, null
  br i1 %621, label %622, label %625

622:                                              ; preds = %608
  %623 = load i32*, i32** %3, align 8
  %624 = call i32 (i32*, i8*, ...) @luaL_error(i32* %623, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %624, i32* %2, align 4
  br label %745

625:                                              ; preds = %608
  %626 = load i32*, i32** %14, align 8
  %627 = bitcast i32* %626 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %627, %struct.TYPE_52__** %6, align 8
  %628 = load i64, i64* %32, align 8
  %629 = load i32*, i32** %14, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 %628
  store i32* %630, i32** %14, align 8
  %631 = load i32*, i32** %14, align 8
  %632 = bitcast i32* %631 to %struct.TYPE_53__*
  store %struct.TYPE_53__* %632, %struct.TYPE_53__** %7, align 8
  %633 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %634 = bitcast %struct.TYPE_53__* %633 to i8*
  %635 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %636 = call i8* @ngx_align_ptr(%struct.TYPE_53__* %635, i32 8)
  %637 = icmp eq i8* %634, %636
  %638 = zext i1 %637 to i32
  %639 = call i32 @ngx_http_lua_assert(i32 %638)
  %640 = load i64, i64* %33, align 8
  %641 = load i32*, i32** %14, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 %640
  store i32* %642, i32** %14, align 8
  %643 = load i32*, i32** %14, align 8
  %644 = bitcast i32* %643 to %struct.TYPE_53__*
  store %struct.TYPE_53__* %644, %struct.TYPE_53__** %36, align 8
  %645 = load %struct.TYPE_53__*, %struct.TYPE_53__** %36, align 8
  %646 = bitcast %struct.TYPE_53__* %645 to i8*
  %647 = load %struct.TYPE_53__*, %struct.TYPE_53__** %36, align 8
  %648 = call i8* @ngx_align_ptr(%struct.TYPE_53__* %647, i32 8)
  %649 = icmp eq i8* %646, %648
  %650 = zext i1 %649 to i32
  %651 = call i32 @ngx_http_lua_assert(i32 %650)
  %652 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %653 = call i32 @ngx_memzero(%struct.TYPE_53__* %652, i32 56)
  %654 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %655 = load %struct.TYPE_53__*, %struct.TYPE_53__** %36, align 8
  %656 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %655, i32 0, i32 7
  store %struct.TYPE_53__* %654, %struct.TYPE_53__** %656, align 8
  %657 = load %struct.TYPE_54__*, %struct.TYPE_54__** %35, align 8
  %658 = load %struct.TYPE_53__*, %struct.TYPE_53__** %36, align 8
  %659 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %658, i32 0, i32 6
  store %struct.TYPE_54__* %657, %struct.TYPE_54__** %659, align 8
  %660 = load i32, i32* @ngx_http_lua_post_subrequest, align 4
  %661 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %662 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %661, i32 0, i32 1
  store i32 %660, i32* %662, align 8
  %663 = load %struct.TYPE_53__*, %struct.TYPE_53__** %36, align 8
  %664 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %665 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %664, i32 0, i32 0
  store %struct.TYPE_53__* %663, %struct.TYPE_53__** %665, align 8
  %666 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %667 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %668 = call i32 @ngx_http_lua_subrequest(%struct.TYPE_50__* %666, %struct.TYPE_48__* %10, %struct.TYPE_48__* %11, %struct.TYPE_50__** %5, %struct.TYPE_52__* %667, i32 0)
  store i32 %668, i32* %18, align 4
  %669 = load i32, i32* %18, align 4
  %670 = load i32, i32* @NGX_OK, align 4
  %671 = icmp ne i32 %669, %670
  br i1 %671, label %672, label %676

672:                                              ; preds = %625
  %673 = load i32*, i32** %3, align 8
  %674 = load i32, i32* %18, align 4
  %675 = call i32 (i32*, i8*, ...) @luaL_error(i32* %673, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 %674)
  store i32 %675, i32* %2, align 4
  br label %745

676:                                              ; preds = %625
  %677 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %678 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %679 = call i32 @ngx_http_lua_init_ctx(%struct.TYPE_50__* %677, %struct.TYPE_53__* %678)
  %680 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %681 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %680, i32 0, i32 0
  store i32 1, i32* %681, align 8
  %682 = load i32, i32* %27, align 4
  %683 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %684 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %683, i32 0, i32 1
  store i32 %682, i32* %684, align 4
  %685 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %686 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %685, i32 0, i32 4
  %687 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %688 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %687, i32 0, i32 5
  store i32* %686, i32** %688, align 8
  %689 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %690 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %689, i32 0, i32 3
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %693 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %692, i32 0, i32 3
  store i32 %691, i32* %693, align 4
  %694 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %695 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %696 = load i32, i32* @ngx_http_lua_module, align 4
  %697 = call i32 @ngx_http_set_ctx(%struct.TYPE_50__* %694, %struct.TYPE_53__* %695, i32 %696)
  %698 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %699 = load i32, i32* %21, align 4
  %700 = load i32, i32* %20, align 4
  %701 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %702 = load i32, i32* %25, align 4
  %703 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %704 = call i32 @ngx_http_lua_adjust_subrequest(%struct.TYPE_50__* %698, i32 %699, i32 %700, %struct.TYPE_51__* %701, i32 %702, %struct.TYPE_45__* %703)
  store i32 %704, i32* %18, align 4
  %705 = load i32, i32* %18, align 4
  %706 = load i32, i32* @NGX_OK, align 4
  %707 = icmp ne i32 %705, %706
  br i1 %707, label %708, label %714

708:                                              ; preds = %676
  %709 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %710 = call i32 @ngx_http_lua_cancel_subreq(%struct.TYPE_50__* %709)
  %711 = load i32*, i32** %3, align 8
  %712 = load i32, i32* %18, align 4
  %713 = call i32 (i32*, i8*, ...) @luaL_error(i32* %711, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0), i32 %712)
  store i32 %713, i32* %2, align 4
  br label %745

714:                                              ; preds = %676
  %715 = load i32*, i32** %3, align 8
  %716 = call i32 @lua_gettop(i32* %715)
  %717 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 %716)
  %718 = load i32, i32* %34, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %727

720:                                              ; preds = %714
  %721 = load i32*, i32** %3, align 8
  %722 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %723 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %724 = call i32 @ngx_http_lua_ngx_set_ctx_helper(i32* %721, %struct.TYPE_50__* %722, %struct.TYPE_53__* %723, i32 -1)
  %725 = load i32*, i32** %3, align 8
  %726 = call i32 @lua_pop(i32* %725, i32 3)
  br label %730

727:                                              ; preds = %714
  %728 = load i32*, i32** %3, align 8
  %729 = call i32 @lua_pop(i32* %728, i32 2)
  br label %730

730:                                              ; preds = %727, %720
  br label %731

731:                                              ; preds = %730
  %732 = load i32, i32* %27, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %27, align 4
  br label %166

734:                                              ; preds = %166
  %735 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %736 = icmp ne %struct.TYPE_45__* %735, null
  br i1 %736, label %737, label %740

737:                                              ; preds = %734
  %738 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %739 = call i32 @ngx_array_destroy(%struct.TYPE_45__* %738)
  br label %740

740:                                              ; preds = %737, %734
  %741 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %742 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %741, i32 0, i32 2
  store i32 1, i32* %742, align 8
  %743 = load i32*, i32** %3, align 8
  %744 = call i32 @lua_yield(i32* %743, i32 0)
  store i32 %744, i32* %2, align 4
  br label %745

745:                                              ; preds = %740, %708, %672, %622, %584, %549, %525, %508, %467, %444, %423, %412, %386, %364, %336, %313, %290, %269, %242, %209, %192, %182, %132, %87, %70, %61, %53, %41
  %746 = load i32, i32* %2, align 4
  ret i32 %746
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i8* @lua_objlen(i32*, i32) #1

declare dso_local %struct.TYPE_50__* @ngx_http_lua_get_req(i32*) #1

declare dso_local %struct.TYPE_53__* @ngx_http_get_module_ctx(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_48__*) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_process_args_option(%struct.TYPE_50__*, i32*, i32, %struct.TYPE_48__*) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_process_vars_option(%struct.TYPE_50__*, i32*, i32, %struct.TYPE_45__**) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local %struct.TYPE_44__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i8* @ngx_copy(i32*, i32*, i64) #1

declare dso_local %struct.TYPE_49__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ngx_http_parse_unsafe_uri(%struct.TYPE_50__*, %struct.TYPE_48__*, %struct.TYPE_48__*, i32*) #1

declare dso_local i64 @ngx_align(i32, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i8* @ngx_align_ptr(%struct.TYPE_53__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_53__*, i32) #1

declare dso_local i32 @ngx_http_lua_subrequest(%struct.TYPE_50__*, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_50__**, %struct.TYPE_52__*, i32) #1

declare dso_local i32 @ngx_http_lua_init_ctx(%struct.TYPE_50__*, %struct.TYPE_53__*) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_50__*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @ngx_http_lua_adjust_subrequest(%struct.TYPE_50__*, i32, i32, %struct.TYPE_51__*, i32, %struct.TYPE_45__*) #1

declare dso_local i32 @ngx_http_lua_cancel_subreq(%struct.TYPE_50__*) #1

declare dso_local i32 @ngx_http_lua_ngx_set_ctx_helper(i32*, %struct.TYPE_50__*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @ngx_array_destroy(%struct.TYPE_45__*) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
