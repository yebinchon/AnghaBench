; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_MSI_FormatRecordW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_MSI_FormatRecordW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p %p %p %p\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSI_FormatRecordW(i32* %0, %struct.TYPE_13__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %16 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %17, %struct.TYPE_13__* %18, i64* %19, i32* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = call i32 @dump_record(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = call i32* @msi_dup_record_field(%struct.TYPE_13__* %24, i32 0)
  store i32* %25, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = call i32* @build_default_format(%struct.TYPE_13__* %28)
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = call i32 @MSI_RecordGetFieldCount(%struct.TYPE_13__* %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call %struct.TYPE_13__* @MSI_CloneRecord(%struct.TYPE_13__* %33)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %13, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %38, i32* %11, align 4
  br label %123

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %40, i32 0, i32* %41)
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %65, %39
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32* @MSI_RecordGetString(%struct.TYPE_13__* %48, i32 %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32* @MSI_RecordGetString(%struct.TYPE_13__* %54, i32 %55)
  %57 = call i32 @deformat_string_internal(i32* %53, i32* %56, i32** %10, i32* %12, %struct.TYPE_13__* null)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %58, i32 %59, i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @msi_free(i32* %62)
  br label %64

64:                                               ; preds = %52, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %43

68:                                               ; preds = %43
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %72 = call i32 @deformat_string_internal(i32* %69, i32* %70, i32** %10, i32* %12, %struct.TYPE_13__* %71)
  %73 = load i64*, i64** %7, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %115

75:                                               ; preds = %68
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i64*, i64** %7, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(i64* %81, i32* %82, i32 %86)
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i64*, i64** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 0, i64* %92, align 8
  br label %114

93:                                               ; preds = %75
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i64*, i64** %7, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memcpy(i64* %98, i32* %99, i32 %104)
  %106 = load i64*, i64** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %106, i64 %110
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %97, %93
  %113 = load i32, i32* @ERROR_MORE_DATA, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %112, %80
  br label %117

115:                                              ; preds = %68
  %116 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = call i32 @msiobj_release(i32* %121)
  br label %123

123:                                              ; preds = %117, %37
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @msi_free(i32* %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @msi_free(i32* %126)
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_13__*, i64*, i32*) #1

declare dso_local i32 @dump_record(%struct.TYPE_13__*) #1

declare dso_local i32* @msi_dup_record_field(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @build_default_format(%struct.TYPE_13__*) #1

declare dso_local i32 @MSI_RecordGetFieldCount(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @MSI_CloneRecord(%struct.TYPE_13__*) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32* @MSI_RecordGetString(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @deformat_string_internal(i32*, i32*, i32**, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
