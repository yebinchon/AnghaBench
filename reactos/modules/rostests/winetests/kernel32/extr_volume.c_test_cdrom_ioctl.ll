; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_cdrom_ioctl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_cdrom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_cdrom_ioctl.drive_path = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@__const.test_cdrom_ioctl.drive_full_path = private unnamed_addr constant [7 x i8] c"\\\\.\\A:\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"GetLogicalDrives failed : %u\0A\00", align 1
@DRIVE_CDROM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Skipping %c:, not a CDROM drive.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Testing with %c:\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to open the device : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cdrom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cdrom_ioctl() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [4 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = bitcast [4 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_cdrom_ioctl.drive_path, i32 0, i32 0), i64 4, i1 false)
  %7 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_cdrom_ioctl.drive_full_path, i32 0, i32 0), i64 7, i1 false)
  %8 = call i32 (...) @GetLogicalDrives()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call signext i8 (...) @GetLastError()
  %13 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %12)
  br label %64

14:                                               ; preds = %0
  store i8 65, i8* %1, align 1
  br label %15

15:                                               ; preds = %61, %14
  %16 = load i8, i8* %1, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i8, i8* %1, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 65
  %24 = shl i32 1, %23
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %61

28:                                               ; preds = %19
  %29 = load i8, i8* %1, align 1
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %32 = call i64 @GetDriveTypeA(i8* %31)
  %33 = load i64, i64* @DRIVE_CDROM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i8, i8* %1, align 1
  %37 = call i32 @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8 signext %36)
  br label %61

38:                                               ; preds = %28
  %39 = load i8, i8* %1, align 1
  %40 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8 signext %39)
  %41 = load i8, i8* %1, align 1
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 4
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %44 = load i32, i32* @GENERIC_READ, align 4
  %45 = load i32, i32* @FILE_SHARE_READ, align 4
  %46 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @OPEN_EXISTING, align 4
  %49 = call i64 @CreateFileA(i8* %43, i32 %44, i32 %47, i32* null, i32 %48, i32 0, i32 0)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = call signext i8 (...) @GetLastError()
  %55 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8 signext %54)
  br label %61

56:                                               ; preds = %38
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @test_dvd_read_structure(i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @CloseHandle(i64 %59)
  br label %61

61:                                               ; preds = %56, %53, %35, %27
  %62 = load i8, i8* %1, align 1
  %63 = add i8 %62, 1
  store i8 %63, i8* %1, align 1
  br label %15

64:                                               ; preds = %11, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @trace(i8*, i8 signext) #2

declare dso_local signext i8 @GetLastError(...) #2

declare dso_local i64 @GetDriveTypeA(i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @test_dvd_read_structure(i64) #2

declare dso_local i32 @CloseHandle(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
