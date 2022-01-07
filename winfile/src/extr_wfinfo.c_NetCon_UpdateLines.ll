; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_NetCon_UpdateLines.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_NetCon_UpdateLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@aDriveInfo = common dso_local global %struct.TYPE_2__* null, align 8
@DRIVE_INFO_NAME_HEADER = common dso_local global i64 0, align 8
@CHAR_NEWLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NetCon_UpdateLines(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aDriveInfo, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DRIVE_INFO_NAME_HEADER, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %24, %2
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @CHAR_NEWLINE, align 4
  %23 = call i64 @StrChr(i64 %21, i32 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %6, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %18, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aDriveInfo, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %29, i64* %36, align 8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @StrChr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
