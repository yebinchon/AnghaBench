; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lpack.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Invalid size (too long) of data : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpack(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @tolstring(i32* %7, i64* %4, i32 1)
  store i8* %8, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp uge i64 %9, 65536
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @luaL_error(i32* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, 2
  %19 = call i32* @skynet_malloc(i64 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @write_size(i32* %20, i64 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @memcpy(i32* %24, i8* %25, i64 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lua_pushlightuserdata(i32* %28, i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 2
  %34 = call i32 @lua_pushinteger(i32* %31, i64 %33)
  store i32 2, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i8* @tolstring(i32*, i64*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32* @skynet_malloc(i64) #1

declare dso_local i32 @write_size(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
