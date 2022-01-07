; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_clone_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_clone_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@msi_clone_properties.query_select = internal constant [25 x i8] c"SELECT * FROM `Property`\00", align 16
@msi_clone_properties.query_insert = internal constant [59 x i8] c"INSERT INTO `_Property` (`_Property`,`Value`) VALUES (?,?)\00", align 16
@msi_clone_properties.query_update = internal constant [57 x i8] c"UPDATE `_Property` SET `Value` = ? WHERE `_Property` = ?\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"insert failed, trying update\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"open view failed %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"update failed %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_clone_properties(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @MSI_DatabaseOpenViewW(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @msi_clone_properties.query_select, i64 0, i64 0), %struct.TYPE_13__** %4)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = call i64 @MSI_ViewExecute(%struct.TYPE_13__* %18, %struct.TYPE_12__* null)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = call i32 @MSI_ViewClose(%struct.TYPE_13__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = call i32 @msiobj_release(i32* %27)
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %110

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %44, %67, %99
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call i64 @MSI_ViewFetch(%struct.TYPE_13__* %32, %struct.TYPE_12__** %8)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %103

38:                                               ; preds = %31
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @MSI_DatabaseOpenViewW(i32* %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @msi_clone_properties.query_insert, i64 0, i64 0), %struct.TYPE_13__** %6)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = call i32 @msiobj_release(i32* %46)
  br label %31

48:                                               ; preds = %38
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = call i64 @MSI_ViewExecute(%struct.TYPE_13__* %49, %struct.TYPE_12__* %50)
  store i64 %51, i64* %5, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = call i32 @MSI_ViewClose(%struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = call i32 @msiobj_release(i32* %55)
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %48
  %61 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @MSI_DatabaseOpenViewW(i32* %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @msi_clone_properties.query_update, i64 0, i64 0), %struct.TYPE_13__** %7)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = call i32 @msiobj_release(i32* %71)
  br label %31

73:                                               ; preds = %60
  %74 = call %struct.TYPE_12__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %9, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = call i32 @MSI_RecordCopyField(%struct.TYPE_12__* %75, i32 1, %struct.TYPE_12__* %76, i32 2)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = call i32 @MSI_RecordCopyField(%struct.TYPE_12__* %78, i32 2, %struct.TYPE_12__* %79, i32 1)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = call i64 @MSI_ViewExecute(%struct.TYPE_13__* %81, %struct.TYPE_12__* %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %87, %73
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = call i32 @MSI_ViewClose(%struct.TYPE_13__* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = call i32 @msiobj_release(i32* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = call i32 @msiobj_release(i32* %97)
  br label %99

99:                                               ; preds = %90, %48
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = call i32 @msiobj_release(i32* %101)
  br label %31

103:                                              ; preds = %37
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = call i32 @MSI_ViewClose(%struct.TYPE_13__* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = call i32 @msiobj_release(i32* %107)
  %109 = load i64, i64* %5, align 8
  store i64 %109, i64* %2, align 8
  br label %110

110:                                              ; preds = %103, %23, %15
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_13__**) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @MSI_ViewClose(%struct.TYPE_13__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_13__*, %struct.TYPE_12__**) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local %struct.TYPE_12__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordCopyField(%struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
