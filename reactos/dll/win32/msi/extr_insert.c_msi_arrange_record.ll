; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_msi_arrange_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_msi_arrange_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_19__*, i32*, i64*)*, i64 (%struct.TYPE_19__*, i64, i32*, i32*, i32*, i32*)* }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_20__*, i64, i32*, i32*, i32*, i32*)* }
%struct.TYPE_17__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_17__**)* @msi_arrange_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_arrange_record(%struct.TYPE_18__* %0, %struct.TYPE_17__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_19__*, i32*, i64*)*, i64 (%struct.TYPE_19__*, i32*, i64*)** %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = call i64 %20(%struct.TYPE_19__* %23, i32* null, i64* %7)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %3, align 8
  br label %128

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_17__* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @msi_columns_in_order(%struct.TYPE_18__* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %43, i64* %3, align 8
  br label %128

44:                                               ; preds = %37, %30
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.TYPE_17__* @MSI_CreateRecord(i64 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %6, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %50, i64* %3, align 8
  br label %128

51:                                               ; preds = %44
  store i64 1, i64* %11, align 8
  br label %52

52:                                               ; preds = %112, %51
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %52
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64 (%struct.TYPE_20__*, i64, i32*, i32*, i32*, i32*)*, i64 (%struct.TYPE_20__*, i64, i32*, i32*, i32*, i32*)** %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 %63(%struct.TYPE_20__* %66, i64 %67, i32* %12, i32* null, i32* null, i32* null)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %123

73:                                               ; preds = %56
  store i64 1, i64* %10, align 8
  br label %74

74:                                               ; preds = %108, %73
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64 (%struct.TYPE_19__*, i64, i32*, i32*, i32*, i32*)*, i64 (%struct.TYPE_19__*, i64, i32*, i32*, i32*, i32*)** %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 %85(%struct.TYPE_19__* %88, i64 %89, i32* %13, i32* null, i32* null, i32* null)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %123

95:                                               ; preds = %78
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @strcmpW(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @MSI_RecordCopyField(%struct.TYPE_17__* %102, i64 %103, %struct.TYPE_17__* %104, i64 %105)
  br label %111

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %74

111:                                              ; preds = %100, %74
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %52

115:                                              ; preds = %52
  %116 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = call i32 @msiobj_release(i32* %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %121 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  store %struct.TYPE_17__* %120, %struct.TYPE_17__** %121, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %122, i64* %3, align 8
  br label %128

123:                                              ; preds = %94, %72
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = call i32 @msiobj_release(i32* %125)
  %127 = load i64, i64* %9, align 8
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %123, %115, %49, %42, %28
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_17__*) #1

declare dso_local i64 @msi_columns_in_order(%struct.TYPE_18__*, i64) #1

declare dso_local %struct.TYPE_17__* @MSI_CreateRecord(i64) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i32 @MSI_RecordCopyField(%struct.TYPE_17__*, i64, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
