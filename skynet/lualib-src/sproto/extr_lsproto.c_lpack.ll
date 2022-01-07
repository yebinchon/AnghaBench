; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lpack.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"packing error, return size = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpack(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @getbuffer(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 2047
  %14 = udiv i64 %13, 2048
  %15 = mul i64 %14, 2
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  %18 = add i64 %17, 2
  store i64 %18, i64* %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_upvalueindex(i32 1)
  %21 = call i8* @lua_touserdata(i32* %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_upvalueindex(i32 2)
  %24 = call i32 @lua_tointeger(i32* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i8* @expand_buffer(i32* %30, i32 %31, i64 %32)
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %29, %1
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @sproto_pack(i8* %35, i64 %36, i8* %37, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %34
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @lua_pushlstring(i32* %49, i8* %50, i32 %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @getbuffer(i32*, i32, i64*) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @expand_buffer(i32*, i32, i64) #1

declare dso_local i32 @sproto_pack(i8*, i64, i8*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
