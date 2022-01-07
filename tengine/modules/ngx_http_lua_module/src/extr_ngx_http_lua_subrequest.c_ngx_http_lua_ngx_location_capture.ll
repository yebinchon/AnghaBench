; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_ngx_location_capture.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_ngx_location_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"expecting one or two arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_location_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_location_capture(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_gettop(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %9, %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lua_createtable(i32* %16, i32 %17, i32 0)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_insert(i32* %19, i32 1)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_rawseti(i32* %24, i32 1, i32 1)
  br label %31

26:                                               ; preds = %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_rawseti(i32* %27, i32 1, i32 2)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_rawseti(i32* %29, i32 1, i32 1)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_createtable(i32* %32, i32 1, i32 0)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_insert(i32* %34, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_rawseti(i32* %36, i32 1, i32 1)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ngx_http_lua_ngx_location_capture_multi(i32* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_ngx_location_capture_multi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
