; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_mos_with_trusted_config.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_mos_with_trusted_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"RELOADING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @spa_ld_mos_with_trusted_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_mos_with_trusted_config(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @spa_ld_mos_init(i32* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  %20 = call i32 @spa_ld_trusted_config(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @B_TRUE, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @spa_ld_prepare_for_reload(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @spa_load_note(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @spa_ld_mos_init(i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %30
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @B_TRUE, align 4
  %46 = call i32 @spa_ld_trusted_config(i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %59

51:                                               ; preds = %42
  br label %58

52:                                               ; preds = %16
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %51
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %49, %40, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @spa_ld_mos_init(i32*, i32) #1

declare dso_local i32 @spa_ld_trusted_config(i32*, i32, i32) #1

declare dso_local i32 @spa_ld_prepare_for_reload(i32*) #1

declare dso_local i32 @spa_load_note(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
