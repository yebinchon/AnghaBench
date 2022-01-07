; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_net.c_vlclua_net_listen_tcp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_net.c_vlclua_net_listen_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Cannot listen on %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"net_listen\00", align 1
@vlclua_net_listen_reg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@vlclua_net_listen_close = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_net_listen_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_net_listen_tcp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @vlclua_get_this(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_checkstring(i32* %12, i32 1)
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_checkinteger(i32* %14, i32 2)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @net_ListenTCP(i32* %16, i8* %17, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %67, %27
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vlclua_fd_map(i32* %36, i32 %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %66

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vlclua_fd_get_lua(i32* %50, i32 %56)
  %58 = call i32 @vlclua_fd_unmap(i32* %49, i32 %57)
  br label %45

59:                                               ; preds = %45
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @net_ListenClose(i32* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @luaL_error(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %94

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %28

70:                                               ; preds = %28
  %71 = load i32*, i32** %3, align 8
  %72 = call i32** @lua_newuserdata(i32* %71, i32 8)
  store i32** %72, i32*** %9, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32**, i32*** %9, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i64 @luaL_newmetatable(i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @lua_newtable(i32* %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* @vlclua_net_listen_reg, align 4
  %83 = call i32 @luaL_register(i32* %81, i32* null, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @lua_setfield(i32* %84, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @vlclua_net_listen_close, align 4
  %88 = call i32 @lua_pushcfunction(i32* %86, i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @lua_setfield(i32* %89, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %78, %70
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @lua_setmetatable(i32* %92, i32 -2)
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %59, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32* @net_ListenTCP(i32*, i8*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @vlclua_fd_map(i32*, i32) #1

declare dso_local i32 @vlclua_fd_unmap(i32*, i32) #1

declare dso_local i32 @vlclua_fd_get_lua(i32*, i32) #1

declare dso_local i32 @net_ListenClose(i32*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
