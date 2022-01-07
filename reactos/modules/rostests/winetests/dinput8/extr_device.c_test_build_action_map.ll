; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput8/extr_device.c_test_build_action_map.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput8/extr_device.c_test_build_action_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DIDBAM_HWDEFAULTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BuildActionMap failed hr=%08x\0A\00", align 1
@DIAH_USERCONFIG = common dso_local global i64 0, align 8
@DIAH_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Action was not set dwHow=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Action not mapped correctly instance=%08x expected=%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Action type not mapped correctly type=%08x expected=%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Action and device GUID do not match action=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i64, i64)* @test_build_action_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_build_action_map(i32* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 8, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @IDirectInputDevice_GetDeviceInfo(i32* %19, %struct.TYPE_7__* %17)
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = load i32, i32* @DIDBAM_HWDEFAULTS, align 4
  %24 = call i32 @IDirectInputDevice8_BuildActionMap(i32* %21, %struct.TYPE_8__* %22, i32* null, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @SUCCEEDED(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %12, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @DIDFT_GETINSTANCE(i32 %37)
  store i64 %38, i64* %13, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @DIDFT_GETTYPE(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %15, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %16, align 4
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @DIAH_USERCONFIG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %5
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @DIAH_DEFAULT, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %5
  %66 = phi i1 [ true, %5 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %15, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (i32, i8*, i32, ...) @ok(i32 %74, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %76, i64 %77)
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %14, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %9, align 8
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %84, i64 %85)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %88 = call i32 @IsEqualGUID(i32* %16, i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  ret void
}

declare dso_local i32 @IDirectInputDevice_GetDeviceInfo(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @IDirectInputDevice8_BuildActionMap(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i64 @DIDFT_GETINSTANCE(i32) #1

declare dso_local i64 @DIDFT_GETTYPE(i32) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
