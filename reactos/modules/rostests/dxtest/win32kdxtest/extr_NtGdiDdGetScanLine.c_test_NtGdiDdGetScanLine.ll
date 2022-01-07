; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdGetScanLine.c_test_NtGdiDdGetScanLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdGetScanLine.c_test_NtGdiDdGetScanLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Start testing of NtGdiDdGetScanLine\0A\00", align 1
@DDHAL_DRIVER_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"1. NtGdiDdGetScanLine(NULL,NULL);\00\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"2. NtGdiDdGetScanLine(hDirectDrawLocal,NULL);\00\00", align 1
@DDERR_GENERIC = common dso_local global i32 0, align 4
@DDHAL_DRIVER_NOTHANDLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"3. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\00\00", align 1
@DD_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"4. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\00\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"NtGdiDdGetScanLine\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_NtGdiDdGetScanLine(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %5, i32 8)
  %9 = call i32 @OsThunkDdGetScanLine(i32* null, %struct.TYPE_4__* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @testing_eq(i32 %10, i32 %11, i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @OsThunkDdGetScanLine(i32* %14, %struct.TYPE_4__* null)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @testing_eq(i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @DDERR_GENERIC, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @OsThunkDdGetScanLine(i32* %22, %struct.TYPE_4__* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DDHAL_DRIVER_NOTHANDLED, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @testing_eq(i32 %24, i32 %25, i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DD_OK, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @testing_noteq(i32 %29, i32 %30, i32 %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @testing_eq(i32 %34, i32 0, i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @show_status(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @OsThunkDdGetScanLine(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @testing_eq(i32, i32, i32, i8*) #1

declare dso_local i32 @testing_noteq(i32, i32, i32, i8*) #1

declare dso_local i32 @show_status(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
