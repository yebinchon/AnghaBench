; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_error_retval_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_error_retval_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@NGX_MAX_ERROR_STR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lua udp socket error retval handler\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_RESOLVER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"partial write\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_CLOSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_NOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*)* @ngx_http_lua_socket_error_retval_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_error_retval_handler(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @NGX_MAX_ERROR_STR, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ngx_log_debug0(i32 %16, i32 %21, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_RESOLVER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %119

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @lua_pushnil(i32* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @lua_pushliteral(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %118

42:                                               ; preds = %30
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_TIMEOUT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @lua_pushliteral(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %117

52:                                               ; preds = %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_CLOSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @lua_pushliteral(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %116

62:                                               ; preds = %52
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @lua_pushliteral(i32* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %115

72:                                               ; preds = %62
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_NOMEM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @lua_pushliteral(i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %114

82:                                               ; preds = %72
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = mul nuw i64 4, %13
  %92 = trunc i64 %91 to i32
  %93 = call i32* @ngx_strerror_r(i64 %90, i32* %15, i32 %92)
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = ptrtoint i32* %94 to i64
  %96 = ptrtoint i32* %15 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @ngx_strlow(i32* %15, i32* %15, i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = bitcast i32* %15 to i8*
  %103 = load i32*, i32** %10, align 8
  %104 = ptrtoint i32* %103 to i64
  %105 = ptrtoint i32* %15 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32 @lua_pushlstring(i32* %101, i8* %102, i32 %108)
  br label %113

110:                                              ; preds = %82
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @lua_pushliteral(i32* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %87
  br label %114

114:                                              ; preds = %113, %79
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115, %59
  br label %117

117:                                              ; preds = %116, %49
  br label %118

118:                                              ; preds = %117, %39
  store i32 2, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %29
  %120 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #2

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
