; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_req_get_headers.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_req_get_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_17__ }

@NGX_HTTP_LUA_MAX_HEADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"lua exceeding request header limit %d > %d\00", align 1
@headers_metatable_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"stack top: %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lua request header: \22%V: %V\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_get_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_get_headers(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @lua_isnil(i32* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @NGX_HTTP_LUA_MAX_HEADERS, align 4
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_checkinteger(i32* %24, i32 1)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_toboolean(i32* %30, i32 2)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @NGX_HTTP_LUA_MAX_HEADERS, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32*, i32** %3, align 8
  %37 = call %struct.TYPE_18__* @ngx_http_lua_get_req(i32* %36)
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %6, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = icmp eq %struct.TYPE_18__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @luaL_error(i32* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %2, align 4
  br label %215

43:                                               ; preds = %35
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = call i32 @ngx_http_lua_check_fake_request(i32* %44, %struct.TYPE_18__* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %4, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %59, %43
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %4, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug2(i32 %76, i32 %81, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %75, %71, %68
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @lua_createtable(i32* %87, i32 0, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %86
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @headers_metatable_key, align 4
  %95 = call i32 @ngx_http_lua_lightudata_mask(i32 %94)
  %96 = call i32 @lua_pushlightuserdata(i32* %93, i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %99 = call i32 @lua_rawget(i32* %97, i32 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @lua_setmetatable(i32* %100, i32 -2)
  br label %102

102:                                              ; preds = %92, %86
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %4, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %5, align 8
  store i64 0, i64* %7, align 8
  br label %110

110:                                              ; preds = %205, %102
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @lua_gettop(i32* %111)
  %113 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp uge i64 %114, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %110
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = icmp eq %struct.TYPE_17__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %208

126:                                              ; preds = %120
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %4, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %5, align 8
  store i64 0, i64* %7, align 8
  br label %133

133:                                              ; preds = %126, %110
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32*, i32** %3, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @lua_pushlstring(i32* %137, i8* %144, i32 %150)
  br label %167

152:                                              ; preds = %133
  %153 = load i32*, i32** %3, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @lua_pushlstring(i32* %153, i8* %159, i32 %165)
  br label %167

167:                                              ; preds = %152, %136
  %168 = load i32*, i32** %3, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i8*
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @lua_pushlstring(i32* %168, i8* %175, i32 %181)
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @ngx_http_lua_set_multi_value_table(i32* %183, i32 -3)
  %185 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %196 = load i64, i64* %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug2(i32 %185, i32 %190, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %194, %struct.TYPE_15__* %198)
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %11, align 4
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %167
  br label %208

204:                                              ; preds = %167
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %7, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %7, align 8
  br label %110

208:                                              ; preds = %203, %125
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32*, i32** %3, align 8
  %213 = call i32 @lua_pushliteral(i32* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %215

214:                                              ; preds = %208
  store i32 1, i32* %2, align 4
  br label %215

215:                                              ; preds = %214, %211, %40
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_set_multi_value_table(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
