; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_GetBasicControlsWidth.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_GetBasicControlsWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@nWindowsVersion = common dso_local global i64 0, align 8
@WINDOWS_10 = common dso_local global i64 0, align 8
@cbw = common dso_local global i8* null, align 8
@ddw = common dso_local global i8* null, align 8
@IDC_TARGET_SYSTEM = common dso_local global i32 0, align 4
@sw = common dso_local global i32 0, align 4
@IDC_PARTITION_TYPE = common dso_local global i32 0, align 4
@mw = common dso_local global i32 0, align 4
@hSaveToolbar = common dso_local global i32 0, align 4
@TB_GETIDEALSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@sbw = common dso_local global i64 0, align 8
@IDC_SAVE = common dso_local global i32 0, align 4
@bh = common dso_local global i64 0, align 8
@ssw = common dso_local global i32 0, align 4
@hDeviceList = common dso_local global i32 0, align 4
@IDS_CSM_HELP_TXT = common dso_local global i32 0, align 4
@tw = common dso_local global i32 0, align 4
@hTargetSystem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetBasicControlsWidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %2, align 4
  store i32 12, i32* %3, align 4
  store i32 15, i32* %4, align 4
  %7 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 4, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i32 8, i32* %10, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @MapDialogRect(i32 %11, %struct.TYPE_6__* %5)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* @nWindowsVersion, align 8
  %20 = load i64, i64* @WINDOWS_10, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 10, i32* %3, align 4
  store i32 13, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @MulDiv(i32 %24, i64 %26, i32 4)
  store i8* %27, i8** @cbw, align 8
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @MulDiv(i32 %28, i64 %30, i32 4)
  store i8* %31, i8** @ddw, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @IDC_TARGET_SYSTEM, align 4
  %34 = call i32 @GetDlgItem(i32 %32, i32 %33)
  %35 = call i32 @GetWindowRect(i32 %34, %struct.TYPE_6__* %5)
  %36 = load i32, i32* %2, align 4
  %37 = bitcast %struct.TYPE_6__* %5 to i32*
  %38 = call i32 @MapWindowPoints(i32* null, i32 %36, i32* %37, i32 2)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* @sw, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @IDC_PARTITION_TYPE, align 4
  %43 = call i32 @GetDlgItem(i32 %41, i32 %42)
  %44 = call i32 @GetWindowRect(i32 %43, %struct.TYPE_6__* %5)
  %45 = load i32, i32* %2, align 4
  %46 = bitcast %struct.TYPE_6__* %5 to i32*
  %47 = call i32 @MapWindowPoints(i32* null, i32 %45, i32* %46, i32 2)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @sw, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* @sw, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* @mw, align 4
  %56 = load i32, i32* @hSaveToolbar, align 4
  %57 = load i32, i32* @TB_GETIDEALSIZE, align 4
  %58 = load i64, i64* @FALSE, align 8
  %59 = trunc i64 %58 to i32
  %60 = ptrtoint %struct.TYPE_5__* %6 to i32
  %61 = call i32 @SendMessage(i32 %56, i32 %57, i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* @sbw, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @IDC_SAVE, align 4
  %66 = call i32 @GetDlgItem(i32 %64, i32 %65)
  %67 = call i32 @GetWindowRect(i32 %66, %struct.TYPE_6__* %5)
  %68 = load i32, i32* %2, align 4
  %69 = bitcast %struct.TYPE_6__* %5 to i32*
  %70 = call i32 @MapWindowPoints(i32* null, i32 %68, i32* %69, i32 2)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %72, %74
  store i64 %75, i64* @bh, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* @ssw, align 4
  %78 = load i32, i32* @hDeviceList, align 4
  %79 = call i32 @GetWindowRect(i32 %78, %struct.TYPE_6__* %5)
  %80 = load i32, i32* %2, align 4
  %81 = bitcast %struct.TYPE_6__* %5 to i32*
  %82 = call i32 @MapWindowPoints(i32* null, i32 %80, i32* %81, i32 2)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @ssw, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @ssw, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @IDS_CSM_HELP_TXT, align 4
  %91 = call i32 @GetDlgItem(i32 %89, i32 %90)
  %92 = call i32 @GetWindowRect(i32 %91, %struct.TYPE_6__* %5)
  %93 = load i32, i32* %2, align 4
  %94 = bitcast %struct.TYPE_6__* %5 to i32*
  %95 = call i32 @MapWindowPoints(i32* null, i32 %93, i32* %94, i32 2)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* @tw, align 4
  %98 = load i32, i32* @hTargetSystem, align 4
  %99 = call i32 @GetWindowRect(i32 %98, %struct.TYPE_6__* %5)
  %100 = load i32, i32* %2, align 4
  %101 = bitcast %struct.TYPE_6__* %5 to i32*
  %102 = call i32 @MapWindowPoints(i32* null, i32 %100, i32* %101, i32 2)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @tw, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* @tw, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MapDialogRect(i32, %struct.TYPE_6__*) #2

declare dso_local i8* @MulDiv(i32, i64, i32) #2

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #2

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
