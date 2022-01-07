; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_global_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_global_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, %struct.addrinfo*, i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"host and serv cannot be both nil\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @inet_global_getnameinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_global_getnameinfo(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32, i32* @NI_MAXHOST, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @NI_MAXSERV, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @luaL_optstring(i32* %22, i32 1, i32* null)
  store i8* %23, i8** %12, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @luaL_optstring(i32* %24, i32 2, i32* null)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28, %1
  %35 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 32)
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @PF_UNSPEC, align 4
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @getaddrinfo(i8* %40, i8* %41, %struct.addrinfo* %9, %struct.addrinfo** %10)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushnil(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @socket_gaistrerror(i32 %49)
  %51 = call i32 @lua_pushstring(i32* %48, i8* %50)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %108

52:                                               ; preds = %34
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_newtable(i32* %53)
  store i32 1, i32* %7, align 4
  %55 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %55, %struct.addrinfo** %11, align 8
  br label %56

56:                                               ; preds = %93, %52
  %57 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %58 = icmp ne %struct.addrinfo* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = trunc i64 %16 to i32
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = trunc i64 %20 to i32
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = call i32 @getnameinfo(i32 %62, i32 %66, i8* %18, i32 %73, i8* %21, i32 %80, i32 0)
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @lua_pushnumber(i32* %85, i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @lua_pushstring(i32* %88, i8* %18)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_settable(i32* %90, i32 -3)
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 2
  %98 = load %struct.addrinfo*, %struct.addrinfo** %97, align 8
  store %struct.addrinfo* %98, %struct.addrinfo** %11, align 8
  br label %56

99:                                               ; preds = %56
  %100 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %101 = call i32 @freeaddrinfo(%struct.addrinfo* %100)
  %102 = load i8*, i8** %13, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @lua_pushstring(i32* %105, i8* %21)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %108

107:                                              ; preds = %99
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %107, %104, %45
  %109 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @luaL_optstring(i32*, i32, i32*) #2

declare dso_local i32 @luaL_error(i32*, i8*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i8* @socket_gaistrerror(i32) #2

declare dso_local i32 @lua_newtable(i32*) #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @lua_pushnumber(i32*, i32) #2

declare dso_local i32 @lua_settable(i32*, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
