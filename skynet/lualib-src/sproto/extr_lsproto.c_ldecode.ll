; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_ldecode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_ldecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_type = type { i32 }
%struct.decode_ud = type { i32, i32, i64, i64, i32*, i64, i32* }

@decode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldecode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sproto_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.decode_ud, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.sproto_type* @lua_touserdata(i32* %9, i32 1)
  store %struct.sproto_type* %10, %struct.sproto_type** %4, align 8
  %11 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %12 = icmp eq %struct.sproto_type* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @getbuffer(i32* %15, i32 2, i64* %7)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_istable(i32* %17, i32 -1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_newtable(i32* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 6
  store i32* %24, i32** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_gettop(i32* %26)
  %28 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @decode, align 4
  %39 = call i32 @sproto_decode(%struct.sproto_type* %34, i8* %35, i32 %37, i32 %38, %struct.decode_ud* %6)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @luaL_error(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %23
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lua_settop(i32* %46, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @lua_pushinteger(i32* %50, i32 %51)
  store i32 2, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %42, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sproto_type* @lua_touserdata(i32*, i32) #1

declare dso_local i8* @getbuffer(i32*, i32, i64*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @sproto_decode(%struct.sproto_type*, i8*, i32, i32, %struct.decode_ud*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
