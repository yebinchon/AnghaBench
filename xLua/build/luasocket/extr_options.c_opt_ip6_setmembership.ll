; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_ip6_setmembership.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_ip6_setmembership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_mreq = type { i32, i32 }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"multiaddr\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"string 'multiaddr' field expected\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid 'multiaddr' ip address\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"number 'interface' field expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @opt_ip6_setmembership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_ip6_setmembership(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6_mreq, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.ipv6_mreq* %9, i32 0, i32 8)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lua_istable(i32* %11, i32 3)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @LUA_TTABLE, align 4
  %18 = call i32 @lua_typename(i32* %16, i32 %17)
  %19 = call i32 @auxiliar_typeerror(i32* %15, i32 3, i32 %18)
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @lua_pushstring(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @lua_gettable(i32* %23, i32 3)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lua_isstring(i32* %25, i32 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @luaL_argerror(i32* %29, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* @AF_INET6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @lua_tostring(i32* %33, i32 -1)
  %35 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %9, i32 0, i32 1
  %36 = call i32 @inet_pton_w32(i32 %32, i32 %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @luaL_argerror(i32* %39, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @lua_pushstring(i32* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @lua_gettable(i32* %44, i32 3)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @lua_isnil(i32* %46, i32 -1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @lua_isnumber(i32* %50, i32 -1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @lua_tonumber(i32* %54, i32 -1)
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @luaL_argerror(i32* %59, i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = bitcast %struct.ipv6_mreq* %9 to i8*
  %68 = call i32 @opt_set(i32* %63, i32 %64, i32 %65, i32 %66, i8* %67, i32 8)
  ret i32 %68
}

declare dso_local i32 @memset(%struct.ipv6_mreq*, i32, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @auxiliar_typeerror(i32*, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @inet_pton_w32(i32, i32, i32*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @opt_set(i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
