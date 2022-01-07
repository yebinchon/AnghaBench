; ModuleID = '/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_DetermineMediaType.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_DetermineMediaType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__, %struct.TYPE_25__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i8*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i64* }

@Unknown = common dso_local global i8* null, align 8
@NUMBER_OF_DRIVE_MEDIA_COMBINATIONS = common dso_local global i64 0, align 8
@DriveMediaConstants = common dso_local global %struct.TYPE_19__* null, align 8
@NonPagedPoolNx = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@SCSI_REQUEST_BLOCK_SIZE = common dso_local global i32 0, align 4
@SCSIOP_READ = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MSDMF3.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DetermineMediaType(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %4, align 8
  %15 = call i32 (...) @PAGED_CODE()
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %5, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = call i32 @ClassReadDriveCapacity(%struct.TYPE_27__* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i8*, i8** @Unknown, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %204

28:                                               ; preds = %1
  %29 = load i64, i64* @NUMBER_OF_DRIVE_MEDIA_COMBINATIONS, align 8
  %30 = sub i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %108, %28
  %32 = load i64, i64* %6, align 8
  %33 = icmp uge i64 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %31
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %39, %45
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %46, %51
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %59, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %34
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %66
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** @DriveMediaConstants, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %111

107:                                              ; preds = %66, %34
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %6, align 8
  br label %31

111:                                              ; preds = %76, %31
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8*, i8** @Unknown, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %202

118:                                              ; preds = %111
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %8, align 8
  %125 = load i32, i32* @NonPagedPoolNx, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_23__* @ExAllocatePool(i32 %125, i32 %128)
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %10, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %131 = icmp eq %struct.TYPE_23__* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %133, i32* %2, align 4
  br label %204

134:                                              ; preds = %118
  %135 = load i32, i32* @NonPagedPoolNx, align 4
  %136 = load i32, i32* @SCSI_REQUEST_BLOCK_SIZE, align 4
  %137 = call %struct.TYPE_23__* @ExAllocatePool(i32 %135, i32 %136)
  store %struct.TYPE_23__* %137, %struct.TYPE_23__** %9, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %139 = icmp eq %struct.TYPE_23__* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %142 = call i32 @ExFreePool(%struct.TYPE_23__* %141)
  %143 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %143, i32* %2, align 4
  br label %204

144:                                              ; preds = %134
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @RtlZeroMemory(%struct.TYPE_23__* %145, i32 %148)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %151 = load i32, i32* @SCSI_REQUEST_BLOCK_SIZE, align 4
  %152 = call i32 @RtlZeroMemory(%struct.TYPE_23__* %150, i32 %151)
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  store i32 10, i32* %154, align 8
  %155 = load i64, i64* @SCSIOP_READ, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 %155, i64* %159, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 5
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 8
  store i64 1, i64* %167, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FALSE, align 4
  %180 = call i32 @ClassSendSrbSynchronous(%struct.TYPE_27__* %173, %struct.TYPE_23__* %174, %struct.TYPE_23__* %175, i32 %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @NT_SUCCESS(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %144
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %186 = bitcast %struct.TYPE_23__* %185 to i8*
  store i8* %186, i8** %11, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  store i8* %188, i8** %11, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @RtlCompareMemory(i8* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %191 = icmp eq i32 %190, 7
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i32, i32* @TRUE, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %184
  br label %197

197:                                              ; preds = %196, %144
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %199 = call i32 @ExFreePool(%struct.TYPE_23__* %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %201 = call i32 @ExFreePool(%struct.TYPE_23__* %200)
  br label %202

202:                                              ; preds = %197, %114
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %140, %132, %23
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32 @ClassReadDriveCapacity(%struct.TYPE_27__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local %struct.TYPE_23__* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_23__*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ClassSendSrbSynchronous(%struct.TYPE_27__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @RtlCompareMemory(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
