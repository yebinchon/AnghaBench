; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_dir.c_DoQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_dir.c_DoQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { %struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_33__*, i32, %struct.TYPE_41__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_39__, i32*, i32* }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_43__, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64, i32, i64, i64 }
%struct.TYPE_41__ = type { i64, i64 }
%struct.TYPE_32__ = type { i64, i32* }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_47__ = type { i64, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32*, i64, i32 }
%struct.TYPE_44__ = type { i64, %struct.TYPE_40__, %struct.TYPE_37__, %struct.TYPE_36__* }
%struct.TYPE_40__ = type { i32, i32* }
%struct.TYPE_37__ = type { i32, i32* }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LONGNAME_MAX_LENGTH = common dso_local global i32 0, align 4
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@IoWriteAccess = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_SEARCH = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@SL_INDEX_SPECIFIED = common dso_local global i32 0, align 4
@SL_RESTART_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Buffer=%p tofind=%wZ\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Found %wZ, Status=%x, entry %x\0A\00", align 1
@STATUS_INVALID_INFO_CLASS = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@STATUS_NO_SUCH_FILE = common dso_local global i32 0, align 4
@STATUS_NO_MORE_FILES = common dso_local global i32 0, align 4
@SL_RETURN_SINGLE_ENTRY = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_45__*)* @DoQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoQuery(%struct.TYPE_45__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_45__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_46__*, align 8
  %11 = alloca %struct.TYPE_47__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_44__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [13 x i32], align 16
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %3, align 8
  %21 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %6, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %9, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* @LONGNAME_MAX_LENGTH, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %30, align 8
  store %struct.TYPE_33__* %31, %struct.TYPE_33__** %19, align 8
  %32 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_47__*
  store %struct.TYPE_47__* %37, %struct.TYPE_47__** %11, align 8
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %43, %struct.TYPE_46__** %10, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  %49 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %50, align 8
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i32* @VfatGetUserBuffer(%struct.TYPE_35__* %51, i64 %52)
  store i32* %53, i32** %8, align 8
  %54 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %62 = call i64 @BooleanFlagOn(i32 %60, i32 %61)
  %63 = call i32 @ExAcquireResourceExclusiveLite(i32* %57, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %1
  %66 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @IoWriteAccess, align 4
  %71 = call i32 @VfatLockUserBuffer(%struct.TYPE_35__* %68, i64 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @NT_SUCCESS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %65
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %485

79:                                               ; preds = %1
  %80 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %86 = call i64 @BooleanFlagOn(i32 %84, i32 %85)
  %87 = call i32 @ExAcquireResourceSharedLite(i32* %81, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %79
  %90 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 0
  %94 = call i32 @ExReleaseResourceLite(i32* %93)
  %95 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_35__*, %struct.TYPE_35__** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i32, i32* @IoWriteAccess, align 4
  %100 = call i32 @VfatLockUserBuffer(%struct.TYPE_35__* %97, i64 %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @NT_SUCCESS(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %89
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %485

108:                                              ; preds = %79
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %114, %struct.TYPE_32__** %6, align 8
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %7, align 4
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %121 = icmp ne %struct.TYPE_32__* %120, null
  br i1 %121, label %122, label %191

122:                                              ; preds = %108
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %191

127:                                              ; preds = %122
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %191

132:                                              ; preds = %127
  %133 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %190, label %138

138:                                              ; preds = %132
  %139 = load i64, i64* @TRUE, align 8
  store i64 %139, i64* %12, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 4
  %144 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load i32, i32* @NonPagedPool, align 4
  %148 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* @TAG_SEARCH, align 4
  %154 = call i8* @ExAllocatePoolWithTag(i32 %147, i32 %152, i32 %153)
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %157, i32 0, i32 0
  store i32* %155, i32** %158, align 8
  %159 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %138
  %165 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %165, i32 0, i32 0
  %167 = call i32 @ExReleaseResourceLite(i32* %166)
  %168 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 0
  %172 = call i32 @ExReleaseResourceLite(i32* %171)
  %173 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %173, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %485

174:                                              ; preds = %138
  %175 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %178 = call i32 @RtlCopyUnicodeString(%struct.TYPE_38__* %176, %struct.TYPE_32__* %177)
  %179 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = udiv i64 %187, 4
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  store i32 0, i32* %189, align 4
  br label %190

190:                                              ; preds = %174, %132
  br label %239

191:                                              ; preds = %127, %122, %108
  %192 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %238, label %197

197:                                              ; preds = %191
  %198 = load i64, i64* @TRUE, align 8
  store i64 %198, i64* %12, align 8
  %199 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %200, i32 0, i32 1
  store i64 8, i64* %201, align 8
  %202 = load i32, i32* @NonPagedPool, align 4
  %203 = load i32, i32* @TAG_SEARCH, align 4
  %204 = call i8* @ExAllocatePoolWithTag(i32 %202, i32 8, i32 %203)
  %205 = bitcast i8* %204 to i32*
  %206 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 0
  store i32* %205, i32** %208, align 8
  %209 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %224, label %214

214:                                              ; preds = %197
  %215 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %215, i32 0, i32 0
  %217 = call i32 @ExReleaseResourceLite(i32* %216)
  %218 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 0
  %222 = call i32 @ExReleaseResourceLite(i32* %221)
  %223 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %223, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %485

224:                                              ; preds = %197
  %225 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 42, i32* %229, align 4
  %230 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 0, i32* %234, align 4
  %235 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %236, i32 0, i32 2
  store i32 4, i32* %237, align 8
  br label %238

238:                                              ; preds = %224, %191
  br label %239

239:                                              ; preds = %238, %190
  %240 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @SL_INDEX_SPECIFIED, align 4
  %246 = call i64 @BooleanFlagOn(i32 %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %239
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 0
  store i64 %253, i64* %256, align 8
  br label %279

257:                                              ; preds = %239
  %258 = load i64, i64* %12, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %269, label %260

260:                                              ; preds = %257
  %261 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @SL_RESTART_SCAN, align 4
  %267 = call i64 @BooleanFlagOn(i32 %265, i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %260, %257
  %270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %270, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 0
  store i64 0, i64* %272, align 8
  br label %278

273:                                              ; preds = %260
  %274 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 0
  store i64 %276, i64* %277, align 8
  br label %278

278:                                              ; preds = %273, %269
  br label %279

279:                                              ; preds = %278, %248
  %280 = load i32*, i32** %8, align 8
  %281 = bitcast i32* %280 to %struct.TYPE_40__*
  %282 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %282, i32 0, i32 1
  %284 = call i32 (i8*, %struct.TYPE_40__*, %struct.TYPE_38__*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_40__* %281, %struct.TYPE_38__* %283)
  %285 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_36__*, %struct.TYPE_36__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 3
  store %struct.TYPE_36__* %287, %struct.TYPE_36__** %288, align 8
  %289 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %289, i32 0, i32 1
  store i32* %28, i32** %290, align 8
  %291 = mul nuw i64 4, %26
  %292 = trunc i64 %291 to i32
  %293 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = getelementptr inbounds [13 x i32], [13 x i32]* %17, i64 0, i64 0
  %296 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 1
  store i32* %295, i32** %297, align 8
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %298, i32 0, i32 0
  store i32 52, i32* %299, align 8
  store i64 0, i64* %18, align 8
  br label %300

300:                                              ; preds = %424, %279
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* @STATUS_SUCCESS, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load i64, i64* %5, align 8
  %306 = icmp sgt i64 %305, 0
  br label %307

307:                                              ; preds = %304, %300
  %308 = phi i1 [ false, %300 ], [ %306, %304 ]
  br i1 %308, label %309, label %430

309:                                              ; preds = %307
  %310 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_36__*, %struct.TYPE_36__** %311, align 8
  %313 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %314 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %314, i32 0, i32 1
  %316 = load i64, i64* %13, align 8
  %317 = call i32 @FindFile(%struct.TYPE_36__* %312, %struct.TYPE_46__* %313, %struct.TYPE_38__* %315, %struct.TYPE_44__* %14, i64 %316)
  store i32 %317, i32* %4, align 4
  %318 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  %322 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 1
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to %struct.TYPE_38__*
  %326 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32 (i8*, %struct.TYPE_40__*, %struct.TYPE_38__*, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_40__* %322, %struct.TYPE_38__* %325, i64 %328)
  %330 = load i64, i64* @FALSE, align 8
  store i64 %330, i64* %13, align 8
  %331 = load i32, i32* %4, align 4
  %332 = call i64 @NT_SUCCESS(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %389

334:                                              ; preds = %309
  %335 = load i32, i32* %7, align 4
  switch i32 %335, label %377 [
    i32 130, label %336
    i32 129, label %347
    i32 131, label %358
    i32 128, label %369
  ]

336:                                              ; preds = %334
  %337 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %338, align 8
  %340 = load i32*, i32** %8, align 8
  %341 = ptrtoint i32* %340 to i32
  %342 = load i64, i64* %5, align 8
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %344 = icmp eq %struct.TYPE_34__* %343, null
  %345 = zext i1 %344 to i32
  %346 = call i32 @VfatGetFileDirectoryInformation(%struct.TYPE_44__* %14, %struct.TYPE_36__* %339, i32 %341, i64 %342, i64* %18, i32 %345)
  store i32 %346, i32* %4, align 4
  br label %379

347:                                              ; preds = %334
  %348 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %349, align 8
  %351 = load i32*, i32** %8, align 8
  %352 = ptrtoint i32* %351 to i32
  %353 = load i64, i64* %5, align 8
  %354 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %355 = icmp eq %struct.TYPE_34__* %354, null
  %356 = zext i1 %355 to i32
  %357 = call i32 @VfatGetFileFullDirectoryInformation(%struct.TYPE_44__* %14, %struct.TYPE_36__* %350, i32 %352, i64 %353, i64* %18, i32 %356)
  store i32 %357, i32* %4, align 4
  br label %379

358:                                              ; preds = %334
  %359 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_36__*, %struct.TYPE_36__** %360, align 8
  %362 = load i32*, i32** %8, align 8
  %363 = ptrtoint i32* %362 to i32
  %364 = load i64, i64* %5, align 8
  %365 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %366 = icmp eq %struct.TYPE_34__* %365, null
  %367 = zext i1 %366 to i32
  %368 = call i32 @VfatGetFileBothInformation(%struct.TYPE_44__* %14, %struct.TYPE_36__* %361, i32 %363, i64 %364, i64* %18, i32 %367)
  store i32 %368, i32* %4, align 4
  br label %379

369:                                              ; preds = %334
  %370 = load i32*, i32** %8, align 8
  %371 = bitcast i32* %370 to %struct.TYPE_34__*
  %372 = load i64, i64* %5, align 8
  %373 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %374 = icmp eq %struct.TYPE_34__* %373, null
  %375 = zext i1 %374 to i32
  %376 = call i32 @VfatGetFileNamesInformation(%struct.TYPE_44__* %14, %struct.TYPE_34__* %371, i64 %372, i64* %18, i32 %375)
  store i32 %376, i32* %4, align 4
  br label %379

377:                                              ; preds = %334
  %378 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  store i32 %378, i32* %4, align 4
  br label %379

379:                                              ; preds = %377, %369, %358, %347, %336
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %4, align 4
  %385 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %383, %379
  br label %430

388:                                              ; preds = %383
  br label %398

389:                                              ; preds = %309
  %390 = load i64, i64* %12, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = load i32, i32* @STATUS_NO_SUCH_FILE, align 4
  br label %396

394:                                              ; preds = %389
  %395 = load i32, i32* @STATUS_NO_MORE_FILES, align 4
  br label %396

396:                                              ; preds = %394, %392
  %397 = phi i32 [ %393, %392 ], [ %395, %394 ]
  store i32 %397, i32* %4, align 4
  br label %430

398:                                              ; preds = %388
  %399 = load i32*, i32** %8, align 8
  %400 = bitcast i32* %399 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %400, %struct.TYPE_34__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %403, i32 0, i32 1
  store i64 %402, i64* %404, align 8
  %405 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %14, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = add nsw i64 %406, 1
  store i64 %407, i64* %405, align 8
  %408 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %409 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %408, i32 0, i32 0
  store i64 %407, i64* %409, align 8
  %410 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* %5, align 8
  %414 = sub nsw i64 %413, %412
  store i64 %414, i64* %5, align 8
  %415 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %415, i32 0, i32 2
  %417 = load %struct.TYPE_33__*, %struct.TYPE_33__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @SL_RETURN_SINGLE_ENTRY, align 4
  %421 = call i64 @BooleanFlagOn(i32 %419, i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %398
  br label %430

424:                                              ; preds = %398
  %425 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i32*, i32** %8, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 %427
  store i32* %429, i32** %8, align 8
  br label %300

430:                                              ; preds = %423, %396, %387, %307
  %431 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %432 = icmp ne %struct.TYPE_34__* %431, null
  br i1 %432, label %433, label %449

433:                                              ; preds = %430
  %434 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %435 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %434, i32 0, i32 0
  store i64 0, i64* %435, align 8
  %436 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %436, i32* %4, align 4
  %437 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %438 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* %5, align 8
  %443 = sub nsw i64 %441, %442
  %444 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_35__*, %struct.TYPE_35__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %447, i32 0, i32 0
  store i64 %443, i64* %448, align 8
  br label %475

449:                                              ; preds = %430
  %450 = load i32, i32* %4, align 4
  %451 = load i32, i32* @STATUS_SUCCESS, align 4
  %452 = icmp ne i32 %450, %451
  br i1 %452, label %456, label %453

453:                                              ; preds = %449
  %454 = load i64, i64* %5, align 8
  %455 = icmp eq i64 %454, 0
  br label %456

456:                                              ; preds = %453, %449
  %457 = phi i1 [ true, %449 ], [ %455, %453 ]
  %458 = zext i1 %457 to i32
  %459 = call i32 @ASSERT(i32 %458)
  %460 = load i64, i64* %18, align 8
  %461 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = icmp sle i64 %460, %465
  %467 = zext i1 %466 to i32
  %468 = call i32 @ASSERT(i32 %467)
  %469 = load i64, i64* %18, align 8
  %470 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_35__*, %struct.TYPE_35__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %473, i32 0, i32 0
  store i64 %469, i64* %474, align 8
  br label %475

475:                                              ; preds = %456, %433
  %476 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %476, i32 0, i32 0
  %478 = call i32 @ExReleaseResourceLite(i32* %477)
  %479 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %479, i32 0, i32 0
  %481 = load %struct.TYPE_36__*, %struct.TYPE_36__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %481, i32 0, i32 0
  %483 = call i32 @ExReleaseResourceLite(i32* %482)
  %484 = load i32, i32* %4, align 4
  store i32 %484, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %485

485:                                              ; preds = %475, %214, %164, %106, %77
  %486 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %486)
  %487 = load i32, i32* %2, align 4
  ret i32 %487
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @VfatGetUserBuffer(%struct.TYPE_35__*, i64) #2

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i64) #2

declare dso_local i64 @BooleanFlagOn(i32, i32) #2

declare dso_local i32 @VfatLockUserBuffer(%struct.TYPE_35__*, i64, i32) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i64) #2

declare dso_local i32 @ExReleaseResourceLite(i32*) #2

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #2

declare dso_local i32 @RtlCopyUnicodeString(%struct.TYPE_38__*, %struct.TYPE_32__*) #2

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_40__*, %struct.TYPE_38__*, ...) #2

declare dso_local i32 @FindFile(%struct.TYPE_36__*, %struct.TYPE_46__*, %struct.TYPE_38__*, %struct.TYPE_44__*, i64) #2

declare dso_local i32 @VfatGetFileDirectoryInformation(%struct.TYPE_44__*, %struct.TYPE_36__*, i32, i64, i64*, i32) #2

declare dso_local i32 @VfatGetFileFullDirectoryInformation(%struct.TYPE_44__*, %struct.TYPE_36__*, i32, i64, i64*, i32) #2

declare dso_local i32 @VfatGetFileBothInformation(%struct.TYPE_44__*, %struct.TYPE_36__*, i32, i64, i64*, i32) #2

declare dso_local i32 @VfatGetFileNamesInformation(%struct.TYPE_44__*, %struct.TYPE_34__*, i64, i64*, i32) #2

declare dso_local i32 @ASSERT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
