; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_common.c_GetDeviceCount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_common.c_GetDeviceCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Found %d devices of type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetDeviceCount(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load i32, i32* %2, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @GENERIC_READ, align 4
  %9 = call i64 @OpenKernelDevice(i32 %6, i64 %7, i32 %8, i32* %4)
  %10 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @CloseHandle(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %3, align 8
  br label %5

17:                                               ; preds = %5
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %19)
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @OpenKernelDevice(i32, i64, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @DPRINT(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
