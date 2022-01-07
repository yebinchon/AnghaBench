; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_countint.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_countint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LJ_MAX_ASIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*)* @countint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @countint(i32* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @tvisint(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @lua_assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @tvisnum(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @numV(i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @lj_num2int(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @LJ_MAX_ASIZE, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i64*, i64** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = call i64 @lj_fls(i64 %38)
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i64 [ %39, %35 ], [ 0, %40 ]
  %43 = getelementptr inbounds i64, i64* %32, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  store i64 1, i64* %3, align 8
  br label %48

46:                                               ; preds = %26, %17
  br label %47

47:                                               ; preds = %46, %2
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i32 @lj_num2int(i64) #1

declare dso_local i64 @lj_fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
