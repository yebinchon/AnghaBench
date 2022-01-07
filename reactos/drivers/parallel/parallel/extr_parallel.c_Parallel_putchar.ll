; ModuleID = '/home/carl/AnghaBench/reactos/drivers/parallel/parallel/extr_parallel.c_Parallel_putchar.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/parallel/parallel/extr_parallel.c_Parallel_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_S = common dso_local global i32 0, align 4
@LP_PBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"printer_putchar(): timed out\0A\00", align 1
@LP_B = common dso_local global i64 0, align 8
@LP_C = common dso_local global i64 0, align 8
@LP_PSELECP = common dso_local global i8 0, align 1
@LP_PINITP = common dso_local global i8 0, align 1
@LP_PSTROBE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @Parallel_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Parallel_putchar(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* @LP_S, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 500000
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LP_PBUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %6, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 500000
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %66

26:                                               ; preds = %21
  %27 = load i64, i64* @LP_B, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i8, i8* %2, align 1
  %30 = call i32 @WRITE_PORT_UCHAR(i32 %28, i8 zeroext %29)
  br label %31

31:                                               ; preds = %34, %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 10000
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %31

37:                                               ; preds = %31
  %38 = load i64, i64* @LP_C, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i8, i8* @LP_PSELECP, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @LP_PINITP, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = load i8, i8* @LP_PSTROBE, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = trunc i32 %47 to i8
  %49 = call i32 @WRITE_PORT_UCHAR(i32 %39, i8 zeroext %48)
  br label %50

50:                                               ; preds = %53, %37
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  br label %50

56:                                               ; preds = %50
  %57 = load i64, i64* @LP_C, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i8, i8* @LP_PSELECP, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @LP_PINITP, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = trunc i32 %63 to i8
  %65 = call i32 @WRITE_PORT_UCHAR(i32 %58, i8 zeroext %64)
  br label %66

66:                                               ; preds = %56, %24
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
