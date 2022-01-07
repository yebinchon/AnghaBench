; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_ltablib.c_tconcat.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_ltablib.c_tconcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@luaL_checkint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tconcat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tconcat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_optlstring(i32* %8, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64* %4)
  store i8* %9, i8** %7, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @LUA_TTABLE, align 4
  %12 = call i32 @luaL_checktype(i32* %10, i32 1, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @luaL_optint(i32* %13, i32 3, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @luaL_checkint, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @luaL_len(i32* %17, i32 1)
  %19 = call i32 @luaL_opt(i32* %15, i32 %16, i32 4, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @luaL_buffinit(i32* %20, i32* %3)
  br label %22

22:                                               ; preds = %33, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @addfield(i32* %27, i32* %3, i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @luaL_addlstring(i32* %3, i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @addfield(i32* %41, i32* %3, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = call i32 @luaL_pushresult(i32* %3)
  ret i32 1
}

declare dso_local i8* @luaL_optlstring(i32*, i32, i8*, i64*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_len(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @addfield(i32*, i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
