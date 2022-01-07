; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_IncreaseMftSize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_IncreaseMftSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, i32, i32, %struct.TYPE_38__*, %struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_34__ }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_40__ = type { i32, i64 }

@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IncreaseMftSize(%p, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@STATUS_CANT_WAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Error: Unable to create empty file record!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@AttributeBitmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"ERROR: Couldn't find $BITMAP attribute of Mft!\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"ERROR: Unable to allocate memory for bitmap attribute!\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ERROR: Bytes read != Bitmap size!\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"ERROR: Failed to set size of $MFT data attribute!\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"ERROR: Failed to set size of bitmap attribute!\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"ERROR: Failed to update $MFT file record!\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"ERROR: Couldn't write to bitmap attribute of $MFT!\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"ERROR: Failed to write blank file record!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IncreaseMftSize(%struct.TYPE_39__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_40__, align 8
  %8 = alloca %struct.TYPE_40__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_38__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %4, align 8
  store i64 %1, i64* %5, align 8
  %22 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %23 = mul nsw i32 %22, 8
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = mul nsw i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_39__* %31, i8* %35)
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @ExAcquireResourceExclusiveLite(i32* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @STATUS_CANT_WAIT, align 4
  store i32 %43, i32* %3, align 4
  br label %402

44:                                               ; preds = %2
  %45 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %46 = call %struct.TYPE_38__* @NtfsCreateEmptyFileRecord(%struct.TYPE_39__* %45)
  store %struct.TYPE_38__* %46, %struct.TYPE_38__** %19, align 8
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %48 = icmp ne %struct.TYPE_38__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %51, i32* %3, align 4
  br label %402

52:                                               ; preds = %44
  %53 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %57, align 8
  %59 = load i32, i32* @AttributeBitmap, align 4
  %60 = call i32 @FindAttribute(%struct.TYPE_39__* %55, %struct.TYPE_38__* %58, i32 %59, i8* bitcast ([1 x i32]* @.str.4 to i8*), i32 0, %struct.TYPE_37__** %6, i64* null)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @NT_SUCCESS(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %52
  %65 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %69 = call i32 @ExFreeToNPagedLookasideList(i32* %67, %struct.TYPE_38__* %68)
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %70, i32 0, i32 1
  %72 = call i32 @ExReleaseResourceLite(i32* %71)
  %73 = load i32, i32* %21, align 4
  store i32 %73, i32* %3, align 4
  br label %402

74:                                               ; preds = %52
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %76, align 8
  %78 = call i64 @AttributeDataLength(%struct.TYPE_36__* %77)
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_37__*, %struct.TYPE_37__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %84, align 8
  %86 = call i64 @AttributeDataLength(%struct.TYPE_36__* %85)
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %8, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %94, align 8
  %96 = call i64 @AttributeDataLength(%struct.TYPE_36__* %95)
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sdiv i64 %96, %100
  store i64 %101, i64* %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sdiv i64 %104, %108
  %110 = sdiv i64 %109, 8
  store i64 %110, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sdiv i64 %113, %117
  %119 = srem i64 %118, 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %74
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %124

124:                                              ; preds = %121, %74
  %125 = load i64, i64* %14, align 8
  %126 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %127 = call i64 @ALIGN_UP_BY(i64 %125, i32 %126)
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = sub nsw i64 %128, %131
  store i64 %132, i64* %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %135, %136
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call i64 @max(i64 %137, i64 %140)
  store i64 %141, i64* %15, align 8
  %142 = load i32, i32* @NonPagedPool, align 4
  %143 = load i64, i64* %15, align 8
  %144 = load i32, i32* @TAG_NTFS, align 4
  %145 = call i64 @ExAllocatePoolWithTag(i32 %142, i64 %143, i32 %144)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %13, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %124
  %149 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %150 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %153 = call i32 @ExFreeToNPagedLookasideList(i32* %151, %struct.TYPE_38__* %152)
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i32 0, i32 1
  %156 = call i32 @ExReleaseResourceLite(i32* %155)
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %158 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %157)
  %159 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %159, i32* %3, align 4
  br label %402

160:                                              ; preds = %124
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %15, align 8
  %163 = call i32 @RtlZeroMemory(i64 %161, i64 %162)
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %166 = load i64, i64* %13, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ReadAttribute(%struct.TYPE_39__* %164, %struct.TYPE_37__* %165, i32 0, i32 %167, i64 %169)
  store i64 %170, i64* %17, align 8
  %171 = load i64, i64* %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %171, %173
  br i1 %174, label %175, label %190

175:                                              ; preds = %160
  %176 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %180 = call i32 @ExFreeToNPagedLookasideList(i32* %178, %struct.TYPE_38__* %179)
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %181, i32 0, i32 1
  %183 = call i32 @ExReleaseResourceLite(i32* %182)
  %184 = load i64, i64* %13, align 8
  %185 = load i32, i32* @TAG_NTFS, align 4
  %186 = call i32 @ExFreePoolWithTag(i64 %184, i32 %185)
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %188 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %187)
  %189 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %189, i32* %3, align 4
  br label %402

190:                                              ; preds = %160
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %193, align 8
  %195 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_38__*, %struct.TYPE_38__** %199, align 8
  %201 = call i32 @SetNonResidentAttributeDataLength(%struct.TYPE_39__* %191, %struct.TYPE_37__* %194, i64 %197, %struct.TYPE_38__* %200, %struct.TYPE_40__* %8)
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @NT_SUCCESS(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %190
  %206 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %210 = call i32 @ExFreeToNPagedLookasideList(i32* %208, %struct.TYPE_38__* %209)
  %211 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %211, i32 0, i32 1
  %213 = call i32 @ExReleaseResourceLite(i32* %212)
  %214 = load i64, i64* %13, align 8
  %215 = load i32, i32* @TAG_NTFS, align 4
  %216 = call i32 @ExFreePoolWithTag(i64 %214, i32 %215)
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %218 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %217)
  %219 = load i32, i32* %21, align 4
  store i32 %219, i32* %3, align 4
  br label %402

220:                                              ; preds = %190
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %222 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %221)
  %223 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %225, align 8
  %227 = load i32, i32* @AttributeBitmap, align 4
  %228 = call i32 @FindAttribute(%struct.TYPE_39__* %223, %struct.TYPE_38__* %226, i32 %227, i8* bitcast ([1 x i32]* @.str.4 to i8*), i32 0, %struct.TYPE_37__** %6, i64* %12)
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %21, align 4
  %230 = call i32 @NT_SUCCESS(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %220
  %233 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %237 = call i32 @ExFreeToNPagedLookasideList(i32* %235, %struct.TYPE_38__* %236)
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 1
  %240 = call i32 @ExReleaseResourceLite(i32* %239)
  %241 = load i32, i32* %21, align 4
  store i32 %241, i32* %3, align 4
  br label %402

242:                                              ; preds = %220
  %243 = load i64, i64* %9, align 8
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %291

245:                                              ; preds = %242
  %246 = load i64, i64* %15, align 8
  %247 = trunc i64 %246 to i32
  %248 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %7, i32 0, i32 0
  store i32 %247, i32* %248, align 8
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %245
  %256 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %258 = load i64, i64* %12, align 8
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %260, align 8
  %262 = call i32 @SetNonResidentAttributeDataLength(%struct.TYPE_39__* %256, %struct.TYPE_37__* %257, i64 %258, %struct.TYPE_38__* %261, %struct.TYPE_40__* %7)
  store i32 %262, i32* %21, align 4
  br label %271

263:                                              ; preds = %245
  %264 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %265 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %266 = load i64, i64* %12, align 8
  %267 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %268, align 8
  %270 = call i32 @SetResidentAttributeDataLength(%struct.TYPE_39__* %264, %struct.TYPE_37__* %265, i64 %266, %struct.TYPE_38__* %269, %struct.TYPE_40__* %7)
  store i32 %270, i32* %21, align 4
  br label %271

271:                                              ; preds = %263, %255
  %272 = load i32, i32* %21, align 4
  %273 = call i32 @NT_SUCCESS(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %290, label %275

275:                                              ; preds = %271
  %276 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %277 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %280 = call i32 @ExFreeToNPagedLookasideList(i32* %278, %struct.TYPE_38__* %279)
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 1
  %283 = call i32 @ExReleaseResourceLite(i32* %282)
  %284 = load i64, i64* %13, align 8
  %285 = load i32, i32* @TAG_NTFS, align 4
  %286 = call i32 @ExFreePoolWithTag(i64 %284, i32 %285)
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %288 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %287)
  %289 = load i32, i32* %21, align 4
  store i32 %289, i32* %3, align 4
  br label %402

290:                                              ; preds = %271
  br label %291

291:                                              ; preds = %290, %242
  %292 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %293 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %294, align 8
  %296 = call i32 @NtfsDumpFileAttributes(%struct.TYPE_39__* %292, %struct.TYPE_38__* %295)
  %297 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %298, i32 0, i32 4
  %300 = load %struct.TYPE_35__*, %struct.TYPE_35__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_38__*, %struct.TYPE_38__** %304, align 8
  %306 = call i32 @UpdateFileRecord(%struct.TYPE_39__* %297, i64 %302, %struct.TYPE_38__* %305)
  store i32 %306, i32* %21, align 4
  %307 = load i32, i32* %21, align 4
  %308 = call i32 @NT_SUCCESS(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %325, label %310

310:                                              ; preds = %291
  %311 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %315 = call i32 @ExFreeToNPagedLookasideList(i32* %313, %struct.TYPE_38__* %314)
  %316 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %316, i32 0, i32 1
  %318 = call i32 @ExReleaseResourceLite(i32* %317)
  %319 = load i64, i64* %13, align 8
  %320 = load i32, i32* @TAG_NTFS, align 4
  %321 = call i32 @ExFreePoolWithTag(i64 %319, i32 %320)
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %323 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %322)
  %324 = load i32, i32* %21, align 4
  store i32 %324, i32* %3, align 4
  br label %402

325:                                              ; preds = %291
  %326 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %327 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %328 = load i64, i64* %13, align 8
  %329 = load i64, i64* %15, align 8
  %330 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_38__*, %struct.TYPE_38__** %331, align 8
  %333 = call i32 @WriteAttribute(%struct.TYPE_39__* %326, %struct.TYPE_37__* %327, i32 0, i64 %328, i64 %329, i64* %18, %struct.TYPE_38__* %332)
  store i32 %333, i32* %21, align 4
  %334 = load i32, i32* %21, align 4
  %335 = call i32 @NT_SUCCESS(i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %352, label %337

337:                                              ; preds = %325
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 2
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %341 = call i32 @ExFreeToNPagedLookasideList(i32* %339, %struct.TYPE_38__* %340)
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %342, i32 0, i32 1
  %344 = call i32 @ExReleaseResourceLite(i32* %343)
  %345 = load i64, i64* %13, align 8
  %346 = load i32, i32* @TAG_NTFS, align 4
  %347 = call i32 @ExFreePoolWithTag(i64 %345, i32 %346)
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %349 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %348)
  %350 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %351 = load i32, i32* %21, align 4
  store i32 %351, i32* %3, align 4
  br label %402

352:                                              ; preds = %325
  store i64 0, i64* %20, align 8
  br label %353

353:                                              ; preds = %383, %352
  %354 = load i64, i64* %20, align 8
  %355 = load i64, i64* %10, align 8
  %356 = icmp slt i64 %354, %355
  br i1 %356, label %357, label %386

357:                                              ; preds = %353
  %358 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %359 = load i64, i64* %16, align 8
  %360 = load i64, i64* %20, align 8
  %361 = add nsw i64 %359, %360
  %362 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %363 = call i32 @UpdateFileRecord(%struct.TYPE_39__* %358, i64 %361, %struct.TYPE_38__* %362)
  store i32 %363, i32* %21, align 4
  %364 = load i32, i32* %21, align 4
  %365 = call i32 @NT_SUCCESS(i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %382, label %367

367:                                              ; preds = %357
  %368 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %369 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %372 = call i32 @ExFreeToNPagedLookasideList(i32* %370, %struct.TYPE_38__* %371)
  %373 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %373, i32 0, i32 1
  %375 = call i32 @ExReleaseResourceLite(i32* %374)
  %376 = load i64, i64* %13, align 8
  %377 = load i32, i32* @TAG_NTFS, align 4
  %378 = call i32 @ExFreePoolWithTag(i64 %376, i32 %377)
  %379 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %380 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %379)
  %381 = load i32, i32* %21, align 4
  store i32 %381, i32* %3, align 4
  br label %402

382:                                              ; preds = %357
  br label %383

383:                                              ; preds = %382
  %384 = load i64, i64* %20, align 8
  %385 = add nsw i64 %384, 1
  store i64 %385, i64* %20, align 8
  br label %353

386:                                              ; preds = %353
  %387 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %388 = call i32 @UpdateMftMirror(%struct.TYPE_39__* %387)
  store i32 %388, i32* %21, align 4
  %389 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %392 = call i32 @ExFreeToNPagedLookasideList(i32* %390, %struct.TYPE_38__* %391)
  %393 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %393, i32 0, i32 1
  %395 = call i32 @ExReleaseResourceLite(i32* %394)
  %396 = load i64, i64* %13, align 8
  %397 = load i32, i32* @TAG_NTFS, align 4
  %398 = call i32 @ExFreePoolWithTag(i64 %396, i32 %397)
  %399 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %400 = call i32 @ReleaseAttributeContext(%struct.TYPE_37__* %399)
  %401 = load i32, i32* %21, align 4
  store i32 %401, i32* %3, align 4
  br label %402

402:                                              ; preds = %386, %367, %337, %310, %275, %232, %205, %175, %148, %64, %49, %42
  %403 = load i32, i32* %3, align 4
  ret i32 %403
}

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i64) #1

declare dso_local %struct.TYPE_38__* @NtfsCreateEmptyFileRecord(%struct.TYPE_39__*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i8*, i32, %struct.TYPE_37__**, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_38__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i64 @AttributeDataLength(%struct.TYPE_36__*) #1

declare dso_local i64 @ALIGN_UP_BY(i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_37__*) #1

declare dso_local i32 @RtlZeroMemory(i64, i64) #1

declare dso_local i64 @ReadAttribute(%struct.TYPE_39__*, %struct.TYPE_37__*, i32, i32, i64) #1

declare dso_local i32 @ExFreePoolWithTag(i64, i32) #1

declare dso_local i32 @SetNonResidentAttributeDataLength(%struct.TYPE_39__*, %struct.TYPE_37__*, i64, %struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @SetResidentAttributeDataLength(%struct.TYPE_39__*, %struct.TYPE_37__*, i64, %struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @NtfsDumpFileAttributes(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32 @UpdateFileRecord(%struct.TYPE_39__*, i64, %struct.TYPE_38__*) #1

declare dso_local i32 @WriteAttribute(%struct.TYPE_39__*, %struct.TYPE_37__*, i32, i64, i64, i64*, %struct.TYPE_38__*) #1

declare dso_local i32 @UpdateMftMirror(%struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
