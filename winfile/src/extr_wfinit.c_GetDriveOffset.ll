; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_GetDriveOffset.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_GetDriveOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@aDriveInfo = common dso_local global %struct.TYPE_2__* null, align 8
@dxDriveBitmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetDriveOffset(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @IsRemoteDrive(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aDriveInfo, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* @dxDriveBitmap, align 4
  %16 = mul nsw i32 %15, 5
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %7
  %18 = load i32, i32* @dxDriveBitmap, align 4
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @IsRemovableDrive(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @dxDriveBitmap, align 4
  %26 = mul nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @IsRamDrive(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @dxDriveBitmap, align 4
  %33 = mul nsw i32 %32, 3
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @IsCDRomDrive(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @dxDriveBitmap, align 4
  %40 = mul nsw i32 %39, 0
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @dxDriveBitmap, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %38, %31, %24, %17, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @IsRemoteDrive(i64) #1

declare dso_local i64 @IsRemovableDrive(i64) #1

declare dso_local i64 @IsRamDrive(i64) #1

declare dso_local i64 @IsCDRomDrive(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
