; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lencode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_ud = type { i32, i64, i64, i64, i64, i64, i32*, %struct.sproto_type*, i32* }
%struct.sproto_type = type { i32 }

@LUA_TNIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@encode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lencode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.encode_ud, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sproto_type*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_upvalueindex(i32 1)
  %12 = call i8* @lua_touserdata(i32* %10, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_upvalueindex(i32 2)
  %15 = call i32 @lua_tointeger(i32* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @lua_touserdata(i32* %16, i32 1)
  %18 = bitcast i8* %17 to %struct.sproto_type*
  store %struct.sproto_type* %18, %struct.sproto_type** %8, align 8
  %19 = load %struct.sproto_type*, %struct.sproto_type** %8, align 8
  %20 = icmp eq %struct.sproto_type* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @LUA_TNIL, align 4
  %25 = call i32 @luaL_checktype(i32* %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushstring(i32* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %66

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 8
  store i32* %29, i32** %30, align 8
  %31 = load %struct.sproto_type*, %struct.sproto_type** %8, align 8
  %32 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 7
  store %struct.sproto_type* %31, %struct.sproto_type** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %65, %28
  %36 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @lua_settop(i32* %39, i32 %40)
  %42 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %4, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.sproto_type*, %struct.sproto_type** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @encode, align 4
  %49 = call i32 @sproto_encode(%struct.sproto_type* %45, i8* %46, i32 %47, i32 %48, %struct.encode_ud* %4)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %35
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 2
  %57 = call i8* @expand_buffer(i32* %53, i32 %54, i32 %56)
  store i8* %57, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %6, align 4
  br label %65

60:                                               ; preds = %35
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @lua_pushlstring(i32* %61, i8* %62, i32 %63)
  store i32 1, i32* %2, align 4
  br label %66

65:                                               ; preds = %52
  br label %35

66:                                               ; preds = %60, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @sproto_encode(%struct.sproto_type*, i8*, i32, i32, %struct.encode_ud*) #1

declare dso_local i8* @expand_buffer(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
