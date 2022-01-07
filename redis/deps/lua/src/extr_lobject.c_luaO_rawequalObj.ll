; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lobject.c_luaO_rawequalObj.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lobject.c_luaO_rawequalObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaO_rawequalObj(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @ttype(i32* %6)
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @ttype(i32* %8)
  %10 = icmp ne i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ttype(i32* %13)
  switch i32 %14, label %36 [
    i32 129, label %15
    i32 128, label %16
    i32 131, label %22
    i32 130, label %29
  ]

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %46

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @nvalue(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @nvalue(i32* %19)
  %21 = call i32 @luai_numeq(i32 %18, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @bvalue(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @bvalue(i32* %25)
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %12
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @pvalue(i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @pvalue(i32* %32)
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %12
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @iscollectable(i32* %37)
  %39 = call i32 @lua_assert(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @gcvalue(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @gcvalue(i32* %42)
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %29, %22, %16, %15, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @iscollectable(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
