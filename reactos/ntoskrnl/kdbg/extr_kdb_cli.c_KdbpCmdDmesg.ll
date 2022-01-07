; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_cli.c_KdbpCmdDmesg.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_cli.c_KdbpCmdDmesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@KdbpIsInDmesgMode = common dso_local global i32 0, align 4
@KdpDmesgBuffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"Dmesg: error, buffer is not allocated! /DEBUGPORT=SCREEN kernel param required for dmesg.\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"*** Dmesg *** TotalWritten=%lu, BufferSize=%lu, CurrentPosition=%lu\0A\00", align 1
@KdbDmesgTotalWritten = common dso_local global i32 0, align 4
@KdpDmesgBufferSize = common dso_local global i32 0, align 4
@KdpDmesgCurrentPosition = common dso_local global i32 0, align 4
@KdpDmesgFreeBytes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"*** Dmesg: buffer rollup ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"*** Dmesg: end of output ***\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @KdbpCmdDmesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KdbpCmdDmesg(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @KdbpIsInDmesgMode, align 4
  %9 = load i64, i64* @KdpDmesgBuffer, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* @KdbDmesgTotalWritten, align 4
  %16 = load i32, i32* @KdpDmesgBufferSize, align 4
  %17 = load i32, i32* @KdpDmesgCurrentPosition, align 4
  %18 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @KdpDmesgCurrentPosition, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @KdpDmesgFreeBytes, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @KdpDmesgBufferSize, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @KdbDmesgTotalWritten, align 4
  %26 = load i32, i32* @KdpDmesgBufferSize, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load i64, i64* @KdpDmesgBuffer, align 8
  %30 = load i32, i32* @KdpDmesgCurrentPosition, align 4
  %31 = call i32 @KdbpPager(i64 %29, i32 %30)
  br label %45

32:                                               ; preds = %14
  %33 = load i64, i64* @KdpDmesgBuffer, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* @KdpDmesgBufferSize, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @KdbpPager(i64 %36, i32 %39)
  %41 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @KdpDmesgBuffer, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @KdbpPager(i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %28
  %46 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* @KdbpIsInDmesgMode, align 4
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @KdbpPrint(i8*, ...) #1

declare dso_local i32 @KdbpPager(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
