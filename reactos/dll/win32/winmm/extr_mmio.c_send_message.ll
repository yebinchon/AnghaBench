; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_send_message.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOProcList = type { i64, i32 (i32, i32, i32, i32)* }

@MMSYSERR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ioProc NULL\0A\00", align 1
@MMSYSERR_INVALPARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"NIY 32 A<=>W mapping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IOProcList*, i64, i32, i32, i32, i64)* @send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message(%struct.IOProcList* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.IOProcList*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.IOProcList* %0, %struct.IOProcList** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* @MMSYSERR_ERROR, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.IOProcList*, %struct.IOProcList** %8, align 8
  %21 = icmp ne %struct.IOProcList* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = call i32 @ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @MMSYSERR_INVALPARAM, align 4
  store i32 %24, i32* %7, align 4
  br label %44

25:                                               ; preds = %6
  %26 = load %struct.IOProcList*, %struct.IOProcList** %8, align 8
  %27 = getelementptr inbounds %struct.IOProcList, %struct.IOProcList* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.IOProcList*, %struct.IOProcList** %8, align 8
  %35 = getelementptr inbounds %struct.IOProcList, %struct.IOProcList* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 %36(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %33, %22
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
