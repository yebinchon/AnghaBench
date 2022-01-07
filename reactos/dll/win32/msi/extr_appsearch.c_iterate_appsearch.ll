; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_iterate_appsearch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_iterate_appsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@szSourceDir = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @iterate_appsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_appsearch(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = call i32 @MSI_RecordGetString(%struct.TYPE_13__* %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 @MSI_RecordGetString(%struct.TYPE_13__* %15, i32 2)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @debugstr_w(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @debugstr_w(i32 %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ACTION_AppSearchSigName(%struct.TYPE_14__* %22, i32 %23, i32* %9, i32** %8)
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @msi_set_property(i32 %30, i32 %31, i32* %32, i32 -1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @szSourceDir, align 4
  %40 = call i32 @strcmpW(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @msi_reset_folders(%struct.TYPE_14__* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %27
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @msi_free(i32* %47)
  br label %49

49:                                               ; preds = %46, %2
  %50 = call i32 @ACTION_FreeSignature(i32* %9)
  %51 = call %struct.TYPE_13__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %10, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %52, i32 1, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %55, i32 2, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = call i32 @MSI_ProcessMessage(%struct.TYPE_14__* %58, i32 %59, %struct.TYPE_13__* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = call i32 @msiobj_release(i32* %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @ACTION_AppSearchSigName(%struct.TYPE_14__*, i32, i32*, i32**) #1

declare dso_local i32 @msi_set_property(i32, i32, i32*, i32) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i32 @msi_reset_folders(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @ACTION_FreeSignature(i32*) #1

declare dso_local %struct.TYPE_13__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @MSI_ProcessMessage(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
