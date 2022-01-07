; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_msi_select_update.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_msi_select_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_16__*, i64, %struct.TYPE_15__**)*, i64 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i64)* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to get column information: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot modify binary data!\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@MSITYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to modify record: %d\0A\00", align 1
@MSIMODIFY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, %struct.TYPE_15__*, i64)* @msi_select_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_select_update(%struct.tagMSIVIEW* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %19 = bitcast %struct.tagMSIVIEW* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %8, align 8
  %20 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %21 = call i64 @SELECT_get_dimensions(%struct.tagMSIVIEW* %20, i32* null, i64* %11)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %4, align 8
  br label %131

27:                                               ; preds = %3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_16__*, i64, %struct.TYPE_15__**)*, i64 (%struct.TYPE_16__*, i64, %struct.TYPE_15__**)** %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i64 %34(%struct.TYPE_16__* %37, i64 %39, %struct.TYPE_15__** %16)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %131

46:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %108, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i64 @SELECT_get_column_info(%struct.tagMSIVIEW* %58, i64 %60, i32* null, i64* %13, i32* null, i32* null)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i64, i64* %9, align 8
  %67 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %126

68:                                               ; preds = %51
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @MSITYPE_IS_BINARY(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %74, i64* %9, align 8
  br label %126

75:                                               ; preds = %68
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @MSITYPE_STRING, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %82, 1
  %84 = call i32 @msi_record_get_string(%struct.TYPE_15__* %81, i64 %83, i32* %17)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i64 @msi_record_set_string(%struct.TYPE_15__* %85, i64 %86, i32 %87, i32 %88)
  store i64 %89, i64* %9, align 8
  br label %99

90:                                               ; preds = %75
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  %94 = call i64 @MSI_RecordGetInteger(%struct.TYPE_15__* %91, i64 %93)
  store i64 %94, i64* %14, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i64 @MSI_RecordSetInteger(%struct.TYPE_15__* %95, i64 %96, i64 %97)
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %90, %80
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64, i64* %9, align 8
  %106 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  br label %126

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %47

111:                                              ; preds = %47
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i64 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i64)*, i64 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i64)** %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* @MSIMODIFY_UPDATE, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 %118(%struct.TYPE_16__* %121, i32 %122, %struct.TYPE_15__* %123, i64 %124)
  store i64 %125, i64* %9, align 8
  br label %126

126:                                              ; preds = %111, %104, %72, %65
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = call i32 @msiobj_release(i32* %128)
  %130 = load i64, i64* %9, align 8
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %126, %44, %25
  %132 = load i64, i64* %4, align 8
  ret i64 %132
}

declare dso_local i64 @SELECT_get_dimensions(%struct.tagMSIVIEW*, i32*, i64*) #1

declare dso_local i64 @SELECT_get_column_info(%struct.tagMSIVIEW*, i64, i32*, i64*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @MSITYPE_IS_BINARY(i64) #1

declare dso_local i32 @msi_record_get_string(%struct.TYPE_15__*, i64, i32*) #1

declare dso_local i64 @msi_record_set_string(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i64 @MSI_RecordGetInteger(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @MSI_RecordSetInteger(%struct.TYPE_15__*, i64, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
