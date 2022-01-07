; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_append_table.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_append_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32 }

@MAX_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Too depth while encoding bson\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"__len should return integer\00", align 1
@BSON_ARRAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@BSON_DOCUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i32*, i8*, i64, i32)* @append_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_table(%struct.bson* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.bson*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bson* %0, %struct.bson** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @MAX_DEPTH, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @luaL_checkstack(i32* %19, i32 16, i32* null)
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @luaL_getmetafield(i32* %21, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @LUA_TNIL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @lua_pushvalue(i32* %26, i32 -2)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @lua_call(i32* %28, i32 1, i32 1)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @lua_isinteger(i32* %30, i32 -1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @luaL_error(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @lua_tointeger(i32* %37, i32 -1)
  store i64 %38, i64* %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @lua_pop(i32* %39, i32 1)
  %41 = load %struct.bson*, %struct.bson** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @BSON_ARRAY, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @append_key(%struct.bson* %41, i32* %42, i32 %43, i8* %44, i64 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.bson*, %struct.bson** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @pack_array(i32* %47, %struct.bson* %48, i32 %49, i64 %50)
  br label %98

52:                                               ; preds = %18
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @luaL_getmetafield(i32* %53, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i64, i64* @LUA_TNIL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.bson*, %struct.bson** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @BSON_DOCUMENT, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @append_key(%struct.bson* %58, i32* %59, i32 %60, i8* %61, i64 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.bson*, %struct.bson** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @pack_meta_dict(i32* %64, %struct.bson* %65, i32 %66)
  br label %97

68:                                               ; preds = %52
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @is_rawarray(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.bson*, %struct.bson** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @BSON_ARRAY, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @append_key(%struct.bson* %73, i32* %74, i32 %75, i8* %76, i64 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.bson*, %struct.bson** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @lua_rawlen(i32* %82, i32 -1)
  %84 = call i32 @pack_array(i32* %79, %struct.bson* %80, i32 %81, i64 %83)
  br label %96

85:                                               ; preds = %68
  %86 = load %struct.bson*, %struct.bson** %6, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @BSON_DOCUMENT, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @append_key(%struct.bson* %86, i32* %87, i32 %88, i8* %89, i64 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.bson*, %struct.bson** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pack_simple_dict(i32* %92, %struct.bson* %93, i32 %94)
  br label %96

96:                                               ; preds = %85, %72
  br label %97

97:                                               ; preds = %96, %57
  br label %98

98:                                               ; preds = %97, %36
  ret void
}

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i32*) #1

declare dso_local i64 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @append_key(%struct.bson*, i32*, i32, i8*, i64) #1

declare dso_local i32 @pack_array(i32*, %struct.bson*, i32, i64) #1

declare dso_local i32 @pack_meta_dict(i32*, %struct.bson*, i32) #1

declare dso_local i64 @is_rawarray(i32*) #1

declare dso_local i64 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @pack_simple_dict(i32*, %struct.bson*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
