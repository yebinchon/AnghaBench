; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_update_cache.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy = type { i8*, i32 }
%struct.table = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NODECACHE = common dso_local global i32 0, align 4
@PROXYCACHE = common dso_local global i32 0, align 4
@LUA_TUSERDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @update_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cache(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.proxy*, align 8
  %11 = alloca %struct.table*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %14 = load i32, i32* @NODECACHE, align 4
  %15 = call i32 @lua_getfield(i32* %12, i32 %13, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %20 = load i32, i32* @PROXYCACHE, align 4
  %21 = call i32 @lua_getfield(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_newtable(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %30

30:                                               ; preds = %94, %3
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @lua_next(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_pushvalue(i32* %36, i32 -1)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @lua_rawget(i32* %38, i32 %39)
  %41 = load i64, i64* @LUA_TUSERDATA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = call %struct.proxy* @lua_touserdata(i32* %44, i32 -1)
  store %struct.proxy* %45, %struct.proxy** %10, align 8
  %46 = load %struct.proxy*, %struct.proxy** %10, align 8
  %47 = getelementptr inbounds %struct.proxy, %struct.proxy* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.proxy*, %struct.proxy** %10, align 8
  %54 = getelementptr inbounds %struct.proxy, %struct.proxy* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.proxy*, %struct.proxy** %10, align 8
  %57 = getelementptr inbounds %struct.proxy, %struct.proxy* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.table* @gettable(i8* %55, i32 %58)
  store %struct.table* %59, %struct.table** %11, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @lua_pop(i32* %60, i32 1)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @clear_table(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lua_upvalueindex(i32 1)
  %66 = call i32 @lua_pushvalue(i32* %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @lua_setmetatable(i32* %67, i32 -2)
  %69 = load %struct.table*, %struct.table** %11, align 8
  %70 = icmp ne %struct.table* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %51
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.table*, %struct.table** %11, align 8
  %75 = call i32 @lua_rawsetp(i32* %72, i32 %73, %struct.table* %74)
  br label %79

76:                                               ; preds = %51
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @lua_pop(i32* %77, i32 1)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @lua_pushvalue(i32* %80, i32 -1)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @lua_pushnil(i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @lua_rawset(i32* %84, i32 %85)
  br label %90

87:                                               ; preds = %43
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @lua_pop(i32* %88, i32 2)
  br label %90

90:                                               ; preds = %87, %79
  br label %94

91:                                               ; preds = %35
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @lua_pop(i32* %92, i32 2)
  br label %94

94:                                               ; preds = %91, %90
  br label %30

95:                                               ; preds = %30
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @lua_pushnil(i32* %96)
  br label %98

98:                                               ; preds = %103, %95
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @lua_next(i32* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @lua_pushvalue(i32* %104, i32 -2)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @lua_insert(i32* %106, i32 -2)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @lua_rawset(i32* %108, i32 %109)
  br label %98

111:                                              ; preds = %98
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @lua_pop(i32* %112, i32 3)
  ret void
}

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @lua_rawget(i32*, i32) #1

declare dso_local %struct.proxy* @lua_touserdata(i32*, i32) #1

declare dso_local %struct.table* @gettable(i8*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @clear_table(i32*) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawsetp(i32*, i32, %struct.table*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
