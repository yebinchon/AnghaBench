; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_update_extent_level.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_update_extent_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_31__ = type { i64, i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_32__ = type { i32 }

@BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA = common dso_local global i32 0, align 4
@TYPE_METADATA_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error - find_item returned %08x\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"(%I64x,%x,%I64x) was %u bytes, expected at least %u\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"could not find EXTENT_ITEM for address %I64x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_30__*, i8*, %struct.TYPE_28__*, i32, i32)* @update_extent_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @update_extent_level(%struct.TYPE_30__* %0, i8* %1, %struct.TYPE_28__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_31__, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %132

24:                                               ; preds = %5
  %25 = load i8*, i8** %8, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @find_item(%struct.TYPE_30__* %35, i32 %38, %struct.TYPE_29__* %13, %struct.TYPE_31__* %12, i32 0, i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @NT_SUCCESS(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %24
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %14, align 8
  store i8* %47, i8** %6, align 8
  br label %280

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 1
  %52 = call i32 @keycmp(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %51, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %12)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %131, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = load i32, i32* @PagedPool, align 4
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ALLOC_TAG, align 4
  %67 = call %struct.TYPE_32__* @ExAllocatePoolWithTag(i32 %61, i32 %65, i32 %66)
  store %struct.TYPE_32__* %67, %struct.TYPE_32__** %15, align 8
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %69 = icmp ne %struct.TYPE_32__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i8*, i8** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i8* %72, i8** %6, align 8
  br label %280

73:                                               ; preds = %60
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @RtlCopyMemory(%struct.TYPE_32__* %74, i32 %78, i32 %82)
  br label %85

84:                                               ; preds = %54
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %15, align 8
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %87 = call i8* @delete_tree_item(%struct.TYPE_30__* %86, %struct.TYPE_29__* %13)
  store i8* %87, i8** %14, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @NT_SUCCESS(i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %95 = icmp ne %struct.TYPE_32__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %98 = call i32 @ExFreePool(%struct.TYPE_32__* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %14, align 8
  store i8* %100, i8** %6, align 8
  br label %280

101:                                              ; preds = %85
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i8* @insert_tree_item(%struct.TYPE_30__* %102, i32 %105, i8* %106, i64 %107, i32 %108, %struct.TYPE_32__* %109, i32 %113, i32* null, i32 %114)
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @NT_SUCCESS(i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %101
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %123 = icmp ne %struct.TYPE_32__* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %126 = call i32 @ExFreePool(%struct.TYPE_32__* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i8*, i8** %14, align 8
  store i8* %128, i8** %6, align 8
  br label %280

129:                                              ; preds = %101
  %130 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %130, i8** %6, align 8
  br label %280

131:                                              ; preds = %48
  br label %132

132:                                              ; preds = %131, %5
  %133 = load i8*, i8** %8, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  store i64 %136, i64* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 2
  store i32 -1, i32* %138, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i8* @find_item(%struct.TYPE_30__* %139, i32 %142, %struct.TYPE_29__* %13, %struct.TYPE_31__* %12, i32 0, i32 %143)
  store i8* %144, i8** %14, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @NT_SUCCESS(i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %132
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** %14, align 8
  store i8* %151, i8** %6, align 8
  br label %280

152:                                              ; preds = %132
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %276

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %166, %168
  br i1 %169, label %170, label %276

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = icmp ult i64 %175, 4
  br i1 %176, label %177, label %199

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %182, i64 %187, i32 %192, i32 %196, i64 4)
  %198 = load i8*, i8** @STATUS_INTERNAL_ERROR, align 8
  store i8* %198, i8** %6, align 8
  br label %280

199:                                              ; preds = %170
  %200 = load i32, i32* @PagedPool, align 4
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ALLOC_TAG, align 4
  %206 = call %struct.TYPE_32__* @ExAllocatePoolWithTag(i32 %200, i32 %204, i32 %205)
  store %struct.TYPE_32__* %206, %struct.TYPE_32__** %16, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %208 = icmp ne %struct.TYPE_32__* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %199
  %210 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %211 = load i8*, i8** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i8* %211, i8** %6, align 8
  br label %280

212:                                              ; preds = %199
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @RtlCopyMemory(%struct.TYPE_32__* %213, i32 %217, i32 %221)
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %224 = call i8* @delete_tree_item(%struct.TYPE_30__* %223, %struct.TYPE_29__* %13)
  store i8* %224, i8** %14, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = call i32 @NT_SUCCESS(i8* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %212
  %229 = load i8*, i8** %14, align 8
  %230 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %229)
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %232 = call i32 @ExFreePool(%struct.TYPE_32__* %231)
  %233 = load i8*, i8** %14, align 8
  store i8* %233, i8** %6, align 8
  br label %280

234:                                              ; preds = %212
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to i8*
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i8* @insert_tree_item(%struct.TYPE_30__* %238, i32 %241, i8* %247, i64 %252, i32 %257, %struct.TYPE_32__* %258, i32 %262, i32* null, i32 %263)
  store i8* %264, i8** %14, align 8
  %265 = load i8*, i8** %14, align 8
  %266 = call i32 @NT_SUCCESS(i8* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %234
  %269 = load i8*, i8** %14, align 8
  %270 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %269)
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %272 = call i32 @ExFreePool(%struct.TYPE_32__* %271)
  %273 = load i8*, i8** %14, align 8
  store i8* %273, i8** %6, align 8
  br label %280

274:                                              ; preds = %234
  %275 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %275, i8** %6, align 8
  br label %280

276:                                              ; preds = %161, %152
  %277 = load i8*, i8** %8, align 8
  %278 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %277)
  %279 = load i8*, i8** @STATUS_INTERNAL_ERROR, align 8
  store i8* %279, i8** %6, align 8
  br label %280

280:                                              ; preds = %276, %274, %268, %228, %209, %177, %148, %129, %127, %99, %70, %44
  %281 = load i8*, i8** %6, align 8
  ret i8* %281
}

declare dso_local i8* @find_item(%struct.TYPE_30__*, i32, %struct.TYPE_29__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @keycmp(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8) #1

declare dso_local %struct.TYPE_32__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i8* @delete_tree_item(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_32__*) #1

declare dso_local i8* @insert_tree_item(%struct.TYPE_30__*, i32, i8*, i64, i32, %struct.TYPE_32__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
