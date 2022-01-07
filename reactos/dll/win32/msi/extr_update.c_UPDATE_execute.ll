; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_update.c_UPDATE_execute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_update.c_UPDATE_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_23__*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"tv execute returned %x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, %struct.TYPE_23__*)* @UPDATE_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UPDATE_execute(%struct.tagMSIVIEW* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.tagMSIVIEW*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %16 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %3, align 8
  %17 = bitcast %struct.tagMSIVIEW* %16 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %15, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %21, %struct.TYPE_23__* %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = icmp ne %struct.TYPE_23__* %24, null
  br i1 %25, label %26, label %70

26:                                               ; preds = %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = call i32 @MSI_RecordGetFieldCount(%struct.TYPE_23__* %27)
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %35, %26
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %31 = icmp ne %struct.TYPE_20__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %15, align 8
  br label %29

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  %48 = call %struct.TYPE_23__* @MSI_CreateRecord(i32 %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %11, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @MSI_RecordCopyField(%struct.TYPE_23__* %57, i32 %60, %struct.TYPE_23__* %61, i32 %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %12, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %75 = icmp ne %struct.TYPE_21__* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %77, i32* %7, align 4
  br label %141

78:                                               ; preds = %70
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*)** %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %86 = call i32 %83(%struct.TYPE_21__* %84, %struct.TYPE_23__* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %141

92:                                               ; preds = %78
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32*, i32*)** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %99 = call i32 %97(%struct.TYPE_21__* %98, i32* %9, i32* %8)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %141

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = call %struct.TYPE_23__* @msi_query_merge_record(i32 %104, %struct.TYPE_20__* %107, %struct.TYPE_23__* %108)
  store %struct.TYPE_23__* %109, %struct.TYPE_23__** %10, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %111 = icmp ne %struct.TYPE_23__* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %113, i32* %7, align 4
  br label %141

114:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %137, %114
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_23__*, i32)** %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %128 = load i32, i32* %8, align 4
  %129 = shl i32 1, %128
  %130 = sub nsw i32 %129, 1
  %131 = call i32 %124(%struct.TYPE_21__* %125, i32 %126, %struct.TYPE_23__* %127, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @ERROR_SUCCESS, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  br label %140

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %115

140:                                              ; preds = %135, %115
  br label %141

141:                                              ; preds = %140, %112, %102, %91, %76
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %143 = icmp ne %struct.TYPE_23__* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = call i32 @msiobj_release(i32* %146)
  br label %148

148:                                              ; preds = %144, %141
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %150 = icmp ne %struct.TYPE_23__* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = call i32 @msiobj_release(i32* %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @MSI_RecordGetFieldCount(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordCopyField(%struct.TYPE_23__*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @msi_query_merge_record(i32, %struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
