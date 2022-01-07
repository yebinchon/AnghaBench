; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_SerialSendByte.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_SerialSendByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usSerialPortBase = common dso_local global i64 0, align 8
@LSR = common dso_local global i64 0, align 8
@XMTRDY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SerialSendByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 65535, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* @usSerialPortBase, align 8
  %7 = load i64, i64* @LSR, align 8
  %8 = add nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = call i32 @inportb(i32 %9)
  %11 = load i32, i32* @XMTRDY, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %14
  br label %5

21:                                               ; preds = %5
  %22 = load i64, i64* @usSerialPortBase, align 8
  %23 = load i64, i64* @TXR, align 8
  %24 = add nsw i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @outportb(i32 %25, i32 %26)
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @outportb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
