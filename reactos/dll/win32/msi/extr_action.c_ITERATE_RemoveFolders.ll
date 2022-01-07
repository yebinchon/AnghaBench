; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_RemoveFolders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_RemoveFolders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@INSTALLSTATE_ABSENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"component not scheduled for removal %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to get folder id\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to resolve folder %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"folder is %s\0A\00", align 1
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @ITERATE_RemoveFolders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_RemoveFolders(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @MSI_RecordGetString(%struct.TYPE_10__* %14, i32 2)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_11__* @msi_get_loaded_component(i32* %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = call i64 @msi_get_component_action(i32* %29, %struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INSTALLSTATE_ABSENT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @debugstr_w(i32 %40)
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %84

44:                                               ; preds = %28
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @MSI_RecordGetString(%struct.TYPE_10__* %45, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %84

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @msi_get_target_folder(i32* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @debugstr_w(i32 %59)
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %84

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @debugstr_w(i32 %64)
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call %struct.TYPE_10__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %10, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @MSI_RecordSetStringW(%struct.TYPE_10__* %68, i32 1, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = call i32 @MSI_ProcessMessage(i32* %71, i32 %72, %struct.TYPE_10__* %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i32 @msiobj_release(i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32* @msi_get_loaded_folder(i32* %78, i32 %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @remove_persistent_folder(i32* %81)
  %83 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %63, %58, %49, %39, %26, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_11__* @msi_get_loaded_component(i32*, i32) #1

declare dso_local i64 @msi_get_component_action(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @msi_get_target_folder(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @MSI_ProcessMessage(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32* @msi_get_loaded_folder(i32*, i32) #1

declare dso_local i32 @remove_persistent_folder(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
