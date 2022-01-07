; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_UpdateIndexAllocation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_UpdateIndexAllocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_24__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"UpdateIndexAllocation() called.\0A\00", align 1
@AttributeIndexAllocation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 36, i32 73, i32 51, i32 48, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Adding index allocation...\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ERROR: Failed to add index allocation!\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ERROR: Couldn't find newly-created index allocation!\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"ERROR: Failed to add index bitmap!\0A\00", align 1
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"ERROR: Unable to allocate memory for new index entry!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"ERROR: Failed to update index node!\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UpdateIndexAllocation(i32 %0, %struct.TYPE_27__* %1, i64 %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %9, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %13, align 8
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %22 = load i32, i32* @AttributeIndexAllocation, align 4
  %23 = call i32 @FindAttribute(i32 %20, %struct.TYPE_25__* %21, i32 %22, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4, i32* %10, i64* %15)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @NT_SUCCESS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @PrintAllVCNs(i32 %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %4
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %37, align 8
  store %struct.TYPE_26__* %38, %struct.TYPE_26__** %11, align 8
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %204, %33
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %207

47:                                               ; preds = %39
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %49, align 8
  %51 = icmp ne %struct.TYPE_28__* %50, null
  br i1 %51, label %52, label %200

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %108, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %57 = ptrtoint %struct.TYPE_25__* %56 to i64
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = sub i64 %61, 16
  %63 = inttoptr i64 %62 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %16, align 8
  %64 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %68 = call i32 @AddIndexAllocation(i32 %65, %struct.TYPE_25__* %66, %struct.TYPE_23__* %67, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @NT_SUCCESS(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %55
  %73 = call i32 @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %221

75:                                               ; preds = %55
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %78 = load i32, i32* @AttributeIndexAllocation, align 4
  %79 = call i32 @FindAttribute(i32 %76, %struct.TYPE_25__* %77, i32 %78, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4, i32* %10, i64* %15)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @NT_SUCCESS(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = call i32 @DPRINT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %221

86:                                               ; preds = %75
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %88 = ptrtoint %struct.TYPE_23__* %87 to i64
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = inttoptr i64 %92 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %16, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %97 = call i32 @AddBitmap(i32 %94, %struct.TYPE_25__* %95, %struct.TYPE_23__* %96, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @NT_SUCCESS(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %86
  %102 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ReleaseAttributeContext(i32 %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %221

106:                                              ; preds = %86
  %107 = load i64, i64* @TRUE, align 8
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %106, %52
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %115 = call i32 @BooleanFlagOn(i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %172, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @NonPagedPool, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @TAG_NTFS, align 4
  %128 = call %struct.TYPE_24__* @ExAllocatePoolWithTag(i32 %118, i32 %126, i32 %127)
  store %struct.TYPE_24__* %128, %struct.TYPE_24__** %17, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %130 = icmp ne %struct.TYPE_24__* %129, null
  br i1 %130, label %140, label %131

131:                                              ; preds = %117
  %132 = call i32 @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @ReleaseAttributeContext(i32 %136)
  br label %138

138:                                              ; preds = %135, %131
  %139 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %139, i32* %5, align 4
  br label %221

140:                                              ; preds = %117
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @RtlCopyMemory(%struct.TYPE_24__* %141, %struct.TYPE_24__* %144, i32 %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %154, 4
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = load i32, i32* @TAG_NTFS, align 4
  %161 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %159, i32 %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  store %struct.TYPE_24__* %162, %struct.TYPE_24__** %164, align 8
  %165 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %140, %108
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %176, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i64, i64* %15, align 8
  %181 = call i32 @UpdateIndexNode(i32 %173, %struct.TYPE_25__* %174, %struct.TYPE_28__* %177, i64 %178, i32 %179, i64 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = call i64 @NT_SUCCESS(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %172
  %186 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @ReleaseAttributeContext(i32 %187)
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %5, align 4
  br label %221

190:                                              ; preds = %172
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @SetIndexEntryVCN(%struct.TYPE_24__* %193, i32 %198)
  br label %200

200:                                              ; preds = %190, %47
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %202, align 8
  store %struct.TYPE_26__* %203, %struct.TYPE_26__** %11, align 8
  br label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %14, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %14, align 8
  br label %39

207:                                              ; preds = %39
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %209 = call i32 @DumpBTree(%struct.TYPE_27__* %208)
  %210 = load i64, i64* %13, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i64, i64* %8, align 8
  %216 = call i32 @PrintAllVCNs(i32 %213, i32 %214, i64 %215)
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @ReleaseAttributeContext(i32 %217)
  br label %219

219:                                              ; preds = %212, %207
  %220 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %219, %185, %138, %101, %83, %72
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @FindAttribute(i32, %struct.TYPE_25__*, i32, i8*, i32, i32*, i64*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @PrintAllVCNs(i32, i32, i64) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @AddIndexAllocation(i32, %struct.TYPE_25__*, %struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @AddBitmap(i32, %struct.TYPE_25__*, %struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @ReleaseAttributeContext(i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local %struct.TYPE_24__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @UpdateIndexNode(i32, %struct.TYPE_25__*, %struct.TYPE_28__*, i64, i32, i64) #1

declare dso_local i32 @SetIndexEntryVCN(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @DumpBTree(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
