; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_discard_body.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_discard_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"expecting 0 arguments but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request object not found\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to discard request body\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_discard_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_discard_body(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i32*, i8*, ...) @luaL_error(i32* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @ngx_http_lua_get_req(i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @luaL_error(i32* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %15
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ngx_http_lua_check_fake_request(i32* %24, i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @ngx_http_discard_request_body(i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @NGX_ERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %23
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 (i32*, i8*, ...) @luaL_error(i32* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36, %20, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, i32*) #1

declare dso_local i64 @ngx_http_discard_request_body(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
