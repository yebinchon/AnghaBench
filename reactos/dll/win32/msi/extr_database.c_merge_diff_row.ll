; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_diff_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_diff_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_26__*)* @merge_diff_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @merge_diff_row(%struct.TYPE_22__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @TABLE_Exists(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %2
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = call %struct.TYPE_25__* @create_diff_row_query(i32 %29, i32 %32, i32 %35, %struct.TYPE_22__* %36)
  store %struct.TYPE_25__* %37, %struct.TYPE_25__** %11, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %39 = icmp ne %struct.TYPE_25__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %41, i64* %3, align 8
  br label %118

42:                                               ; preds = %26
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %47 = call i64 @MSI_DatabaseOpenViewW(i32 %45, %struct.TYPE_25__* %46, %struct.TYPE_23__** %9)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %108

52:                                               ; preds = %42
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %54 = call i64 @MSI_ViewExecute(%struct.TYPE_23__* %53, i32* null)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %108

59:                                               ; preds = %52
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %61 = call i64 @MSI_ViewFetch(%struct.TYPE_23__* %60, %struct.TYPE_22__** %10)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = call i32 @MSI_RecordsAreEqual(%struct.TYPE_22__* %66, %struct.TYPE_22__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %108

75:                                               ; preds = %65, %59
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %108

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %81, %2
  %84 = call %struct.TYPE_25__* @msi_alloc(i32 8)
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %8, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %86 = icmp ne %struct.TYPE_25__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %88, i64* %12, align 8
  br label %108

89:                                               ; preds = %83
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = call i32 @MSI_CloneRecord(%struct.TYPE_22__* %90)
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %89
  %99 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %99, i64* %12, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = call i32 @msi_free(%struct.TYPE_25__* %100)
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  br label %108

108:                                              ; preds = %102, %98, %87, %79, %70, %58, %51
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %110 = call i32 @msi_free(%struct.TYPE_25__* %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = call i32 @msiobj_release(i32* %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = call i32 @msiobj_release(i32* %115)
  %117 = load i64, i64* %12, align 8
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %108, %40
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i64 @TABLE_Exists(i32, i32) #1

declare dso_local %struct.TYPE_25__* @create_diff_row_query(i32, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @MSI_DatabaseOpenViewW(i32, %struct.TYPE_25__*, %struct.TYPE_23__**) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_23__*, i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_23__*, %struct.TYPE_22__**) #1

declare dso_local i32 @MSI_RecordsAreEqual(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @msi_alloc(i32) #1

declare dso_local i32 @MSI_CloneRecord(%struct.TYPE_22__*) #1

declare dso_local i32 @msi_free(%struct.TYPE_25__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
