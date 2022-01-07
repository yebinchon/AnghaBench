; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/videoprt/extr_ddc.c_I2CRead.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/videoprt/extr_ddc.c_I2CRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOW = common dso_local global i64 0, align 8
@HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @I2CRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @I2CRead(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 128, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @LOW, align 8
  %10 = call i32 @WRITE_SCL(i64 %9)
  %11 = load i64, i64* @HIGH, align 8
  %12 = call i32 @WRITE_SDA(i64 %11)
  store i32 128, i32* %7, align 4
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i64, i64* @LOW, align 8
  %18 = call i32 @WRITE_SCL(i64 %17)
  %19 = call i32 (...) @DELAY_HALF()
  %20 = load i64, i64* @HIGH, align 8
  %21 = call i32 @WRITE_SCL(i64 %20)
  %22 = call i32 (...) @DELAY_HALF()
  %23 = call i64 (...) @READ_SDA()
  %24 = load i64, i64* @HIGH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load i64, i64* @LOW, align 8
  %36 = call i32 @WRITE_SCL(i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @LOW, align 8
  br label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @HIGH, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @WRITE_SDA(i64 %44)
  %46 = call i32 (...) @DELAY_HALF()
  %47 = load i64, i64* @HIGH, align 8
  %48 = call i32 @WRITE_SCL(i64 %47)
  br label %49

49:                                               ; preds = %51, %43
  %50 = call i32 (...) @DELAY_HALF()
  br label %51

51:                                               ; preds = %49
  %52 = call i64 (...) @READ_SCL()
  %53 = load i64, i64* @HIGH, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %49, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @WRITE_SCL(i64) #1

declare dso_local i32 @WRITE_SDA(i64) #1

declare dso_local i32 @DELAY_HALF(...) #1

declare dso_local i64 @READ_SDA(...) #1

declare dso_local i64 @READ_SCL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
