; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_media.c_msi_change_media.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_media.c_msi_change_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@IDRETRY = common dso_local global i64 0, align 8
@szSourceDir = common dso_local global i32 0, align 4
@MSIERR_CABNOTFOUND = common dso_local global i32 0, align 4
@INSTALLMESSAGE_ERROR = common dso_local global i32 0, align 4
@MB_RETRYCANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @msi_change_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_change_media(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load i64, i64* @IDRETRY, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @szSourceDir, align 4
  %13 = call i32 @msi_dup_property(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = call %struct.TYPE_12__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %5, align 8
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IDRETRY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @source_matches_volume(%struct.TYPE_14__* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = call i32 @MSI_RecordSetStringW(%struct.TYPE_12__* %28, i32 0, i32* null)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = load i32, i32* @MSIERR_CABNOTFOUND, align 4
  %32 = call i32 @MSI_RecordSetInteger(%struct.TYPE_12__* %30, i32 1, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @MSI_RecordSetStringW(%struct.TYPE_12__* %33, i32 2, i32* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = load i32, i32* @INSTALLMESSAGE_ERROR, align 4
  %40 = load i32, i32* @MB_RETRYCANCEL, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i64 @MSI_ProcessMessage(%struct.TYPE_13__* %38, i32 %41, %struct.TYPE_12__* %42)
  store i64 %43, i64* %7, align 8
  br label %15

44:                                               ; preds = %25
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = call i32 @msiobj_release(i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @msi_free(i32 %48)
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local i32 @msi_dup_property(i32, i32) #1

declare dso_local %struct.TYPE_12__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @source_matches_volume(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @MSI_ProcessMessage(%struct.TYPE_13__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @msi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
