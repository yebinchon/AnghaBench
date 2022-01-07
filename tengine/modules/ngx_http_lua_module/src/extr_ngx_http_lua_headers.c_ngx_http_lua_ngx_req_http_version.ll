; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_req_http_version.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_req_http_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_http_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_http_version(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_4__* @ngx_http_lua_get_req(i32* %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i32 @ngx_http_lua_check_fake_request(i32* %13, %struct.TYPE_4__* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 128, label %19
    i32 131, label %22
    i32 130, label %25
    i32 129, label %28
  ]

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushnumber(i32* %20, double 9.000000e-01)
  br label %34

22:                                               ; preds = %12
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushnumber(i32* %23, double 1.000000e+00)
  br label %34

25:                                               ; preds = %12
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushnumber(i32* %26, double 1.100000e+00)
  br label %34

28:                                               ; preds = %12
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushnumber(i32* %29, double 2.000000e+00)
  br label %34

31:                                               ; preds = %12
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_pushnil(i32* %32)
  br label %34

34:                                               ; preds = %31, %28, %25, %22, %19
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_4__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
