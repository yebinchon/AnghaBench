; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c_lnew_ctx.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c_lnew_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx = type { i32 }
%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [30 x i8] c"SSL_CTX_new client faild. %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"_TLS_SSLCTX_METATABLE_\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"set_ciphers\00", align 1
@_lctx_ciphers = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"set_cert\00", align 1
@_lctx_cert = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@_lctx_gc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lnew_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnew_ctx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ssl_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca [3 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @lua_newuserdata(i32* %7, i32 4)
  %9 = inttoptr i64 %8 to %struct.ssl_ctx*
  store %struct.ssl_ctx* %9, %struct.ssl_ctx** %3, align 8
  %10 = call i32 (...) @SSLv23_method()
  %11 = call i32 @SSL_CTX_new(i32 %10)
  %12 = load %struct.ssl_ctx*, %struct.ssl_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ssl_ctx, %struct.ssl_ctx* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ssl_ctx*, %struct.ssl_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ssl_ctx, %struct.ssl_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = call i32 (...) @ERR_get_error()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %22 = call i32 @ERR_error_string_n(i32 %20, i8* %21, i32 256)
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %25 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @luaL_newmetatable(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %34 = load i32*, i32** @_lctx_ciphers, align 8
  store i32* %34, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %38 = load i32*, i32** @_lctx_cert, align 8
  store i32* %38, i32** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* null, i8** %40, align 16
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %44 = call i32 @luaL_newlib(i32* %42, %struct.TYPE_3__* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @lua_setfield(i32* %45, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @_lctx_gc, align 4
  %49 = call i32 @lua_pushcfunction(i32* %47, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @lua_setfield(i32* %50, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %30, %26
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @lua_setmetatable(i32* %53, i32 -2)
  ret i32 1
}

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_method(...) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @ERR_error_string_n(i32, i8*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @luaL_newlib(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
