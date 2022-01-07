; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lvm.c_luaV_tonumber_.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lvm.c_luaV_tonumber_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_tonumber_(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @ttisinteger(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ivalue(i32* %11)
  %13 = call i32 @cast_num(i32 %12)
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  store i32 1, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @cvt2num(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @svalue(i32* %20)
  %22 = call i64 @luaO_str2num(i32 %21, i32* %6)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @vslen(i32* %23)
  %25 = add nsw i64 %24, 1
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = call i32 @nvalue(i32* %6)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %31

30:                                               ; preds = %19, %15
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @ttisinteger(i32*) #1

declare dso_local i32 @cast_num(i32) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i64 @cvt2num(i32*) #1

declare dso_local i64 @luaO_str2num(i32, i32*) #1

declare dso_local i32 @svalue(i32*) #1

declare dso_local i64 @vslen(i32*) #1

declare dso_local i32 @nvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
