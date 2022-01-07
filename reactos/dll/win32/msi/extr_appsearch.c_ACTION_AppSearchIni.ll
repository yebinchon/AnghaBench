; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchIni.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@ACTION_AppSearchIni.query = internal constant [49 x i8] c"select * from IniLocator where Signature_ = '%s'\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to query IniLocator for %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32**, %struct.TYPE_12__*)* @ACTION_AppSearchIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ACTION_AppSearchIni(%struct.TYPE_14__* %0, i32** %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @debugstr_w(i32 %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32**, i32*** %6, align 8
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_13__* @MSI_QueryGetRecord(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @ACTION_AppSearchIni.query, i64 0, i64 0), i32 %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %8, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @debugstr_w(i32 %39)
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

43:                                               ; preds = %3
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = call i32* @msi_dup_record_field(%struct.TYPE_13__* %44, i32 2)
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = call i32* @msi_dup_record_field(%struct.TYPE_13__* %46, i32 3)
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = call i32* @msi_dup_record_field(%struct.TYPE_13__* %48, i32 4)
  store i32* %49, i32** %11, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = call i32 @MSI_RecordGetInteger(%struct.TYPE_13__* %50, i32 5)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = call i32 @MSI_RecordGetInteger(%struct.TYPE_13__* %52, i32 6)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @MAX_PATH, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @GetPrivateProfileStringW(i32* %64, i32* %65, i32* null, i8* %20, i32 %66, i32* %67)
  %69 = getelementptr inbounds i8, i8* %20, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 15
  switch i32 %74, label %88 [
    i32 130, label %75
    i32 129, label %80
    i32 128, label %84
  ]

75:                                               ; preds = %72
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = load i32**, i32*** %6, align 8
  %79 = call i32 @ACTION_SearchDirectory(%struct.TYPE_14__* %76, %struct.TYPE_12__* %77, i8* %20, i32 0, i32** %78)
  br label %88

80:                                               ; preds = %72
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = call i32* @app_search_file(i8* %20, %struct.TYPE_12__* %81)
  %83 = load i32**, i32*** %6, align 8
  store i32* %82, i32** %83, align 8
  br label %88

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = call i32* @get_ini_field(i8* %20, i32 %85)
  %87 = load i32**, i32*** %6, align 8
  store i32* %86, i32** %87, align 8
  br label %88

88:                                               ; preds = %72, %84, %80, %75
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @msi_free(i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @msi_free(i32* %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @msi_free(i32* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = call i32 @msiobj_release(i32* %97)
  %99 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %89, %36
  %101 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local %struct.TYPE_13__* @MSI_QueryGetRecord(i32, i8*, i32) #2

declare dso_local i32* @msi_dup_record_field(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @GetPrivateProfileStringW(i32*, i32*, i32*, i8*, i32, i32*) #2

declare dso_local i32 @ACTION_SearchDirectory(%struct.TYPE_14__*, %struct.TYPE_12__*, i8*, i32, i32**) #2

declare dso_local i32* @app_search_file(i8*, %struct.TYPE_12__*) #2

declare dso_local i32* @get_ini_field(i8*, i32) #2

declare dso_local i32 @msi_free(i32*) #2

declare dso_local i32 @msiobj_release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
