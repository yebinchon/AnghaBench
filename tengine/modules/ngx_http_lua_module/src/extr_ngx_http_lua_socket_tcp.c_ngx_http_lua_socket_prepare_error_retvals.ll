; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_prepare_error_retvals.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_prepare_error_retvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@NGX_MAX_ERROR_STR = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_RESOLVER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_SSL = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"client aborted\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32)* @ngx_http_lua_socket_prepare_error_retvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_prepare_error_retvals(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @NGX_MAX_ERROR_STR, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_RESOLVER, align 4
  %20 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_SSL, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 2, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %104

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @lua_pushnil(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_TIMEOUT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @lua_pushliteral(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %103

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_CLOSED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @lua_pushliteral(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %102

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @lua_pushliteral(i32* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %101

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_NOMEM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @lua_pushliteral(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %100

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @lua_pushliteral(i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %99

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul nuw i64 4, %15
  %77 = trunc i64 %76 to i32
  %78 = call i32* @ngx_strerror_r(i64 %75, i32* %17, i32 %77)
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = ptrtoint i32* %79 to i64
  %81 = ptrtoint i32* %17 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @ngx_strlow(i32* %17, i32* %17, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = bitcast i32* %17 to i8*
  %88 = load i32*, i32** %12, align 8
  %89 = ptrtoint i32* %88 to i64
  %90 = ptrtoint i32* %17 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @lua_pushlstring(i32* %86, i8* %87, i32 %93)
  br label %98

95:                                               ; preds = %67
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @lua_pushliteral(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %72
  br label %99

99:                                               ; preds = %98, %64
  br label %100

100:                                              ; preds = %99, %56
  br label %101

101:                                              ; preds = %100, %48
  br label %102

102:                                              ; preds = %101, %40
  br label %103

103:                                              ; preds = %102, %32
  store i32 2, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %104

104:                                              ; preds = %103, %24
  %105 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_pushliteral(i32*, i8*) #2

declare dso_local i32* @ngx_strerror_r(i64, i32*, i32) #2

declare dso_local i32 @ngx_strlow(i32*, i32*, i32) #2

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
