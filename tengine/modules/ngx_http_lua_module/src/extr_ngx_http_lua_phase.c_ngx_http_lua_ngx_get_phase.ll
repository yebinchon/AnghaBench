; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_phase.c_ngx_http_lua_ngx_get_phase.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_phase.c_ngx_http_lua_ngx_get_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"init_worker\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"header_filter\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"body_filter\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"balancer\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ssl_cert\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ssl_session_store\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ssl_session_fetch\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"unknown phase: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_get_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_get_phase(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @ngx_http_lua_get_req(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_pushliteral(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @ngx_http_lua_module, align 4
  %16 = call %struct.TYPE_3__* @ngx_http_get_module_ctx(i32* %14, i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @luaL_error(i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %65 [
    i32 135, label %26
    i32 132, label %29
    i32 133, label %32
    i32 140, label %35
    i32 137, label %38
    i32 134, label %41
    i32 136, label %44
    i32 138, label %47
    i32 128, label %50
    i32 139, label %53
    i32 131, label %56
    i32 129, label %59
    i32 130, label %62
  ]

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_pushliteral(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %71

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushliteral(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %71

32:                                               ; preds = %22
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushliteral(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %71

35:                                               ; preds = %22
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushliteral(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %71

38:                                               ; preds = %22
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_pushliteral(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %71

41:                                               ; preds = %22
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_pushliteral(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %71

44:                                               ; preds = %22
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_pushliteral(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %71

47:                                               ; preds = %22
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_pushliteral(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %71

50:                                               ; preds = %22
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_pushliteral(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %71

53:                                               ; preds = %22
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pushliteral(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %71

56:                                               ; preds = %22
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pushliteral(i32* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %71

59:                                               ; preds = %22
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_pushliteral(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %71

62:                                               ; preds = %22
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_pushliteral(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %71

65:                                               ; preds = %22
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i8*, ...) @luaL_error(i32* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %65, %19, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
