; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_start_scrub.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_start_scrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@SE_MANAGE_VOLUME_PRIVILEGE = common dso_local global i32 0, align 4
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot start scrub while locked\0A\00", align 1
@STATUS_DEVICE_NOT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot start scrub while balance running\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"scrub already running\0A\00", align 1
@STATUS_MEDIA_WRITE_PROTECTED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@OBJ_KERNEL_HANDLE = common dso_local global i32 0, align 4
@scrub_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"PsCreateSystemThread returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_scrub(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @SE_MANAGE_VOLUME_PRIVILEGE, align 4
  %9 = call i32 @RtlConvertLongToLuid(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @SeSinglePrivilegeCheck(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @STATUS_PRIVILEGE_NOT_HELD, align 4
  store i32 %14, i32* %3, align 4
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %40, i32* %3, align 4
  br label %88

41:                                               ; preds = %32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @STATUS_MEDIA_WRITE_PROTECTED, align 4
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* @NotificationEvent, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @KeInitializeEvent(i32* %61, i32 %62, i32 %69)
  %71 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %72 = call i32 @InitializeObjectAttributes(i32* %7, i32* null, i32 %71, i32* null, i32* null)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* @scrub_thread, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = call i32 @PsCreateSystemThread(i64* %75, i32 0, i32* %7, i32* null, i32* null, i32 %76, %struct.TYPE_8__* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @NT_SUCCESS(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %48
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %88

86:                                               ; preds = %48
  %87 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %82, %46, %38, %29, %20, %13
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @SeSinglePrivilegeCheck(i32, i32) #1

declare dso_local i32 @RtlConvertLongToLuid(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @PsCreateSystemThread(i64*, i32, i32*, i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
