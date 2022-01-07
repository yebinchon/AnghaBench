; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_args.c_ngx_http_lua_ngx_req_set_uri_args.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_args.c_ngx_http_lua_ngx_req_set_uri_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, i32* }

@.str = private unnamed_addr constant [33 x i8] c"expecting 1 argument but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"args: %.*s\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"string, number, or table expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_set_uri_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_set_uri_args(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_gettop(i32* %14)
  %16 = call i32 (i32*, i8*, ...) @luaL_error(i32* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_10__* @ngx_http_lua_get_req(i32* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %92

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @ngx_http_lua_check_fake_request(i32* %26, %struct.TYPE_10__* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_type(i32* %29, i32 1)
  switch i32 %30, label %65 [
    i32 130, label %31
    i32 129, label %31
    i32 128, label %55
  ]

31:                                               ; preds = %25, %25
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @lua_tolstring(i32* %32, i32 1, i64* %7)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32* @ngx_palloc(i32 %37, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @luaL_error(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %92

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @ngx_memcpy(i32* %49, i32* %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  br label %73

55:                                               ; preds = %25
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @ngx_http_lua_process_args_option(%struct.TYPE_10__* %56, i32* %57, i32 1, %struct.TYPE_9__* %5)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32* %63)
  br label %73

65:                                               ; preds = %25
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @luaL_typename(i32* %67, i32 2)
  %69 = call i8* @lua_pushfstring(i32* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  store i8* %69, i8** %6, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @luaL_argerror(i32* %70, i32 1, i8* %71)
  store i32 %72, i32* %2, align 4
  br label %92

73:                                               ; preds = %55, %47
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @dd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32* %81, i32** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %73, %65, %44, %22, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ngx_http_lua_process_args_option(%struct.TYPE_10__*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dd(i8*, i32, i32*) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
