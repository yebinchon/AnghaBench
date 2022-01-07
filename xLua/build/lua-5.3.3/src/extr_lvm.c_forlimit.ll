; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lvm.c_forlimit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lvm.c_forlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_MAXINTEGER = common dso_local global i64 0, align 8
@LUA_MININTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i32*)* @forlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forlimit(i32* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  %18 = call i32 @luaV_tointeger(i32* %12, i64* %13, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @tonumber(i32* %21, i32* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %47

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @luai_numlt(i32 0, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* @LUA_MAXINTEGER, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %29
  br label %45

37:                                               ; preds = %25
  %38 = load i64, i64* @LUA_MININTEGER, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %4
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @luaV_tointeger(i32*, i64*, i32) #1

declare dso_local i32 @tonumber(i32*, i32*) #1

declare dso_local i64 @luai_numlt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
