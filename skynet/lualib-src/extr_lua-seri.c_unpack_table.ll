; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_unpack_table.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_unpack_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32 }

@MAX_COOKIE = common dso_local global i32 0, align 4
@TYPE_NUMBER = common dso_local global i32 0, align 4
@TYPE_NUMBER_REAL = common dso_local global i32 0, align 4
@LUA_MINSTACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.read_block*, i32)* @unpack_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_table(i32* %0, %struct.read_block* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.read_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.read_block* %1, %struct.read_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_COOKIE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load %struct.read_block*, %struct.read_block** %5, align 8
  %17 = call i32* @rb_read(%struct.read_block* %16, i32 4)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.read_block*, %struct.read_block** %5, align 8
  %23 = call i32 @invalid_stream(i32* %21, %struct.read_block* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 7
  %31 = load i32, i32* @TYPE_NUMBER, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TYPE_NUMBER_REAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %24
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.read_block*, %struct.read_block** %5, align 8
  %40 = call i32 @invalid_stream(i32* %38, %struct.read_block* %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.read_block*, %struct.read_block** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @get_integer(i32* %42, %struct.read_block* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %3
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @LUA_MINSTACK, align 4
  %49 = call i32 @luaL_checkstack(i32* %47, i32 %48, i32* null)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @lua_createtable(i32* %50, i32 %51, i32 0)
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %64, %46
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.read_block*, %struct.read_block** %5, align 8
  %60 = call i32 @unpack_one(i32* %58, %struct.read_block* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @lua_rawseti(i32* %61, i32 -2, i32 %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %53

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.read_block*, %struct.read_block** %5, align 8
  %71 = call i32 @unpack_one(i32* %69, %struct.read_block* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @lua_isnil(i32* %72, i32 -1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @lua_pop(i32* %76, i32 1)
  ret void

78:                                               ; preds = %68
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.read_block*, %struct.read_block** %5, align 8
  %81 = call i32 @unpack_one(i32* %79, %struct.read_block* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @lua_rawset(i32* %82, i32 -3)
  br label %68
}

declare dso_local i32* @rb_read(%struct.read_block*, i32) #1

declare dso_local i32 @invalid_stream(i32*, %struct.read_block*) #1

declare dso_local i32 @get_integer(i32*, %struct.read_block*, i32) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @unpack_one(i32*, %struct.read_block*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
