; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/videoprt/extr_ddc.c_I2CWrite.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/videoprt/extr_ddc.c_I2CWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOW = common dso_local global i64 0, align 8
@HIGH = common dso_local global i64 0, align 8
@VIDEOPRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"I2CWrite: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Ack\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Nak\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @I2CWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @I2CWrite(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 128, i32* %7, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i64, i64* @LOW, align 8
  %14 = call i32 @WRITE_SCL(i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* @HIGH, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load i64, i64* @LOW, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @WRITE_SDA(i64 %24)
  %26 = call i32 (...) @DELAY_HALF()
  %27 = load i64, i64* @HIGH, align 8
  %28 = call i32 @WRITE_SCL(i64 %27)
  %29 = call i32 (...) @DELAY_HALF()
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i64, i64* @LOW, align 8
  %35 = call i32 @WRITE_SCL(i64 %34)
  %36 = load i64, i64* @HIGH, align 8
  %37 = call i32 @WRITE_SDA(i64 %36)
  %38 = call i32 (...) @DELAY_HALF()
  %39 = load i64, i64* @HIGH, align 8
  %40 = call i32 @WRITE_SCL(i64 %39)
  br label %41

41:                                               ; preds = %43, %33
  %42 = call i32 (...) @DELAY_HALF()
  br label %43

43:                                               ; preds = %41
  %44 = call i64 (...) @READ_SCL()
  %45 = load i64, i64* @HIGH, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %41, label %47

47:                                               ; preds = %43
  %48 = call i64 (...) @READ_SDA()
  %49 = load i64, i64* @LOW, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = call i32 (...) @DELAY_HALF()
  %53 = load i32, i32* @VIDEOPRT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @INFO_(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @WRITE_SCL(i64) #1

declare dso_local i32 @WRITE_SDA(i64) #1

declare dso_local i32 @DELAY_HALF(...) #1

declare dso_local i64 @READ_SCL(...) #1

declare dso_local i64 @READ_SDA(...) #1

declare dso_local i32 @INFO_(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
