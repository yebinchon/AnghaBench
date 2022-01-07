; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lprotocol.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lprotocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32 }
%struct.sproto_type = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Need a sproto_type object\00", align 1
@LUA_TNUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Should be number or string\00", align 1
@SPROTO_REQUEST = common dso_local global i32 0, align 4
@SPROTO_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lprotocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lprotocol(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sproto*, align 8
  %5 = alloca %struct.sproto_type*, align 8
  %6 = alloca %struct.sproto_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.sproto* @lua_touserdata(i32* %11, i32 1)
  store %struct.sproto* %12, %struct.sproto** %4, align 8
  %13 = load %struct.sproto*, %struct.sproto** %4, align 8
  %14 = icmp eq %struct.sproto* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_argerror(i32* %16, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %94

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_type(i32* %19, i32 2)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LUA_TNUMBER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_tointeger(i32* %25, i32 2)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sproto*, %struct.sproto** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @sproto_protoname(%struct.sproto* %27, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %94

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @lua_pushstring(i32* %34, i8* %35)
  br label %56

37:                                               ; preds = %18
  %38 = load i32*, i32** %3, align 8
  %39 = call i8* @lua_tostring(i32* %38, i32 2)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @luaL_argerror(i32* %43, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %94

45:                                               ; preds = %37
  %46 = load %struct.sproto*, %struct.sproto** %4, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @sproto_prototag(%struct.sproto* %46, i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %94

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @lua_pushinteger(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %33
  %57 = load %struct.sproto*, %struct.sproto** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SPROTO_REQUEST, align 4
  %60 = call %struct.sproto_type* @sproto_protoquery(%struct.sproto* %57, i32 %58, i32 %59)
  store %struct.sproto_type* %60, %struct.sproto_type** %5, align 8
  %61 = load %struct.sproto_type*, %struct.sproto_type** %5, align 8
  %62 = icmp eq %struct.sproto_type* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @lua_pushnil(i32* %64)
  br label %70

66:                                               ; preds = %56
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.sproto_type*, %struct.sproto_type** %5, align 8
  %69 = call i32 @lua_pushlightuserdata(i32* %67, %struct.sproto_type* %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.sproto*, %struct.sproto** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SPROTO_RESPONSE, align 4
  %74 = call %struct.sproto_type* @sproto_protoquery(%struct.sproto* %71, i32 %72, i32 %73)
  store %struct.sproto_type* %74, %struct.sproto_type** %6, align 8
  %75 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %76 = icmp eq %struct.sproto_type* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.sproto*, %struct.sproto** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @sproto_protoresponse(%struct.sproto* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @lua_pushlightuserdata(i32* %83, %struct.sproto_type* null)
  br label %88

85:                                               ; preds = %77
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @lua_pushnil(i32* %86)
  br label %88

88:                                               ; preds = %85, %82
  br label %93

89:                                               ; preds = %70
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %92 = call i32 @lua_pushlightuserdata(i32* %90, %struct.sproto_type* %91)
  br label %93

93:                                               ; preds = %89, %88
  store i32 3, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %51, %42, %32, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.sproto* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @sproto_protoname(%struct.sproto*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @sproto_prototag(%struct.sproto*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local %struct.sproto_type* @sproto_protoquery(%struct.sproto*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.sproto_type*) #1

declare dso_local i64 @sproto_protoresponse(%struct.sproto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
