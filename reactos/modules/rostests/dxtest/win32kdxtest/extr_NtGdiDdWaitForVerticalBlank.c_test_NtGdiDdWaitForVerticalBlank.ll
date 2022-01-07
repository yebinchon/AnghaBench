; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdWaitForVerticalBlank.c_test_NtGdiDdWaitForVerticalBlank.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdWaitForVerticalBlank.c_test_NtGdiDdWaitForVerticalBlank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@DDHAL_DRIVER_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"1. NtGdiDdWaitForVerticalBlank(NULL,NULL);\00\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"2. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\00\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"3. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\00\00", align 1
@DD_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"4. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\00\00", align 1
@DDWAITVB_I_TESTVB = common dso_local global i32 0, align 4
@DDHAL_DRIVER_NOTHANDLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"5. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\00\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"6. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\00\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"NtGdiDdWaitForVerticalBlank\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_NtGdiDdWaitForVerticalBlank(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 @RtlZeroMemory(%struct.TYPE_3__* %5, i32 8)
  %8 = call i32 @OsThunkDdWaitForVerticalBlank(i32* null, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @testing_eq(i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @OsThunkDdWaitForVerticalBlank(i32* %13, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @testing_eq(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = bitcast %struct.TYPE_3__* %5 to i32*
  %21 = call i32 @OsThunkDdWaitForVerticalBlank(i32* %19, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @testing_eq(i32 %22, i32 %23, i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DD_OK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @testing_eq(i32 %27, i32 %28, i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @RtlZeroMemory(%struct.TYPE_3__* %5, i32 8)
  %32 = load i32, i32* @DDWAITVB_I_TESTVB, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = bitcast %struct.TYPE_3__* %5 to i32*
  %36 = call i32 @OsThunkDdWaitForVerticalBlank(i32* %34, i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DDHAL_DRIVER_NOTHANDLED, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @testing_eq(i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DD_OK, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @testing_noteq(i32 %42, i32 %43, i32 %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32*, i32** %2, align 8
  %47 = bitcast %struct.TYPE_3__* %5 to i32*
  %48 = call i32 @OsThunkDdWaitForVerticalBlank(i32* %46, i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @show_status(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @OsThunkDdWaitForVerticalBlank(i32*, i32*) #1

declare dso_local i32 @testing_eq(i32, i32, i32, i8*) #1

declare dso_local i32 @testing_noteq(i32, i32, i32, i8*) #1

declare dso_local i32 @show_status(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
