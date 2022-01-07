; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_fse_compress.c_FSE_optimalTableLog_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_fse_compress.c_FSE_optimalTableLog_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_DEFAULT_TABLELOG = common dso_local global i64 0, align 8
@FSE_MIN_TABLELOG = common dso_local global i64 0, align 8
@FSE_MAX_TABLELOG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FSE_optimalTableLog_internal(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 1
  %14 = call i32 @BIT_highbit32(i64 %13)
  %15 = load i32, i32* %8, align 4
  %16 = sub i32 %14, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @FSE_minTableLog(i64 %20, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @FSE_DEFAULT_TABLELOG, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %29, %4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @FSE_MIN_TABLELOG, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @FSE_MIN_TABLELOG, align 8
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @FSE_MAX_TABLELOG, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @FSE_MAX_TABLELOG, align 8
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local i32 @BIT_highbit32(i64) #1

declare dso_local i64 @FSE_minTableLog(i64, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
