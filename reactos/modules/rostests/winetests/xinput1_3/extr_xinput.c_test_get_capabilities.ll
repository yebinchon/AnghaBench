; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@XUSER_MAX_COUNT = common dso_local global i64 0, align 8
@XINPUT_FLAG_GAMEPAD = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DEVICE_NOT_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"XInputGetCapabilities failed with (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Controller %d is not connected\0A\00", align 1
@ERROR_BAD_ARGUMENTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"XInputGetCapabilities returned (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_capabilities() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = call i32 @ZeroMemory(%struct.TYPE_4__* %1, i32 4)
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* @XINPUT_FLAG_GAMEPAD, align 4
  %12 = call i64 @pXInputGetCapabilities(i64 %10, i32 %11, %struct.TYPE_4__* %1)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i1 [ true, %8 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %34

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %33 = call i32 @dump_gamepad(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* %2, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %4

37:                                               ; preds = %4
  %38 = call i32 @ZeroMemory(%struct.TYPE_4__* %1, i32 4)
  %39 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* @XINPUT_FLAG_GAMEPAD, align 4
  %42 = call i64 @pXInputGetCapabilities(i64 %40, i32 %41, %struct.TYPE_4__* %1)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ERROR_BAD_ARGUMENTS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @pXInputGetCapabilities(i64, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @skip(i8*, i64) #1

declare dso_local i32 @dump_gamepad(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
