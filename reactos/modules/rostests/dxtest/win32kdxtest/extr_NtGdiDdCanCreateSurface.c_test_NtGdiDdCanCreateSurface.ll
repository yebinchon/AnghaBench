; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdCanCreateSurface.c_test_NtGdiDdCanCreateSurface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdCanCreateSurface.c_test_NtGdiDdCanCreateSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@DDHAL_DRIVER_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"1. NtGdiDdCanCreateSurface(NULL,NULL);\00\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"2. NtGdiDdCanCreateSurface(hDirectDrawLocal,NULL);\00\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"3. NtGdiDdCanCreateSurface(hDirectDrawLocal,pCanCreateSurface);\00\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"4. NtGdiDdCanCreateSurface(hDirectDrawLocal,pCanCreateSurface);\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_NtGdiDdCanCreateSurface(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %5, i32 16)
  %9 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %6, i32 16)
  %10 = call i32 @OsThunkDdCanCreateSurface(i32* null, i32* null)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @testing_eq(i32 %11, i32 %12, i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @OsThunkDdCanCreateSurface(i32* %15, i32* null)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @testing_eq(i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = bitcast %struct.TYPE_4__* %5 to i32*
  %23 = call i32 @OsThunkDdCanCreateSurface(i32* %21, i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @testing_eq(i32 %24, i32 %25, i32 %26, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %28 = bitcast %struct.TYPE_4__* %6 to i32*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = bitcast %struct.TYPE_4__* %5 to i32*
  %33 = call i32 @OsThunkDdCanCreateSurface(i32* %31, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DDHAL_DRIVER_HANDLED, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @testing_eq(i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @OsThunkDdCanCreateSurface(i32*, i32*) #1

declare dso_local i32 @testing_eq(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
