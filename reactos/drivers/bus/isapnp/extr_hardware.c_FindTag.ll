; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/isapnp/extr_hardware.c_FindTag.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/isapnp/extr_hardware.c_FindTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@ISAPNP_TAG_END = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*, i64)* @FindTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindTag(i32 %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %12

12:                                               ; preds = %55, %4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @PeekByte(i32 %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @ISAPNP_IS_SMALL_TAG(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @ISAPNP_SMALL_TAG_LEN(i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @ISAPNP_SMALL_TAG_NAME(i64 %22)
  store i64 %23, i64* %10, align 8
  br label %34

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PeekByte(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PeekByte(i32 %27)
  %29 = shl i32 %28, 8
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @ISAPNP_LARGE_TAG_NAME(i64 %32)
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @Peek(i32 %45, i32* %46, i64 %47)
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %61

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @Peek(i32 %51, i32* null, i64 %52)
  br label %54

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @ISAPNP_TAG_END, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %12, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %44
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @PeekByte(i32) #1

declare dso_local i64 @ISAPNP_IS_SMALL_TAG(i64) #1

declare dso_local i64 @ISAPNP_SMALL_TAG_LEN(i64) #1

declare dso_local i64 @ISAPNP_SMALL_TAG_NAME(i64) #1

declare dso_local i64 @ISAPNP_LARGE_TAG_NAME(i64) #1

declare dso_local i32 @Peek(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
