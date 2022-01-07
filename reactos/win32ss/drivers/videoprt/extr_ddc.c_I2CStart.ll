; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/videoprt/extr_ddc.c_I2CStart.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/videoprt/extr_ddc.c_I2CStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOW = common dso_local global i64 0, align 8
@VIDEOPRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2CStart: Bus is not free!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"I2CStart: Device not found (Address = 0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"I2CStart: SUCCESS!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @I2CStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @I2CStart(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = call i64 (...) @READ_SDA()
  %9 = load i64, i64* @LOW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call i64 (...) @READ_SCL()
  %13 = load i64, i64* @LOW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @VIDEOPRT, align 4
  %17 = call i32 (i32, i8*, ...) @WARN_(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load i64, i64* @LOW, align 8
  %21 = call i32 @WRITE_SDA(i64 %20)
  %22 = call i32 (...) @DELAY_HALF()
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @I2CWrite(i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @I2CStop(i32 %29, i32 %30)
  %32 = load i32, i32* @VIDEOPRT, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32, i8*, ...) @WARN_(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %19
  %37 = load i32, i32* @VIDEOPRT, align 4
  %38 = call i32 @INFO_(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %28, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @READ_SDA(...) #1

declare dso_local i64 @READ_SCL(...) #1

declare dso_local i32 @WARN_(i32, i8*, ...) #1

declare dso_local i32 @WRITE_SDA(i64) #1

declare dso_local i32 @DELAY_HALF(...) #1

declare dso_local i32 @I2CWrite(i32, i32, i32) #1

declare dso_local i32 @I2CStop(i32, i32) #1

declare dso_local i32 @INFO_(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
