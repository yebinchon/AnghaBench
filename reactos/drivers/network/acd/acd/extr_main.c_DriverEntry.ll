; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/acd/acd/extr_main.c_DriverEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/acd/acd/extr_main.c_DriverEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 82, i32 97, i32 115, i32 65, i32 99, i32 100, i32 0], align 4
@FILE_DEVICE_RASACD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IoCreateDevice() failed (Status %lx)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DriverEntry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 @RtlInitUnicodeString(i32* %6, i8* bitcast ([7 x i32]* @.str to i8*))
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FILE_DEVICE_RASACD, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @IoCreateDevice(i32 %10, i32 0, i32* %6, i32 %11, i32 0, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @NT_SUCCESS(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i8*) #1

declare dso_local i32 @IoCreateDevice(i32, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
