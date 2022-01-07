; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uthread.c_ngx_http_lua_uthread_wait.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uthread.c_ngx_http_lua_uthread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_10__*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"lua thread expected\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"attempt to wait on a coroutine that is not a user thread\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"only the parent coroutine can wait on the thread\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"found zombie child\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"child retval count: %d, %s: %s\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"uthread already waited: %p (parent %p)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"already waited or killed\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"uthread %p still alive, status: %d, parent %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_uthread_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_uthread_wait(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @ngx_http_lua_get_req(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %157

19:                                               ; preds = %1
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @ngx_http_lua_module, align 4
  %22 = call %struct.TYPE_9__* @ngx_http_get_module_ctx(i32* %20, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %157

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %32 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ngx_http_lua_check_context(i32* %29, %struct.TYPE_9__* %30, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %10, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_gettop(i32* %44)
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %151, %28
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %154

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32* @lua_tothread(i32* %51, i32 %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @luaL_argcheck(i32* %54, i32* %55, i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = call %struct.TYPE_10__* @ngx_http_lua_get_co_ctx(i32* %58, %struct.TYPE_9__* %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %11, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = icmp eq %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @luaL_error(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %65, i32* %2, align 4
  br label %157

66:                                               ; preds = %50
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @luaL_error(i32* %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 %73, i32* %2, align 4
  br label %157

74:                                               ; preds = %66
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = icmp ne %struct.TYPE_10__* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @luaL_error(i32* %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  store i32 %82, i32* %2, align 4
  br label %157

83:                                               ; preds = %74
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %136 [
    i32 128, label %87
    i32 129, label %123
  ]

87:                                               ; preds = %83
  %88 = call i32 @ngx_http_lua_probe_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @lua_gettop(i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @luaL_typename(i32* %96, i32 -1)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @lua_tostring(i32* %100, i32 -1)
  %102 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %93, i32 %97, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %87
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @lua_xmove(i32* %108, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %87
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %117 = call i32 @ngx_http_lua_del_thread(i32* %113, i32* %114, %struct.TYPE_9__* %115, %struct.TYPE_10__* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %157

123:                                              ; preds = %83
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %126 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_10__* %124, %struct.TYPE_10__* %125)
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %151

131:                                              ; preds = %123
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @lua_pushnil(i32* %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @lua_pushliteral(i32* %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %157

136:                                              ; preds = %83
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_10__* %137, i32 %140, %struct.TYPE_10__* %141)
  br label %143

143:                                              ; preds = %136
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @ngx_http_lua_probe_user_thread_wait(i32* %144, i32* %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %143, %130
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %46

154:                                              ; preds = %46
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @lua_yield(i32* %155, i32 0)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %131, %112, %80, %71, %63, %25, %16
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_lua_get_co_ctx(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ngx_http_lua_probe_info(i8*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_lua_del_thread(i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_probe_user_thread_wait(i32*, i32*) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
