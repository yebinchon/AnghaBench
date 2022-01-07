; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_req_header_set_helper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_req_header_set_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i8*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@NGX_HTTP_VERSION_10 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"key: %.*s, len %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"header value table index %d, top: %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to set header %s (error: %d)\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"key: %.*s, value: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_header_set_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_header_set_helper(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_10__* @ngx_http_lua_get_req(i32* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @luaL_error(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %216

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = call i32 @ngx_http_lua_check_fake_request(i32* %20, %struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NGX_HTTP_VERSION_10, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %216

29:                                               ; preds = %19
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @luaL_checklstring(i32* %30, i32 1, i64* %9)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i8*, i32, i8*, ...) @dd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35, i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  %44 = call i8* @ngx_palloc(i32 %41, i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @luaL_error(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %51, i32* %2, align 4
  br label %216

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @ngx_memcpy(i8* %54, i8* %55, i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @lua_type(i32* %64, i32 2)
  %66 = load i64, i64* @LUA_TNIL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = call i32 @ngx_str_null(%struct.TYPE_9__* %7)
  br label %181

70:                                               ; preds = %52
  %71 = load i32*, i32** %3, align 8
  %72 = call i64 @lua_type(i32* %71, i32 2)
  %73 = load i64, i64* @LUA_TTABLE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %154

75:                                               ; preds = %70
  %76 = load i32*, i32** %3, align 8
  %77 = call i64 @lua_objlen(i32* %76, i32 2)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @ngx_str_null(%struct.TYPE_9__* %7)
  br label %153

82:                                               ; preds = %75
  store i64 1, i64* %8, align 8
  br label %83

83:                                               ; preds = %149, %82
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %152

87:                                               ; preds = %83
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_gettop(i32* %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, i32, i8*, ...) @dd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %89, i8* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @lua_rawgeti(i32* %95, i32 2, i64 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = call i64 @luaL_checklstring(i32* %98, i32 -1, i64* %9)
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %5, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  %106 = call i8* @ngx_palloc(i32 %103, i64 %105)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %87
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32*, i8*, ...) @luaL_error(i32* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %113, i32* %2, align 4
  br label %216

114:                                              ; preds = %87
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  %120 = call i32 @ngx_memcpy(i8* %116, i8* %117, i64 %119)
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %124, 1
  %126 = zext i1 %125 to i32
  %127 = bitcast %struct.TYPE_9__* %6 to { i8*, i64 }*
  %128 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %127, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = bitcast %struct.TYPE_9__* %7 to { i8*, i64 }*
  %133 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %132, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @ngx_http_lua_set_input_header(%struct.TYPE_10__* %123, i8* %129, i64 %131, i8* %134, i64 %136, i32 %126)
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @NGX_ERROR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %114
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 (i32*, i8*, ...) @luaL_error(i32* %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %144, i32 %146)
  store i32 %147, i32* %2, align 4
  br label %216

148:                                              ; preds = %114
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %8, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %8, align 8
  br label %83

152:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %216

153:                                              ; preds = %80
  br label %180

154:                                              ; preds = %70
  %155 = load i32*, i32** %3, align 8
  %156 = call i64 @luaL_checklstring(i32* %155, i32 2, i64* %9)
  %157 = inttoptr i64 %156 to i8*
  store i8* %157, i8** %5, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = add i64 %161, 1
  %163 = call i8* @ngx_palloc(i32 %160, i64 %162)
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* %163, i8** %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %154
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 (i32*, i8*, ...) @luaL_error(i32* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %170, i32* %2, align 4
  br label %216

171:                                              ; preds = %154
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %175, 1
  %177 = call i32 @ngx_memcpy(i8* %173, i8* %174, i64 %176)
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %171, %153
  br label %181

181:                                              ; preds = %180, %68
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 (i8*, i32, i8*, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %184, i8* %186, i32 %189, i8* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = bitcast %struct.TYPE_9__* %6 to { i8*, i64 }*
  %195 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %194, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = bitcast %struct.TYPE_9__* %7 to { i8*, i64 }*
  %200 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %199, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @ngx_http_lua_set_input_header(%struct.TYPE_10__* %193, i8* %196, i64 %198, i8* %201, i64 %203, i32 1)
  store i64 %204, i64* %10, align 8
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* @NGX_ERROR, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %181
  %209 = load i32*, i32** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i64, i64* %10, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 (i32*, i8*, ...) @luaL_error(i32* %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %211, i32 %213)
  store i32 %214, i32* %2, align 4
  br label %216

215:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %208, %168, %152, %141, %111, %49, %28, %16
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_10__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @dd(i8*, i32, i8*, ...) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_9__*) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i64 @ngx_http_lua_set_input_header(%struct.TYPE_10__*, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
