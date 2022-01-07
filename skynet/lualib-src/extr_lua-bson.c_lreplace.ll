; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lreplace.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"call makeindex first\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't replace key : %s\00", align 1
@BSON_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%f must be a 32bit integer \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%f must be a 64bit integer \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can't replace type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lreplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lreplace(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bson, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_getuservalue(i32* %11, i32 1)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_istable(i32* %13, i32 -1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @luaL_error(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 2)
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_rawget(i32* %22, i32 -2)
  %24 = load i64, i64* @LUA_TNUMBER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_tostring(i32* %28, i32 2)
  %30 = call i32 (i32*, i8*, ...) @luaL_error(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %19
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @lua_tointeger(i32* %32, i32 -1)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BSON_TYPE_SHIFT, align 4
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %35, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BSON_TYPE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32* @lua_touserdata(i32* %43, i32 1)
  store i32* %44, i32** %7, align 8
  %45 = getelementptr inbounds %struct.bson, %struct.bson* %8, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.bson, %struct.bson* %8, i32 0, i32 1
  store i32* inttoptr (i64 16 to i32*), i32** %46, align 8
  %47 = getelementptr inbounds %struct.bson, %struct.bson* %8, i32 0, i32 2
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = ptrtoint i32* %51 to i32
  store i32 %52, i32* %47, align 8
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %94 [
    i32 129, label %54
    i32 134, label %58
    i32 130, label %62
    i32 133, label %62
    i32 128, label %62
    i32 132, label %66
    i32 131, label %80
  ]

54:                                               ; preds = %31
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @luaL_checknumber(i32* %55, i32 3)
  %57 = call i32 @write_double(%struct.bson* %8, i32 %56)
  br label %98

58:                                               ; preds = %31
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_toboolean(i32* %59, i32 3)
  %61 = call i32 @write_byte(%struct.bson* %8, i32 %60)
  br label %98

62:                                               ; preds = %31, %31, %31
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @replace_object(i32* %63, i32 %64, %struct.bson* %8)
  br label %98

66:                                               ; preds = %31
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @lua_isinteger(i32* %67, i32 3)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @lua_tonumber(i32* %72, i32 3)
  %74 = call i32 (i32*, i8*, ...) @luaL_error(i32* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32*, i32** %3, align 8
  %77 = call i8* @lua_tointeger(i32* %76, i32 3)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @write_int32(%struct.bson* %8, i8* %78)
  br label %98

80:                                               ; preds = %31
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @lua_isinteger(i32* %81, i32 3)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @lua_tonumber(i32* %86, i32 3)
  %88 = call i32 (i32*, i8*, ...) @luaL_error(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32*, i32** %3, align 8
  %91 = call i8* @lua_tointeger(i32* %90, i32 3)
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @write_int64(%struct.bson* %8, i8* %92)
  br label %98

94:                                               ; preds = %31
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i32*, i8*, ...) @luaL_error(i32* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %89, %75, %62, %58, %54
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %26, %16
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @lua_getuservalue(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i8* @lua_tointeger(i32*, i32) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @write_double(%struct.bson*, i32) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @write_byte(%struct.bson*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @replace_object(i32*, i32, %struct.bson*) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @write_int32(%struct.bson*, i8*) #1

declare dso_local i32 @write_int64(%struct.bson*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
