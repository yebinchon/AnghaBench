; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_test_device_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hid/extr_device.c_test_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to get preparsed data(0x%x)\0A\00", align 1
@HIDP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get Caps(0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get product string(0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Found device %s (%02x, %02x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to free preparsed data(0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to get device attributes (0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Unexpected HIDD_ATTRIBUTES size: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Device attributes: vid:%04x pid:%04x ver:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i32], align 16
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @HidD_GetPreparsedData(i32 %9, i32* %3)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @HidP_GetCaps(i32 %14, %struct.TYPE_5__* %4)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @HIDP_STATUS_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %2, align 4
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %24 = call i32 @HidD_GetProductString(i32 %22, i32* %23, i32 512)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %29 = call i32 @wine_dbgstr_w(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @HidD_FreePreparsedData(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @HidD_GetAttributes(i32 %40, %struct.TYPE_6__* %5)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 16
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @trace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %55, i32 %57, i32 %59)
  ret void
}

declare dso_local i32 @HidD_GetPreparsedData(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @HidP_GetCaps(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @HidD_GetProductString(i32, i32*, i32) #1

declare dso_local i32 @trace(i8*, i32, i32, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @HidD_FreePreparsedData(i32) #1

declare dso_local i32 @HidD_GetAttributes(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
