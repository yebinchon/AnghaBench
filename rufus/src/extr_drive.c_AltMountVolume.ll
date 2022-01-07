; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_AltMountVolume.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_AltMountVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AltMountVolume.mounted_drive = internal global [3 x i8] c"?:\00", align 1
@.str = private unnamed_addr constant [38 x i8] c"Could not find an unused drive letter\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@groot_name = common dso_local global i32 0, align 4
@groot_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected volume name: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Mounting '%s' as '%s'\00", align 1
@DDD_RAW_TARGET_PATH = common dso_local global i32 0, align 4
@DDD_NO_BROADCAST_SYSTEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Mount operation failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AltMountVolume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = call signext i8 (...) @GetUnusedDriveLetter()
  store i8 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @AltMountVolume.mounted_drive, i64 0, i64 0), align 1
  %10 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @AltMountVolume.mounted_drive, i64 0, i64 0), align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @suprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %47

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i8* @AltGetLogicalName(i32 %16, i32 %17, i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @groot_name, align 4
  %26 = load i32, i32* @groot_len, align 4
  %27 = call i64 @strncmp(i8* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %15
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 (i8*, ...) @suprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %47

32:                                               ; preds = %23
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 14
  %35 = call i32 (i8*, ...) @suprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @AltMountVolume.mounted_drive, i64 0, i64 0))
  %36 = load i32, i32* @DDD_RAW_TARGET_PATH, align 4
  %37 = load i32, i32* @DDD_NO_BROADCAST_SYSTEM, align 4
  %38 = or i32 %36, %37
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 14
  %41 = call i32 @DefineDosDeviceA(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @AltMountVolume.mounted_drive, i64 0, i64 0), i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = call i8* (...) @WindowsErrorString()
  %45 = call i32 (i8*, ...) @suprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %47

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @AltMountVolume.mounted_drive, i64 0, i64 0), i8** %7, align 8
  br label %47

47:                                               ; preds = %46, %43, %29, %13
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i8*, i8** %7, align 8
  ret i8* %50
}

declare dso_local signext i8 @GetUnusedDriveLetter(...) #1

declare dso_local i32 @suprintf(i8*, ...) #1

declare dso_local i8* @AltGetLogicalName(i32, i32, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @DefineDosDeviceA(i32, i8*, i8*) #1

declare dso_local i8* @WindowsErrorString(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
