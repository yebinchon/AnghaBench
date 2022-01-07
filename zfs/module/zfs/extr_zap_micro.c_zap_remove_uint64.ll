; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_remove_uint64.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_remove_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RW_WRITER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_remove_uint64(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* @RW_WRITER, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @zap_lockdir(i32* %15, i32 %16, i32* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32** %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %50

27:                                               ; preds = %5
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32* @zap_name_alloc_uint64(i32* %28, i32* %29, i32 %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @zap_unlockdir(i32* %35, i32 %36)
  %38 = load i32, i32* @ENOTSUP, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %50

40:                                               ; preds = %27
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @fzap_remove(i32* %41, i32* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @zap_name_free(i32* %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @zap_unlockdir(i32* %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %40, %34, %25
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @zap_lockdir(i32*, i32, i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i32* @zap_name_alloc_uint64(i32*, i32*, i32) #1

declare dso_local i32 @zap_unlockdir(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_remove(i32*, i32*) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
