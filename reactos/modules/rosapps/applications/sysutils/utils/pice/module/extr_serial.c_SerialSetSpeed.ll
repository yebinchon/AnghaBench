; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_SerialSetSpeed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_SerialSetSpeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usSerialPortBase = common dso_local global i64 0, align 8
@LCR = common dso_local global i64 0, align 8
@DLL = common dso_local global i64 0, align 8
@DLH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SerialSetSpeed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = sdiv i64 115200, %5
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* @usSerialPortBase, align 8
  %8 = load i64, i64* @LCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @inportb(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @usSerialPortBase, align 8
  %13 = load i64, i64* @LCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 128
  %18 = call i32 @outportb(i32 %15, i32 %17)
  %19 = load i64, i64* @usSerialPortBase, align 8
  %20 = load i64, i64* @DLL, align 8
  %21 = add nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* %4, align 8
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i32
  %26 = call i32 @outportb(i32 %22, i32 %25)
  %27 = load i64, i64* @usSerialPortBase, align 8
  %28 = load i64, i64* @DLH, align 8
  %29 = add nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = ashr i64 %31, 8
  %33 = and i64 %32, 255
  %34 = trunc i64 %33 to i32
  %35 = call i32 @outportb(i32 %30, i32 %34)
  %36 = load i64, i64* @usSerialPortBase, align 8
  %37 = load i64, i64* @LCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @outportb(i32 %39, i32 %40)
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
