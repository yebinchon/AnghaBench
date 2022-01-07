; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_RemountVolume.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_RemountVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Successfully remounted %s as %C:\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to remount %s as %C:\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_CANT_REMOUNT_VOLUME = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not remount %s as %C: %s\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RemountVolume(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [51 x i8], align 16
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = call i32 @FlushDrive(i8 signext %7)
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %11 = call i64 @GetVolumeNameForVolumeMountPointA(i8* %9, i8* %10, i32 51)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @DeleteVolumeMountPointA(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = call i32 @Sleep(i32 200)
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %21 = call i64 @MountVolume(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call i32 (i8*, i8*, i8, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %24, i8 signext %27)
  br label %43

29:                                               ; preds = %17
  %30 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i32 (i8*, i8*, i8, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8 signext %33)
  %35 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %36 = load i32, i32* @FACILITY_STORAGE, align 4
  %37 = call i32 @FAC(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @ERROR_CANT_REMOUNT_VOLUME, align 4
  %40 = call i32 @APPERR(i32 %39)
  %41 = or i32 %38, %40
  store i32 %41, i32* @FormatStatus, align 4
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %23
  br label %51

44:                                               ; preds = %13
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = call i32 (...) @WindowsErrorString()
  %50 = call i32 (i8*, i8*, i8, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8 signext %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %43
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %29
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @FlushDrive(i8 signext) #1

declare dso_local i64 @GetVolumeNameForVolumeMountPointA(i8*, i8*, i32) #1

declare dso_local i64 @DeleteVolumeMountPointA(i8*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @MountVolume(i8*, i8*) #1

declare dso_local i32 @uprintf(i8*, i8*, i8 signext, ...) #1

declare dso_local i32 @FAC(i32) #1

declare dso_local i32 @APPERR(i32) #1

declare dso_local i32 @WindowsErrorString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
