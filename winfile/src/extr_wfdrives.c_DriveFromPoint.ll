; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_DriveFromPoint.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_DriveFromPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@bDriveBar = common dso_local global i32 0, align 4
@hwndDriveBar = common dso_local global i64 0, align 8
@cDrives = common dso_local global i64 0, align 8
@dxDrive = common dso_local global i32 0, align 4
@dyDrive = common dso_local global i32 0, align 4
@dyBorder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DriveFromPoint(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @bDriveBar, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @hwndDriveBar, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 -1, i32* %3, align 4
  br label %68

18:                                               ; preds = %13
  %19 = load i64, i64* @hwndDriveBar, align 8
  %20 = call i32 @GetClientRect(i64 %19, %struct.TYPE_5__* %6)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %64, %18
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @cDrives, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @dxDrive, align 4
  %30 = add nsw i32 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @dyDrive, align 4
  %36 = add nsw i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @dyBorder, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32, i32* @dyBorder, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @InflateRect(%struct.TYPE_5__* %7, i32 %39, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @PtInRect(%struct.TYPE_5__* %7, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %25
  %50 = load i32, i32* @dxDrive, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @dxDrive, align 4
  %55 = add nsw i32 %53, %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  %60 = load i32, i32* @dyDrive, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %21

67:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %46, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @InflateRect(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @PtInRect(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
