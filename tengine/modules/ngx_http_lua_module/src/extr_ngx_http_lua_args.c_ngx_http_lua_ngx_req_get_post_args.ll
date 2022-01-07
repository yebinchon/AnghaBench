; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_args.c_ngx_http_lua_ngx_req_get_post_args.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_args.c_ngx_http_lua_ngx_req_get_post_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"expecting 0 or 1 arguments but seen %d\00", align 1
@NGX_HTTP_LUA_MAX_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"no request body found; maybe you should turn on lua_need_request_body?\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"request body in temp file not supported\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"post body length: %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"post body: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_get_post_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_get_post_args(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32*, i8*, ...) @luaL_error(i32* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %2, align 4
  br label %184

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_checkinteger(i32* %28, i32 1)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 1)
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @NGX_HTTP_LUA_MAX_ARGS, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_9__* @ngx_http_lua_get_req(i32* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %4, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = icmp eq %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (i32*, i8*, ...) @luaL_error(i32* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  br label %184

42:                                               ; preds = %34
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @ngx_http_lua_check_fake_request(i32* %43, %struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_createtable(i32* %51, i32 0, i32 0)
  store i32 1, i32* %2, align 4
  br label %184

53:                                               ; preds = %42
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp eq %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 (i32*, i8*, ...) @luaL_error(i32* %59, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %2, align 4
  br label %184

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_pushnil(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_pushliteral(i32* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %184

73:                                               ; preds = %61
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp eq %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @lua_createtable(i32* %81, i32 0, i32 0)
  store i32 1, i32* %2, align 4
  br label %184

83:                                               ; preds = %73
  store i64 0, i64* %7, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %8, align 8
  br label %89

89:                                               ; preds = %106, %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %97, %102
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %92
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %8, align 8
  br label %89

110:                                              ; preds = %89
  %111 = load i64, i64* %7, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %7, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @lua_createtable(i32* %117, i32 0, i32 0)
  store i32 1, i32* %2, align 4
  br label %184

119:                                              ; preds = %110
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32* @ngx_palloc(i32 %122, i64 %123)
  store i32* %124, i32** %5, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 (i32*, i8*, ...) @luaL_error(i32* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %129, i32* %2, align 4
  br label %184

130:                                              ; preds = %119
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @lua_createtable(i32* %131, i32 0, i32 4)
  %133 = load i32*, i32** %5, align 8
  store i32* %133, i32** %9, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %8, align 8
  br label %139

139:                                              ; preds = %161, %130
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = icmp ne %struct.TYPE_10__* %140, null
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %153, %158
  %160 = call i32* @ngx_copy(i32* %143, i64 %148, i64 %159)
  store i32* %160, i32** %9, align 8
  br label %161

161:                                              ; preds = %142
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  store %struct.TYPE_10__* %164, %struct.TYPE_10__** %8, align 8
  br label %139

165:                                              ; preds = %139
  %166 = load i64, i64* %7, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %10, align 8
  %173 = load i32*, i32** %3, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @ngx_http_lua_parse_args(i32* %173, i32* %174, i32* %175, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @ngx_pfree(i32 %180, i32* %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %165, %127, %116, %80, %68, %58, %50, %39, %20
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32* @ngx_copy(i32*, i64, i64) #1

declare dso_local i32 @ngx_http_lua_parse_args(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ngx_pfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
