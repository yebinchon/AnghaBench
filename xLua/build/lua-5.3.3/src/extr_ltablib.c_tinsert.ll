; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_ltablib.c_tinsert.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_ltablib.c_tinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAB_RW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"position out of bounds\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tinsert(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @TAB_RW, align 4
  %9 = call i32 @aux_getn(i32* %7, i32 1, i32 %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  switch i32 %12, label %46 [
    i32 2, label %13
    i32 3, label %15
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %5, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_checkinteger(i32* %16, i32 2)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 1, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %22, %23
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @luaL_argcheck(i32* %18, i32 %27, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %42, %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @lua_geti(i32* %35, i32 1, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @lua_seti(i32* %39, i32 1, i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %30

45:                                               ; preds = %30
  br label %49

46:                                               ; preds = %1
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @luaL_error(i32* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %45, %13
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @lua_seti(i32* %50, i32 1, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @aux_getn(i32*, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_geti(i32*, i32, i32) #1

declare dso_local i32 @lua_seti(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
