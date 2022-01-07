; ModuleID = '/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_gdb_send.c_finish_gdb_packet.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_gdb_send.c_finish_gdb_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hex_chars = common dso_local global i8* null, align 8
@currentChecksum = common dso_local global i32 0, align 4
@KdPacketReceived = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KD_DEBUGGER_NOT_PRESENT = common dso_local global i32 0, align 4
@KdPacketNeedsResend = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @finish_gdb_packet() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = call i32 @KdpSendByte(i8 signext 35)
  %5 = load i8*, i8** @hex_chars, align 8
  %6 = load i32, i32* @currentChecksum, align 4
  %7 = ashr i32 %6, 4
  %8 = and i32 %7, 15
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %5, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = call i32 @KdpSendByte(i8 signext %11)
  %13 = load i8*, i8** @hex_chars, align 8
  %14 = load i32, i32* @currentChecksum, align 4
  %15 = and i32 %14, 15
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @KdpSendByte(i8 signext %18)
  %20 = call i64 @KdpReceiveByte(i8* %2)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @KdPacketReceived, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* @KD_DEBUGGER_NOT_PRESENT, align 4
  %26 = load i64, i64* %3, align 8
  store i64 %26, i64* %1, align 8
  br label %35

27:                                               ; preds = %0
  %28 = load i8, i8* %2, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 43
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @KdPacketNeedsResend, align 8
  store i64 %32, i64* %1, align 8
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @KdPacketReceived, align 8
  store i64 %34, i64* %1, align 8
  br label %35

35:                                               ; preds = %33, %31, %24
  %36 = load i64, i64* %1, align 8
  ret i64 %36
}

declare dso_local i32 @KdpSendByte(i8 signext) #1

declare dso_local i64 @KdpReceiveByte(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
