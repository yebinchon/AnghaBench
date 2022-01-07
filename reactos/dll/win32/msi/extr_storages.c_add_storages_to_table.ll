; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_add_storages_to_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_add_storages_to_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@STGTY_STORAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"enumerated storage %s\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @add_storages_to_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_storages_to_table(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IStorage_EnumElements(i32 %14, i32 0, i32* null, i32 0, i32** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %105

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = call %struct.TYPE_12__** @msi_alloc(i32 8)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store %struct.TYPE_12__** %23, %struct.TYPE_12__*** %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  %29 = icmp ne %struct.TYPE_12__** %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %105

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %92, %50, %31
  %33 = load i64, i64* @TRUE, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @IEnumSTATSTG_Next(i32* %36, i32 1, %struct.TYPE_13__* %6, i32* %9)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %35
  br label %101

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @STGTY_STORAGE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @CoTaskMemFree(i32 %52)
  br label %32

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @debugstr_w(i32 %56)
  %58 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_12__* @create_storage(%struct.TYPE_14__* %59, i32 %61, i32* null)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %4, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  store i32 -1, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @CoTaskMemFree(i32 %67)
  br label %101

69:                                               ; preds = %54
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @STGM_READ, align 4
  %78 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = call i32 @IStorage_OpenStorage(i32 %74, i32 %76, i32* null, i32 %79, i32* null, i32 0, i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @CoTaskMemFree(i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = call i32 @storages_set_table_size(%struct.TYPE_14__* %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %69
  store i32 -1, i32* %8, align 4
  br label %101

92:                                               ; preds = %69
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %96, i64 %99
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %100, align 8
  br label %32

101:                                              ; preds = %91, %65, %44, %32
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @IEnumSTATSTG_Release(i32* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %30, %19
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @IStorage_EnumElements(i32, i32, i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_12__** @msi_alloc(i32) #1

declare dso_local i32 @IEnumSTATSTG_Next(i32*, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_12__* @create_storage(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @IStorage_OpenStorage(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @storages_set_table_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @IEnumSTATSTG_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
