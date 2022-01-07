; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_serial.c_KdbpTryGetCharSerial.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_serial.c_KdbpTryGetCharSerial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SerialPortInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KdbpTryGetCharSerial(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %12, %6
  %8 = ptrtoint i32* %3 to i32
  %9 = call i32 @KdPortGetByteEx(i32* @SerialPortInfo, i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %7

13:                                               ; preds = %7
  br label %27

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %25, %14
  %16 = ptrtoint i32* %3 to i32
  %17 = call i32 @KdPortGetByteEx(i32* @SerialPortInfo, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %2, align 8
  %22 = icmp sgt i64 %20, 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %15

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @KdPortGetByteEx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
