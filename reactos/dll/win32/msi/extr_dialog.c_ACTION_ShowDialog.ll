; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_ACTION_ShowDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_ACTION_ShowDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ACTION_ShowDialog.szDialog = internal constant [7 x i8] c"Dialog\00", align 1
@INSTALLMESSAGE_SHOWDIALOG = common dso_local global i32 0, align 4
@INSTALLMESSAGE_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACTION_ShowDialog(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TABLE_Exists(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ACTION_ShowDialog.szDialog, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = call %struct.TYPE_9__* @MSI_CreateRecord(i32 0)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %57

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @MSI_RecordSetStringW(%struct.TYPE_9__* %21, i32 0, i8* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32, i32* @INSTALLMESSAGE_SHOWDIALOG, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = call i32 @MSI_ProcessMessage(%struct.TYPE_10__* %24, i32 %25, %struct.TYPE_9__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @msiobj_release(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, -2
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = call %struct.TYPE_9__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = call i32 @MSI_RecordSetInteger(%struct.TYPE_9__* %43, i32 1, i32 2726)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @MSI_RecordSetStringW(%struct.TYPE_9__* %45, i32 2, i8* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = load i32, i32* @INSTALLMESSAGE_INFO, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = call i32 @MSI_ProcessMessage(%struct.TYPE_10__* %48, i32 %49, %struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @msiobj_release(i32* %53)
  br label %55

55:                                               ; preds = %42, %34
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %41, %19, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @TABLE_Exists(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @MSI_ProcessMessage(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
