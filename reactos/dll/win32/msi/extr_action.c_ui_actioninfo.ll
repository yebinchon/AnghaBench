; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ui_actioninfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ui_actioninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MSIERR_INFO_ACTIONSTART = common dso_local global i32 0, align 4
@MSIERR_INFO_ACTIONENDED = common dso_local global i32 0, align 4
@INSTALLMESSAGE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i64, i32)* @ui_actioninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_actioninfo(%struct.TYPE_10__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @MSIERR_INFO_ACTIONSTART, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @MSIERR_INFO_ACTIONENDED, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32* @msi_get_error_message(i32 %13, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = call %struct.TYPE_9__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @msi_free(i32* %27)
  br label %63

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @MSI_RecordSetStringW(%struct.TYPE_9__* %30, i32 0, i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @MSI_RecordSetStringW(%struct.TYPE_9__* %33, i32 1, i32* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ]
  %47 = call i32 @MSI_RecordSetInteger(%struct.TYPE_9__* %36, i32 2, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = load i32, i32* @INSTALLMESSAGE_INFO, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = call i32 @MSI_ProcessMessage(%struct.TYPE_10__* %48, i32 %49, %struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @msiobj_release(i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @msi_free(i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %26, %59, %45
  ret void
}

declare dso_local i32* @msi_get_error_message(i32, i32) #1

declare dso_local %struct.TYPE_9__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @MSI_ProcessMessage(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
