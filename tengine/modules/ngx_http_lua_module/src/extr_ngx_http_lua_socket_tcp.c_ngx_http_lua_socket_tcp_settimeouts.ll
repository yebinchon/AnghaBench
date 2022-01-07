; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_settimeouts.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_settimeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [79 x i8] c"ngx.socket settimout: expecting 4 arguments (including the object) but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bad timeout value\00", align 1
@SOCKET_READ_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SOCKET_SEND_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SOCKET_CONNECT_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_tcp_settimeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_settimeouts(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_gettop(i32* %15)
  %17 = call i32 (i32*, i8*, ...) @luaL_error(i32* %14, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %2, align 4
  br label %118

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @lua_tonumber(i32* %19, i32 2)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 31
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @luaL_error(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %118

28:                                               ; preds = %18
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @lua_tonumber(i32* %29, i32 3)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 31
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @luaL_error(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %118

38:                                               ; preds = %28
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @lua_tonumber(i32* %39, i32 4)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 31
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @luaL_error(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %2, align 4
  br label %118

48:                                               ; preds = %38
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @SOCKET_READ_TIMEOUT_INDEX, align 4
  %51 = call i32 @lua_rawseti(i32* %49, i32 1, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @SOCKET_SEND_TIMEOUT_INDEX, align 4
  %54 = call i32 @lua_rawseti(i32* %52, i32 1, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @SOCKET_CONNECT_TIMEOUT_INDEX, align 4
  %57 = call i32 @lua_rawseti(i32* %55, i32 1, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %60 = call i32 @lua_rawgeti(i32* %58, i32 1, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call %struct.TYPE_5__* @lua_touserdata(i32* %61, i32 -1)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %117

65:                                               ; preds = %48
  %66 = load i32, i32* %5, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  br label %82

74:                                               ; preds = %65
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  br label %99

91:                                               ; preds = %82
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %91, %85
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %116

108:                                              ; preds = %99
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %108, %102
  br label %117

117:                                              ; preds = %116, %48
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %45, %35, %25, %13
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @lua_touserdata(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
