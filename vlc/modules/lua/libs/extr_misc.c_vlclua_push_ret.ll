; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_misc.c_vlclua_push_ret.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_misc.c_vlclua_push_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"generic error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_push_ret(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @lua_pushnumber(i32* %7, i32 %8)
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %27 [
    i32 128, label %11
    i32 133, label %12
    i32 129, label %14
    i32 135, label %16
    i32 132, label %18
    i32 131, label %20
    i32 130, label %22
    i32 134, label %24
  ]

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %6, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %15, i32* %6, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %6, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lua_pushstring(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_pushstring(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %35

30:                                               ; preds = %22, %20, %18, %16, %14, %12, %11
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @vlc_strerror_c(i32 %32)
  %34 = call i32 @lua_pushstring(i32* %31, i8* %33)
  store i32 2, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %27, %24
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @vlc_strerror_c(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
