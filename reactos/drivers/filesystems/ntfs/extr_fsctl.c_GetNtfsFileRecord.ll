; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_GetNtfsFileRecord.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_GetNtfsFileRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_32__, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_34__ = type { i32, i64, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Invalid input! %d %p\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@NTFS_FILE_RECORD_OUTPUT_BUFFER = common dso_local global i32 0, align 4
@FileRecordBuffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid output! %d %p\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Requesting: %I64x\0A\00", align 1
@FRH_IN_USE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Returning: %I64x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_23__*)* @GetNtfsFileRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNtfsFileRecord(%struct.TYPE_26__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = call %struct.TYPE_24__* @IoGetCurrentIrpStackLocation(%struct.TYPE_23__* %12)
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %7, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21, %2
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32, i32* %36)
  %38 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %38, i32* %3, align 4
  br label %159

39:                                               ; preds = %21
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @NTFS_FILE_RECORD_OUTPUT_BUFFER, align 4
  %46 = load i32, i32* @FileRecordBuffer, align 4
  %47 = call i64 @FIELD_OFFSET(i32 %45, i32 %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %47, %51
  %53 = icmp slt i64 %44, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %39
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %54, %39
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32* %70)
  %72 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %72, i32* %3, align 4
  br label %159

73:                                               ; preds = %54
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = call %struct.TYPE_25__* @ExAllocateFromNPagedLookasideList(i32* %75)
  store %struct.TYPE_25__* %76, %struct.TYPE_25__** %9, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %78 = icmp eq %struct.TYPE_25__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %80, i32* %3, align 4
  br label %159

81:                                               ; preds = %73
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %86, %struct.TYPE_35__** %8, align 8
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %113, %81
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %97 = call i32 @ReadFileRecord(%struct.TYPE_26__* %94, i32 %95, %struct.TYPE_25__* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @NT_SUCCESS(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FRH_IN_USE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %116

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load i64, i64* @TRUE, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %93, label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %123, %struct.TYPE_34__** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @RtlCopyMemory(i32 %136, %struct.TYPE_25__* %137, i64 %141)
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %146 = call i32 @ExFreeToNPagedLookasideList(i32* %144, %struct.TYPE_25__* %145)
  %147 = load i32, i32* @NTFS_FILE_RECORD_OUTPUT_BUFFER, align 4
  %148 = load i32, i32* @FileRecordBuffer, align 4
  %149 = call i64 @FIELD_OFFSET(i32 %147, i32 %148)
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %149, %153
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %116, %79, %60, %27
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_24__* @IoGetCurrentIrpStackLocation(%struct.TYPE_23__*) #1

declare dso_local i32 @DPRINT1(i8*, i32, ...) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local %struct.TYPE_25__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_26__*, i32, %struct.TYPE_25__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlCopyMemory(i32, %struct.TYPE_25__*, i64) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
