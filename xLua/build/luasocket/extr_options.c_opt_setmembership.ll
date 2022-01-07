; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_setmembership.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_setmembership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mreq = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"multiaddr\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"string 'multiaddr' field expected\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid 'multiaddr' ip address\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"string 'interface' field expected\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"invalid 'interface' ip address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @opt_setmembership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_setmembership(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_mreq, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @lua_istable(i32* %10, i32 3)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @LUA_TTABLE, align 4
  %17 = call i32 @lua_typename(i32* %15, i32 %16)
  %18 = call i32 @auxiliar_typeerror(i32* %14, i32 3, i32 %17)
  br label %19

19:                                               ; preds = %13, %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @lua_pushstring(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @lua_gettable(i32* %22, i32 3)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @lua_isstring(i32* %24, i32 -1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @luaL_argerror(i32* %28, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @lua_tostring(i32* %31, i32 -1)
  %33 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %9, i32 0, i32 1
  %34 = call i32 @inet_aton(i32 %32, %struct.TYPE_2__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @luaL_argerror(i32* %37, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @lua_pushstring(i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @lua_gettable(i32* %42, i32 3)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @lua_isstring(i32* %44, i32 -1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @luaL_argerror(i32* %48, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32, i32* @INADDR_ANY, align 4
  %52 = call i32 @htonl(i32 %51)
  %53 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %9, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @lua_tostring(i32* %55, i32 -1)
  %57 = call i64 @strcmp(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @lua_tostring(i32* %60, i32 -1)
  %62 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %9, i32 0, i32 0
  %63 = call i32 @inet_aton(i32 %61, %struct.TYPE_2__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @luaL_argerror(i32* %66, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59, %50
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = bitcast %struct.ip_mreq* %9 to i8*
  %74 = call i32 @opt_set(i32* %69, i32 %70, i32 %71, i32 %72, i8* %73, i32 8)
  ret i32 %74
}

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @auxiliar_typeerror(i32*, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @inet_aton(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @opt_set(i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
