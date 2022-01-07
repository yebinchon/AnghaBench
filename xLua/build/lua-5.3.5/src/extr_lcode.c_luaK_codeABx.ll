; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcode.c_luaK_codeABx.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcode.c_luaK_codeABx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iABx = common dso_local global i64 0, align 8
@iAsBx = common dso_local global i64 0, align 8
@OpArgN = common dso_local global i64 0, align 8
@MAXARG_A = common dso_local global i32 0, align 4
@MAXARG_Bx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_codeABx(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @getOpMode(i32 %9)
  %11 = load i64, i64* @iABx, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @getOpMode(i32 %14)
  %16 = load i64, i64* @iAsBx, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %13, %4
  %19 = phi i1 [ true, %4 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @lua_assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @getCMode(i32 %22)
  %24 = load i64, i64* @OpArgN, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAXARG_A, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAXARG_Bx, align 4
  %34 = icmp ule i32 %32, %33
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i1 [ false, %18 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @CREATE_ABx(i32 %40, i32 %41, i32 %42)
  %44 = call i32 @luaK_code(i32* %39, i32 %43)
  ret i32 %44
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @getOpMode(i32) #1

declare dso_local i64 @getCMode(i32) #1

declare dso_local i32 @luaK_code(i32*, i32) #1

declare dso_local i32 @CREATE_ABx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
