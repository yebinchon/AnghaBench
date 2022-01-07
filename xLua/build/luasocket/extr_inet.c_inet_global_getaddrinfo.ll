; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_global_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_global_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, %struct.addrinfo*, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @inet_global_getaddrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_global_getaddrinfo(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checkstring(i32* %13, i32 1)
  store i8* %14, i8** %4, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = call i32 @memset(%struct.addrinfo* %7, i32 0, i32 40)
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @PF_UNSPEC, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @getaddrinfo(i8* %20, i32* null, %struct.addrinfo* %7, %struct.addrinfo** %6)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushnil(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @socket_gaistrerror(i32 %28)
  %30 = call i32 @lua_pushstring(i32* %27, i8* %29)
  store i32 2, i32* %2, align 4
  br label %107

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_newtable(i32* %32)
  %34 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %34, %struct.addrinfo** %5, align 8
  br label %35

35:                                               ; preds = %100, %31
  %36 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %37 = icmp ne %struct.addrinfo* %36, null
  br i1 %37, label %38, label %104

38:                                               ; preds = %35
  %39 = load i32, i32* @NI_MAXHOST, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %10, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = trunc i64 %40 to i32
  %51 = load i32, i32* @NI_NUMERICHOST, align 4
  %52 = call i32 @getnameinfo(i32 %45, i32 %49, i8* %42, i32 %50, i32* null, i32 0, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %38
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_pushnil(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @socket_gaistrerror(i32 %59)
  %61 = call i32 @lua_pushstring(i32* %58, i8* %60)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

62:                                               ; preds = %38
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @lua_pushnumber(i32* %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_newtable(i32* %66)
  %68 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %85 [
    i32 129, label %71
    i32 128, label %78
  ]

71:                                               ; preds = %62
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @lua_pushliteral(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @lua_pushliteral(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_settable(i32* %76, i32 -3)
  br label %85

78:                                               ; preds = %62
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @lua_pushliteral(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @lua_pushliteral(i32* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @lua_settable(i32* %83, i32 -3)
  br label %85

85:                                               ; preds = %62, %78, %71
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @lua_pushliteral(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @lua_pushstring(i32* %88, i8* %42)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_settable(i32* %90, i32 -3)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @lua_settable(i32* %92, i32 -3)
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %85, %55
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %12, align 4
  switch i32 %98, label %109 [
    i32 0, label %99
    i32 1, label %107
  ]

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 3
  %103 = load %struct.addrinfo*, %struct.addrinfo** %102, align 8
  store %struct.addrinfo* %103, %struct.addrinfo** %5, align 8
  br label %35

104:                                              ; preds = %35
  %105 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %106 = call i32 @freeaddrinfo(%struct.addrinfo* %105)
  store i32 1, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %96, %24
  %108 = load i32, i32* %2, align 4
  ret i32 %108

109:                                              ; preds = %96
  unreachable
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @socket_gaistrerror(i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
