; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_feature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }

@load_feature.query = internal constant [68 x i8] c"SELECT `Component_` FROM `FeatureComponents` WHERE `Feature_` ='%s'\00", align 16
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Loading feature %s\0A\00", align 1
@INSTALLSTATE_UNKNOWN = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@iterate_load_featurecomponents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_13__*)* @load_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_feature(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = call %struct.TYPE_14__* @msi_alloc_zero(i32 104)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %16, i64* %3, align 8
  br label %104

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 13
  %20 = call i32 @list_init(i32* %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 12
  %23 = call i32 @list_init(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @msi_dup_record_field(i32* %24, i32 1)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @debugstr_w(i8* %30)
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @msi_dup_record_field(i32* %33, i32 2)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 11
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @msi_dup_record_field(i32* %37, i32 3)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @msi_dup_record_field(i32* %41, i32 4)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @MSI_RecordIsNull(i32* %45, i32 5)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %17
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @MSI_RecordGetInteger(i32* %49, i32 5)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %17
  %54 = load i32*, i32** %4, align 8
  %55 = call i8* @MSI_RecordGetInteger(i32* %54, i32 6)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @msi_dup_record_field(i32* %58, i32 7)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @MSI_RecordGetInteger(i32* %62, i32 8)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @INSTALLSTATE_UNKNOWN, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @INSTALLSTATE_UNKNOWN, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @INSTALLSTATE_UNKNOWN, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @MSI_OpenQuery(i32 %82, %struct.TYPE_12__** %8, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @load_feature.query, i64 0, i64 0), i8* %85)
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %53
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %91, i64* %3, align 8
  br label %104

92:                                               ; preds = %53
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = load i32, i32* @iterate_load_featurecomponents, align 4
  %99 = call i64 @MSI_IterateRecords(%struct.TYPE_12__* %97, i32* null, i32 %98, %struct.TYPE_11__* %9)
  store i64 %99, i64* %10, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = call i32 @msiobj_release(i32* %101)
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %92, %90, %15
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local %struct.TYPE_14__* @msi_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @MSI_RecordIsNull(i32*, i32) #1

declare dso_local i8* @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_12__**, i8*, i8*) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_12__*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
