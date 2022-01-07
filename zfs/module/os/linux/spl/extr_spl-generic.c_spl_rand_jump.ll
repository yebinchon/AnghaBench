; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-generic.c_spl_rand_jump.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-generic.c_spl_rand_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spl_rand_jump.JUMP = internal constant [2 x i32] [i32 1667051007, i32 1548169110], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @spl_rand_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_rand_jump(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %40, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @spl_rand_jump.JUMP, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = and i64 %20, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %15
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @spl_rand_next(i32* %38)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %12

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %7

47:                                               ; preds = %7
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @spl_rand_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
