; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_return_fd.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_return_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32, i32, i32)* @return_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_fd(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %39, %6
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i64, i64* %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @FD_ISSET(i64 %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = call i32 @lua_pushnumber(i32* %24, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %13, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @lua_pushnumber(i32* %28, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @lua_gettable(i32* %32, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @lua_settable(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %23, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %13, align 8
  br label %14

42:                                               ; preds = %14
  ret void
}

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
