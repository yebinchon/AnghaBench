; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_method.c_ngx_http_lua_ngx_req_set_method.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_method.c_ngx_http_lua_ngx_req_set_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"only one argument expected but got %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request object not found\00", align 1
@ngx_http_lua_get_method = common dso_local global i32 0, align 4
@ngx_http_lua_post_method = common dso_local global i32 0, align 4
@ngx_http_lua_put_method = common dso_local global i32 0, align 4
@ngx_http_lua_head_method = common dso_local global i32 0, align 4
@ngx_http_lua_delete_method = common dso_local global i32 0, align 4
@ngx_http_lua_options_method = common dso_local global i32 0, align 4
@ngx_http_lua_mkcol_method = common dso_local global i32 0, align 4
@ngx_http_lua_copy_method = common dso_local global i32 0, align 4
@ngx_http_lua_move_method = common dso_local global i32 0, align 4
@ngx_http_lua_propfind_method = common dso_local global i32 0, align 4
@ngx_http_lua_proppatch_method = common dso_local global i32 0, align 4
@ngx_http_lua_lock_method = common dso_local global i32 0, align 4
@ngx_http_lua_unlock_method = common dso_local global i32 0, align 4
@ngx_http_lua_patch_method = common dso_local global i32 0, align 4
@ngx_http_lua_trace_method = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unsupported HTTP method: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_set_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_set_method(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32*, i8*, ...) @luaL_error(i32* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_checkint(i32* %16, i32 1)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_4__* @ngx_http_lua_get_req(i32* %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %98

25:                                               ; preds = %15
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = call i32 @ngx_http_lua_check_fake_request(i32* %26, %struct.TYPE_4__* %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %90 [
    i32 140, label %30
    i32 133, label %34
    i32 130, label %38
    i32 139, label %42
    i32 141, label %46
    i32 135, label %50
    i32 137, label %54
    i32 142, label %58
    i32 136, label %62
    i32 132, label %66
    i32 131, label %70
    i32 138, label %74
    i32 128, label %78
    i32 134, label %82
    i32 129, label %86
  ]

30:                                               ; preds = %25
  %31 = load i32, i32* @ngx_http_lua_get_method, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %94

34:                                               ; preds = %25
  %35 = load i32, i32* @ngx_http_lua_post_method, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %94

38:                                               ; preds = %25
  %39 = load i32, i32* @ngx_http_lua_put_method, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %94

42:                                               ; preds = %25
  %43 = load i32, i32* @ngx_http_lua_head_method, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %94

46:                                               ; preds = %25
  %47 = load i32, i32* @ngx_http_lua_delete_method, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %94

50:                                               ; preds = %25
  %51 = load i32, i32* @ngx_http_lua_options_method, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %94

54:                                               ; preds = %25
  %55 = load i32, i32* @ngx_http_lua_mkcol_method, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %94

58:                                               ; preds = %25
  %59 = load i32, i32* @ngx_http_lua_copy_method, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %94

62:                                               ; preds = %25
  %63 = load i32, i32* @ngx_http_lua_move_method, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %94

66:                                               ; preds = %25
  %67 = load i32, i32* @ngx_http_lua_propfind_method, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %94

70:                                               ; preds = %25
  %71 = load i32, i32* @ngx_http_lua_proppatch_method, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %94

74:                                               ; preds = %25
  %75 = load i32, i32* @ngx_http_lua_lock_method, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %94

78:                                               ; preds = %25
  %79 = load i32, i32* @ngx_http_lua_unlock_method, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %94

82:                                               ; preds = %25
  %83 = load i32, i32* @ngx_http_lua_patch_method, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %94

86:                                               ; preds = %25
  %87 = load i32, i32* @ngx_http_lua_trace_method, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %25
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32*, i8*, ...) @luaL_error(i32* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %90, %22, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
