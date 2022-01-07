; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_patch.c_PatchKeyboardDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_patch.c_PatchKeyboardDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i32] [i32 92, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 92, i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 0], align 4
@FILE_READ_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"PatchKeyboardDriver: IoGetDeviceObjectPointer status: %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@PiceKbdIsr = common dso_local global i64 0, align 8
@IOCTL_INTERNAL_I8042_HOOK_KEYBOARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"PatchKeyboardDriver: PiceSendIoctl status: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PatchKeyboardDriver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @ROS_STRING_INITIALIZER(i8* bitcast ([17 x i32]* @.str to i8*))
  store i32 %7, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = call i32 (...) @ENTER_FUNC()
  %9 = load i32, i32* @FILE_READ_ACCESS, align 4
  %10 = call i32 @IoGetDeviceObjectPointer(i32* %3, i32 %9, i32** %5, i32** %4)
  store i32 %10, i32* %6, align 4
  %11 = call i32 @NT_SUCCESS(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DPRINT(i32 %14)
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %40

17:                                               ; preds = %0
  %18 = load i32, i32* @PagedPool, align 4
  %19 = call %struct.TYPE_6__* @ExAllocatePool(i32 %18, i32 4)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %20, i32 4)
  %22 = load i64, i64* @PiceKbdIsr, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @IOCTL_INTERNAL_I8042_HOOK_KEYBOARD, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = call i32 @PiceSendIoctl(i32* %27, i32 %28, %struct.TYPE_6__* %29, i32 4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DPRINT(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ObDereferenceObject(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 @ExFreePool(%struct.TYPE_6__* %35)
  %37 = call i32 (...) @LEAVE_FUNC()
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @NT_SUCCESS(i32 %38)
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %17, %13
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @ROS_STRING_INITIALIZER(i8*) #1

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @IoGetDeviceObjectPointer(i32*, i32, i32**, i32**) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local %struct.TYPE_6__* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PiceSendIoctl(i32*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ObDereferenceObject(i32*) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_6__*) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
