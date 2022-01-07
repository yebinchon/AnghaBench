; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c_lnew_tls.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c_lnew_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }
%struct.ssl_ctx = type { i32 }
%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"invalid method:%s e.g[server, client]\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"_TLS_CONTEXT_METATABLE_\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@_ltls_context_close = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"finished\00", align 1
@_ltls_context_finished = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@_ltls_context_handshake = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@_ltls_context_read = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@_ltls_context_write = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lnew_tls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnew_tls(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssl_ctx*, align 8
  %6 = alloca [6 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @lua_newuserdata(i32* %7, i32 4)
  %9 = inttoptr i64 %8 to %struct.tls_context*
  store %struct.tls_context* %9, %struct.tls_context** %3, align 8
  %10 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %11 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @luaL_optstring(i32* %12, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.ssl_ctx* @_check_sslctx(i32* %14, i32 2)
  store %struct.ssl_ctx* %15, %struct.ssl_ctx** %5, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_pushvalue(i32* %16, i32 2)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_setuservalue(i32* %18, i32 -2)
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %26 = load %struct.ssl_ctx*, %struct.ssl_ctx** %5, align 8
  %27 = call i32 @_init_client_context(i32* %24, %struct.tls_context* %25, %struct.ssl_ctx* %26)
  br label %42

28:                                               ; preds = %1
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %2, align 8
  %34 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %35 = load %struct.ssl_ctx*, %struct.ssl_ctx** %5, align 8
  %36 = call i32 @_init_server_context(i32* %33, %struct.tls_context* %34, %struct.ssl_ctx* %35)
  br label %41

37:                                               ; preds = %28
  %38 = load i32*, i32** %2, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @luaL_error(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %32
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @luaL_newmetatable(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %48, align 16
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %50 = load i32*, i32** @_ltls_context_close, align 8
  store i32* %50, i32** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %52, align 16
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %54 = load i32*, i32** @_ltls_context_finished, align 8
  store i32* %54, i32** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %56, align 16
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %58 = load i32*, i32** @_ltls_context_handshake, align 8
  store i32* %58, i32** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %60, align 16
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %62 = load i32*, i32** @_ltls_context_read, align 8
  store i32* %62, i32** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %64, align 16
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %66 = load i32*, i32** @_ltls_context_write, align 8
  store i32* %66, i32** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* null, i8** %68, align 16
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %72 = call i32 @luaL_newlib(i32* %70, %struct.TYPE_3__* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @lua_setfield(i32* %73, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %75 = load i32*, i32** %2, align 8
  %76 = load i32*, i32** @_ltls_context_close, align 8
  %77 = call i32 @lua_pushcfunction(i32* %75, i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @lua_setfield(i32* %78, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %80

80:                                               ; preds = %46, %42
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @lua_setmetatable(i32* %81, i32 -2)
  ret i32 1
}

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local %struct.ssl_ctx* @_check_sslctx(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setuservalue(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @_init_client_context(i32*, %struct.tls_context*, %struct.ssl_ctx*) #1

declare dso_local i32 @_init_server_context(i32*, %struct.tls_context*, %struct.ssl_ctx*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @luaL_newlib(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
