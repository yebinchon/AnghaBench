; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_luaseri_unpack.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_luaseri_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32 }

@LUA_TSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"deserialize null pointer\00", align 1
@LUA_MINSTACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaseri_unpack(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.read_block, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_isnoneornil(i32* %11, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_type(i32* %16, i32 1)
  %18 = load i64, i64* @LUA_TSTRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @lua_tolstring(i32* %21, i32 1, i64* %6)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @lua_touserdata(i32* %27, i32 1)
  store i8* %28, i8** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @luaL_checkinteger(i32* %29, i32 2)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %76

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @luaL_error(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_settop(i32* %42, i32 1)
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rball_init(%struct.read_block* %7, i8* %44, i32 %45)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %69, %41
  %48 = load i32, i32* %8, align 4
  %49 = srem i32 %48, 8
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @LUA_MINSTACK, align 4
  %54 = call i32 @luaL_checkstack(i32* %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %51, %47
  store i32 0, i32* %9, align 4
  %56 = call i32* @rb_read(%struct.read_block* %7, i32 4)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %72

60:                                               ; preds = %55
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 7
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 3
  %68 = call i32 @push_value(i32* %63, %struct.read_block* %7, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %47

72:                                               ; preds = %59
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_gettop(i32* %73)
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %38, %34, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @rball_init(%struct.read_block*, i8*, i32) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i32*) #1

declare dso_local i32* @rb_read(%struct.read_block*, i32) #1

declare dso_local i32 @push_value(i32*, %struct.read_block*, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
