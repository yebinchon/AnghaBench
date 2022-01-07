; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_unrecoverable_error.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_unrecoverable_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64, i32, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_29__, i64 }
%struct.TYPE_29__ = type { i64, i64, i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i32, i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i64, i64 }

@TYPE_METADATA_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"(%I64x,%x,%I64x) was %u bytes, expected at least %u\0A\00", align 1
@EXTENT_ITEM_TREE_BLOCK = common dso_local global i32 0, align 4
@TYPE_TREE_BLOCK_REF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"TREE_BLOCK_REF takes up %u bytes, but only %u remaining\0A\00", align 1
@TYPE_EXTENT_DATA_REF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"EXTENT_DATA_REF takes up %u bytes, but only %u remaining\0A\00", align 1
@TYPE_SHARED_BLOCK_REF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"SHARED_BLOCK_REF takes up %u bytes, but only %u remaining\0A\00", align 1
@TYPE_SHARED_DATA_REF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"SHARED_DATA_REF takes up %u bytes, but only %u remaining\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"unknown extent type %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"(%I64x,%x,%I64x) was %u bytes, expected %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, i64, i64)* @log_unrecoverable_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_unrecoverable_error(%struct.TYPE_31__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_35__, align 8
  %8 = alloca %struct.TYPE_30__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_34__*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_30__, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 1
  store i32 -1, i32* %26, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @find_item(%struct.TYPE_31__* %27, i32 %30, %struct.TYPE_30__* %8, %struct.TYPE_35__* %7, i32 0, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @NT_SUCCESS(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %562

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %111, label %55

55:                                               ; preds = %47, %39
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %61, %65
  %67 = icmp sge i64 %60, %66
  br i1 %67, label %111, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %81, %86
  %88 = load i64, i64* %5, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %111, label %90

90:                                               ; preds = %76, %68
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %103, %107
  %109 = load i64, i64* %5, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %98, %76, %55, %47
  br label %562

112:                                              ; preds = %98, %90
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = icmp ult i64 %117, 16
  br i1 %118, label %119, label %140

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %124, i64 %129, i64 %134, i32 %138, i64 16)
  br label %562

140:                                              ; preds = %112
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %145, %struct.TYPE_25__** %10, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i64 1
  %148 = bitcast %struct.TYPE_25__* %147 to i64*
  store i64* %148, i64** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = sub i64 %153, 16
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %13, align 4
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %207

163:                                              ; preds = %140
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @EXTENT_ITEM_TREE_BLOCK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %207

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = icmp ult i64 %175, 32
  br i1 %176, label %177, label %198

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %182, i64 %187, i64 %192, i32 %196, i64 32)
  br label %562

198:                                              ; preds = %170
  %199 = load i64*, i64** %12, align 8
  %200 = bitcast i64* %199 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %200, %struct.TYPE_24__** %11, align 8
  %201 = load i64*, i64** %12, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 16
  store i64* %202, i64** %12, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = sub i64 %204, 16
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %198, %163, %140
  store i64 0, i64* %14, align 8
  br label %208

208:                                              ; preds = %386, %207
  %209 = load i32, i32* %13, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %387

211:                                              ; preds = %208
  %212 = load i64*, i64** %12, align 8
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %15, align 8
  %214 = load i64*, i64** %12, align 8
  %215 = getelementptr inbounds i64, i64* %214, i32 1
  store i64* %215, i64** %12, align 8
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %13, align 4
  %218 = load i64, i64* %15, align 8
  %219 = load i64, i64* @TYPE_TREE_BLOCK_REF, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %268

221:                                              ; preds = %211
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = icmp ult i64 %223, 8
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* %13, align 4
  %227 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 8, i32 %226)
  br label %387

228:                                              ; preds = %221
  %229 = load i64*, i64** %12, align 8
  %230 = bitcast i64* %229 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %230, %struct.TYPE_32__** %16, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %232 = load i64, i64* %5, align 8
  %233 = load i64, i64* %6, align 8
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %238 = icmp ne %struct.TYPE_24__* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  br label %249

243:                                              ; preds = %228
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  br label %249

249:                                              ; preds = %243, %239
  %250 = phi i64 [ %242, %239 ], [ %248, %243 ]
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %252 = icmp ne %struct.TYPE_24__* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 1
  br label %257

256:                                              ; preds = %249
  br label %257

257:                                              ; preds = %256, %253
  %258 = phi i32* [ %255, %253 ], [ null, %256 ]
  %259 = call i32 @log_tree_checksum_error(%struct.TYPE_31__* %231, i64 %232, i64 %233, i64 %236, i64 %250, i32* %258)
  %260 = load i64, i64* %14, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %14, align 8
  %262 = load i64*, i64** %12, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 8
  store i64* %263, i64** %12, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = sub i64 %265, 8
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %13, align 4
  br label %386

268:                                              ; preds = %211
  %269 = load i64, i64* %15, align 8
  %270 = load i64, i64* @TYPE_EXTENT_DATA_REF, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %314

272:                                              ; preds = %268
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = icmp ult i64 %274, 24
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i32, i32* %13, align 4
  %278 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 24, i32 %277)
  br label %387

279:                                              ; preds = %272
  %280 = load i64*, i64** %12, align 8
  %281 = bitcast i64* %280 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %281, %struct.TYPE_26__** %17, align 8
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %283 = load i64, i64* %5, align 8
  %284 = load i64, i64* %6, align 8
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %5, align 8
  %295 = add nsw i64 %293, %294
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = sub nsw i64 %295, %300
  %302 = call i32 @log_file_checksum_error(%struct.TYPE_31__* %282, i64 %283, i64 %284, i32 %287, i32 %290, i64 %301)
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %14, align 8
  %307 = add nsw i64 %306, %305
  store i64 %307, i64* %14, align 8
  %308 = load i64*, i64** %12, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 24
  store i64* %309, i64** %12, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = sub i64 %311, 24
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %13, align 4
  br label %385

314:                                              ; preds = %268
  %315 = load i64, i64* %15, align 8
  %316 = load i64, i64* @TYPE_SHARED_BLOCK_REF, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %343

318:                                              ; preds = %314
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = icmp ult i64 %320, 8
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = load i32, i32* %13, align 4
  %324 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 8, i32 %323)
  br label %387

325:                                              ; preds = %318
  %326 = load i64*, i64** %12, align 8
  %327 = bitcast i64* %326 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %327, %struct.TYPE_34__** %18, align 8
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %329 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %330 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %5, align 8
  %333 = load i64, i64* %6, align 8
  %334 = call i32 @log_tree_checksum_error_shared(%struct.TYPE_31__* %328, i64 %331, i64 %332, i64 %333)
  %335 = load i64, i64* %14, align 8
  %336 = add nsw i64 %335, 1
  store i64 %336, i64* %14, align 8
  %337 = load i64*, i64** %12, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 8
  store i64* %338, i64** %12, align 8
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = sub i64 %340, 8
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %13, align 4
  br label %384

343:                                              ; preds = %314
  %344 = load i64, i64* %15, align 8
  %345 = load i64, i64* @TYPE_SHARED_DATA_REF, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %380

347:                                              ; preds = %343
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = icmp ult i64 %349, 16
  br i1 %350, label %351, label %354

351:                                              ; preds = %347
  %352 = load i32, i32* %13, align 4
  %353 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 16, i32 %352)
  br label %387

354:                                              ; preds = %347
  %355 = load i64*, i64** %12, align 8
  %356 = bitcast i64* %355 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %356, %struct.TYPE_33__** %19, align 8
  %357 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %358 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %359 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* %5, align 8
  %362 = load i64, i64* %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @log_file_checksum_error_shared(%struct.TYPE_31__* %357, i64 %360, i64 %361, i64 %362, i64 %367)
  %369 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %370 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* %14, align 8
  %373 = add nsw i64 %372, %371
  store i64 %373, i64* %14, align 8
  %374 = load i64*, i64** %12, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 16
  store i64* %375, i64** %12, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = sub i64 %377, 16
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %13, align 4
  br label %383

380:                                              ; preds = %343
  %381 = load i64, i64* %15, align 8
  %382 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %381)
  br label %387

383:                                              ; preds = %354
  br label %384

384:                                              ; preds = %383, %325
  br label %385

385:                                              ; preds = %384, %279
  br label %386

386:                                              ; preds = %385, %257
  br label %208

387:                                              ; preds = %380, %351, %322, %276, %225, %208
  %388 = load i64, i64* %14, align 8
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp slt i64 %388, %391
  br i1 %392, label %393, label %562

393:                                              ; preds = %387
  br label %394

394:                                              ; preds = %560, %393
  %395 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %396 = call i64 @find_next_item(%struct.TYPE_31__* %395, %struct.TYPE_30__* %8, %struct.TYPE_30__* %20, i32 0, i32* null)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = bitcast %struct.TYPE_30__* %8 to i8*
  %400 = bitcast %struct.TYPE_30__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %399, i8* align 8 %400, i64 8, i1 false)
  br label %402

401:                                              ; preds = %394
  br label %561

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %404 = load %struct.TYPE_28__*, %struct.TYPE_28__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %5, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %558

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @TYPE_TREE_BLOCK_REF, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %450

418:                                              ; preds = %410
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %420 = load i64, i64* %5, align 8
  %421 = load i64, i64* %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %423 = load %struct.TYPE_28__*, %struct.TYPE_28__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %424, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %428 = icmp ne %struct.TYPE_24__* %427, null
  br i1 %428, label %429, label %433

429:                                              ; preds = %418
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  br label %439

433:                                              ; preds = %418
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %435 = load %struct.TYPE_28__*, %struct.TYPE_28__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  br label %439

439:                                              ; preds = %433, %429
  %440 = phi i64 [ %432, %429 ], [ %438, %433 ]
  %441 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %442 = icmp ne %struct.TYPE_24__* %441, null
  br i1 %442, label %443, label %446

443:                                              ; preds = %439
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 1
  br label %447

446:                                              ; preds = %439
  br label %447

447:                                              ; preds = %446, %443
  %448 = phi i32* [ %445, %443 ], [ null, %446 ]
  %449 = call i32 @log_tree_checksum_error(%struct.TYPE_31__* %419, i64 %420, i64 %421, i64 %426, i64 %440, i32* %448)
  br label %557

450:                                              ; preds = %410
  %451 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %452 = load %struct.TYPE_28__*, %struct.TYPE_28__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @TYPE_EXTENT_DATA_REF, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %513

458:                                              ; preds = %450
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %460 = load %struct.TYPE_28__*, %struct.TYPE_28__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = sext i32 %462 to i64
  %464 = icmp ult i64 %463, 24
  br i1 %464, label %465, label %486

465:                                              ; preds = %458
  %466 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %467 = load %struct.TYPE_28__*, %struct.TYPE_28__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %472 = load %struct.TYPE_28__*, %struct.TYPE_28__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %477 = load %struct.TYPE_28__*, %struct.TYPE_28__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %470, i64 %475, i64 %480, i32 %484, i64 24)
  br label %561

486:                                              ; preds = %458
  %487 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %488 = load %struct.TYPE_28__*, %struct.TYPE_28__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = inttoptr i64 %490 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %491, %struct.TYPE_26__** %21, align 8
  %492 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %493 = load i64, i64* %5, align 8
  %494 = load i64, i64* %6, align 8
  %495 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %496 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %495, i32 0, i32 3
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %499 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %502 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* %5, align 8
  %505 = add nsw i64 %503, %504
  %506 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = sub nsw i64 %505, %510
  %512 = call i32 @log_file_checksum_error(%struct.TYPE_31__* %492, i64 %493, i64 %494, i32 %497, i32 %500, i64 %511)
  br label %556

513:                                              ; preds = %450
  %514 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %515 = load %struct.TYPE_28__*, %struct.TYPE_28__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %515, i32 0, i32 1
  %517 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @TYPE_SHARED_BLOCK_REF, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %531

521:                                              ; preds = %513
  %522 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %524 = load %struct.TYPE_28__*, %struct.TYPE_28__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* %5, align 8
  %529 = load i64, i64* %6, align 8
  %530 = call i32 @log_tree_checksum_error_shared(%struct.TYPE_31__* %522, i64 %527, i64 %528, i64 %529)
  br label %555

531:                                              ; preds = %513
  %532 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %533 = load %struct.TYPE_28__*, %struct.TYPE_28__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @TYPE_SHARED_DATA_REF, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %554

539:                                              ; preds = %531
  %540 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %542 = load %struct.TYPE_28__*, %struct.TYPE_28__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %543, i32 0, i32 2
  %545 = load i64, i64* %544, align 8
  %546 = load i64, i64* %5, align 8
  %547 = load i64, i64* %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %550, i32 0, i32 1
  %552 = load i64, i64* %551, align 8
  %553 = call i32 @log_file_checksum_error_shared(%struct.TYPE_31__* %540, i64 %545, i64 %546, i64 %547, i64 %552)
  br label %554

554:                                              ; preds = %539, %531
  br label %555

555:                                              ; preds = %554, %521
  br label %556

556:                                              ; preds = %555, %486
  br label %557

557:                                              ; preds = %556, %447
  br label %559

558:                                              ; preds = %402
  br label %561

559:                                              ; preds = %557
  br label %560

560:                                              ; preds = %559
  br i1 true, label %394, label %561

561:                                              ; preds = %560, %558, %465, %401
  br label %562

562:                                              ; preds = %35, %111, %119, %177, %561, %387
  ret void
}

declare dso_local i32 @find_item(%struct.TYPE_31__*, i32, %struct.TYPE_30__*, %struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @log_tree_checksum_error(%struct.TYPE_31__*, i64, i64, i64, i64, i32*) #1

declare dso_local i32 @log_file_checksum_error(%struct.TYPE_31__*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @log_tree_checksum_error_shared(%struct.TYPE_31__*, i64, i64, i64) #1

declare dso_local i32 @log_file_checksum_error_shared(%struct.TYPE_31__*, i64, i64, i64, i64) #1

declare dso_local i64 @find_next_item(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
