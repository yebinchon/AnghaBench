; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_unpackreq_string.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_unpackreq_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Invalid cluster message (size=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @unpackreq_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpackreq_string(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 6
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %16
  %30 = load i32*, i32** %5, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = bitcast i64* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @lua_pushlstring(i32* %30, i8* %33, i64 %34)
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = call i64 @unpack_uint32(i64* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @lua_pushinteger(i32* %41, i64 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = bitcast i64* %45 to i8*
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %52, %53
  %55 = sub i64 %54, 6
  %56 = trunc i64 %55 to i32
  %57 = call i32 @return_buffer(i32* %44, i8* %50, i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %29
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @lua_pushnil(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @lua_pushboolean(i32* %63, i32 1)
  store i32 6, i32* %4, align 4
  br label %66

65:                                               ; preds = %29
  store i32 4, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %60, %25, %12
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i64 @unpack_uint32(i64*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @return_buffer(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
