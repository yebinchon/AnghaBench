; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_SerialSetOthers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_SerialSetOthers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usSerialPortBase = common dso_local global i64 0, align 8
@NO_PARITY = common dso_local global i32 0, align 4
@ODD_PARITY = common dso_local global i32 0, align 4
@EVEN_PARITY = common dso_local global i32 0, align 4
@LCR = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@FCR = common dso_local global i64 0, align 8
@MCR = common dso_local global i64 0, align 8
@DTR = common dso_local global i32 0, align 4
@RTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SerialSetOthers(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @usSerialPortBase, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %87

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  br label %87

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %87

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NO_PARITY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ODD_PARITY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EVEN_PARITY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %87

39:                                               ; preds = %34, %30, %26
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 5
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* @usSerialPortBase, align 8
  %52 = load i64, i64* @LCR, align 8
  %53 = add nsw i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @inportb(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i64, i64* @usSerialPortBase, align 8
  %57 = load i64, i64* @LCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, -129
  %62 = call i32 @outportb(i32 %59, i32 %61)
  %63 = load i64, i64* @usSerialPortBase, align 8
  %64 = load i64, i64* @IER, align 8
  %65 = add nsw i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @outportb(i32 %66, i32 0)
  %68 = load i64, i64* @usSerialPortBase, align 8
  %69 = load i64, i64* @FCR, align 8
  %70 = add nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @outportb(i32 %71, i32 0)
  %73 = load i64, i64* @usSerialPortBase, align 8
  %74 = load i64, i64* @LCR, align 8
  %75 = add nsw i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @outportb(i32 %76, i32 %77)
  %79 = load i64, i64* @usSerialPortBase, align 8
  %80 = load i64, i64* @MCR, align 8
  %81 = add nsw i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @DTR, align 4
  %84 = load i32, i32* @RTS, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @outportb(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %39, %38, %25, %18, %11
  ret void
}

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @outportb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
