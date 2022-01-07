; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_os.c_getfield.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_os.c_getfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LJ_ERR_OSDATEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @getfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfield(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @lua_getfield(i32* %8, i32 -1, i8* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @lua_isnumber(i32* %11, i32 -1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @lua_tointeger(i32* %15, i32 -1)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @LJ_ERR_OSDATEF, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @lj_err_callerv(i32* %22, i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 1)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lj_err_callerv(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
