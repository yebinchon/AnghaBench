; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lunpackresponse.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lunpackresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lunpackresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lunpackresponse(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checklstring(i32* %7, i32 1, i64* %4)
  store i8* %8, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ult i64 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i8* @unpack_uint32(i32* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = call i32 @lua_pushinteger(i32* %16, i64 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %70 [
    i32 0, label %24
    i32 1, label %33
    i32 4, label %33
    i32 2, label %42
    i32 3, label %59
  ]

24:                                               ; preds = %12
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushboolean(i32* %25, i32 0)
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 5
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %30, 5
  %32 = call i32 @lua_pushlstring(i32* %27, i8* %29, i64 %31)
  store i32 3, i32* %2, align 4
  br label %71

33:                                               ; preds = %12, %12
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pushboolean(i32* %34, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  %39 = load i64, i64* %4, align 8
  %40 = sub i64 %39, 5
  %41 = call i32 @lua_pushlstring(i32* %36, i8* %38, i64 %40)
  store i32 3, i32* %2, align 4
  br label %71

42:                                               ; preds = %12
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 9
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %71

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = call i8* @unpack_uint32(i32* %49)
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %4, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pushboolean(i32* %52, i32 1)
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @lua_pushinteger(i32* %54, i64 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pushboolean(i32* %57, i32 1)
  store i32 4, i32* %2, align 4
  br label %71

59:                                               ; preds = %12
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_pushboolean(i32* %60, i32 1)
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = load i64, i64* %4, align 8
  %66 = sub i64 %65, 5
  %67 = call i32 @lua_pushlstring(i32* %62, i8* %64, i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @lua_pushboolean(i32* %68, i32 1)
  store i32 4, i32* %2, align 4
  br label %71

70:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %59, %46, %45, %33, %24, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @unpack_uint32(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
