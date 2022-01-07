; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_disk_extents.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_disk_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_disk_extents.data = internal global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"\\\\.\\c:\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"can't open c: drive %u\0A\00", align 1
@IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = common dso_local global i32 0, align 4
@ERROR_INVALID_FUNCTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DeviceIoControl failed %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"expected 32, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_disk_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_disk_extents() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @GENERIC_READ, align 4
  %5 = load i32, i32* @FILE_SHARE_READ, align 4
  %6 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @OPEN_EXISTING, align 4
  %9 = call i64 @CreateFileA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %7, i32* null, i32 %8, i32 0, i32 0)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %42

16:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS, align 4
  %19 = call i32 @DeviceIoControl(i64 %17, i32 %18, i32** bitcast ([16 x i32]* @test_disk_extents.data to i32**), i32 64, i32** bitcast ([16 x i32]* @test_disk_extents.data to i32**), i32 64, i32* %2, i32* null)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = call i32 (...) @GetLastError()
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @ERROR_INVALID_FUNCTION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @CloseHandle(i64 %29)
  br label %42

31:                                               ; preds = %22, %16
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 32
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @CloseHandle(i64 %40)
  br label %42

42:                                               ; preds = %31, %27, %13
  ret void
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @win_skip(i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeviceIoControl(i64, i32, i32**, i32, i32**, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
