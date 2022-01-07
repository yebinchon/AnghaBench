; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetAllocationSizeInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetAllocationSizeInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_40__ = type { i64, i64, i32, %struct.TYPE_32__, %struct.TYPE_39__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_36__, %struct.TYPE_34__ }
%struct.TYPE_36__ = type { i64, i16, i64 }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_41__ = type { %struct.TYPE_33__, i32, i32 }
%struct.TYPE_33__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"VfatSetAllocationSizeInformation(File <%wZ>, AllocationSize %d %u)\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"NextCluster failed. Status = %x\0A\00", align 1
@STATUS_DISK_FULL = common dso_local global i32 0, align 4
@FAT32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Check for the ability to set file size\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't set file size!\0A\00", align 1
@STATUS_USER_MAPPED_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Can set file size\0A\00", align 1
@FCB_IS_DIRTY = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_SIZE = common dso_local global i32 0, align 4
@FILE_ACTION_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VfatSetAllocationSizeInformation(%struct.TYPE_30__* %0, %struct.TYPE_40__* %1, %struct.TYPE_31__* %2, %struct.TYPE_41__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_41__* %3, %struct.TYPE_41__** %9, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %17, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %29 = call i64 @vfatVolumeIsFatX(%struct.TYPE_31__* %28)
  store i64 %29, i64* %18, align 8
  %30 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32* %31, i32 %34, i32 %37)
  %39 = load i64, i64* %18, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  br label %53

47:                                               ; preds = %4
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %60, i32* %5, align 4
  br label %477

61:                                               ; preds = %53
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %66, i32* %5, align 4
  br label %477

67:                                               ; preds = %61
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %69, i32 0, i32 3
  %71 = call i64 @vfatDirEntryGetFirstCluster(%struct.TYPE_31__* %68, %struct.TYPE_32__* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %72, %78
  br i1 %79, label %80, label %327

80:                                               ; preds = %67
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %191

84:                                               ; preds = %80
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @TRUE, align 8
  %92 = call i32 @NextCluster(%struct.TYPE_31__* %89, i64 %90, i64* %12, i64 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @NT_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %477

100:                                              ; preds = %84
  %101 = load i64, i64* %12, align 8
  %102 = icmp eq i64 %101, 4294967295
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @STATUS_DISK_FULL, align 4
  store i32 %104, i32* %5, align 4
  br label %477

105:                                              ; preds = %100
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %15, align 8
  %109 = sub nsw i64 %108, 1
  %110 = load i64, i64* %14, align 8
  %111 = call i64 @ROUND_DOWN(i64 %109, i64 %110)
  %112 = load i64, i64* @TRUE, align 8
  %113 = call i32 @OffsetToCluster(%struct.TYPE_31__* %106, i64 %107, i64 %111, i64* %16, i64 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i64, i64* %16, align 8
  %115 = icmp eq i64 %114, 4294967295
  br i1 %115, label %120, label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %13, align 4
  %118 = call i64 @NT_SUCCESS(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %116, %105
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %11, align 8
  store i64 %121, i64* %16, align 8
  %122 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %135, %120
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @NT_SUCCESS(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 4294967295
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i64, i64* %11, align 8
  %132 = icmp sgt i64 %131, 1
  br label %133

133:                                              ; preds = %130, %127, %123
  %134 = phi i1 [ false, %127 ], [ false, %123 ], [ %132, %130 ]
  br i1 %134, label %135, label %144

135:                                              ; preds = %133
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = call i32 @NextCluster(%struct.TYPE_31__* %136, i64 %137, i64* %16, i64 %138)
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @WriteCluster(%struct.TYPE_31__* %140, i64 %141, i32 0)
  %143 = load i64, i64* %16, align 8
  store i64 %143, i64* %11, align 8
  br label %123

144:                                              ; preds = %133
  %145 = load i32, i32* @STATUS_DISK_FULL, align 4
  store i32 %145, i32* %5, align 4
  br label %477

146:                                              ; preds = %116
  %147 = load i64, i64* %18, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  store i64 %150, i64* %154, align 8
  br label %190

155:                                              ; preds = %146
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @FAT32, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load i64, i64* %12, align 8
  %164 = and i64 %163, 65535
  %165 = trunc i64 %164 to i16
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %168, i32 0, i32 1
  store i16 %165, i16* %169, align 8
  %170 = load i64, i64* %12, align 8
  %171 = ashr i64 %170, 16
  %172 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 2
  store i64 %171, i64* %175, align 8
  br label %189

176:                                              ; preds = %155
  %177 = load i64, i64* %12, align 8
  %178 = ashr i64 %177, 16
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @ASSERT(i32 %180)
  %182 = load i64, i64* %12, align 8
  %183 = and i64 %182, 65535
  %184 = trunc i64 %183 to i16
  %185 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 1
  store i16 %184, i16* %188, align 8
  br label %189

189:                                              ; preds = %176, %162
  br label %190

190:                                              ; preds = %189, %149
  br label %319

191:                                              ; preds = %80
  %192 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %234

196:                                              ; preds = %191
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %14, align 8
  %204 = sub nsw i64 %202, %203
  %205 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %196
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %11, align 8
  %213 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %213, i32* %13, align 4
  br label %233

214:                                              ; preds = %196
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %216 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %14, align 8
  %226 = sub nsw i64 %224, %225
  %227 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %226, %229
  %231 = load i64, i64* @FALSE, align 8
  %232 = call i32 @OffsetToCluster(%struct.TYPE_31__* %215, i64 %218, i64 %230, i64* %11, i64 %231)
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %214, %209
  br label %247

234:                                              ; preds = %191
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %236 = load i64, i64* %12, align 8
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %14, align 8
  %244 = sub nsw i64 %242, %243
  %245 = load i64, i64* @FALSE, align 8
  %246 = call i32 @OffsetToCluster(%struct.TYPE_31__* %235, i64 %236, i64 %244, i64* %11, i64 %245)
  store i32 %246, i32* %13, align 4
  br label %247

247:                                              ; preds = %234, %233
  %248 = load i32, i32* %13, align 4
  %249 = call i64 @NT_SUCCESS(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* %13, align 4
  store i32 %252, i32* %5, align 4
  br label %477

253:                                              ; preds = %247
  %254 = load i64, i64* %11, align 8
  %255 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %255, i32 0, i32 0
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %14, align 8
  %264 = sub nsw i64 %262, %263
  %265 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %265, i32 0, i32 1
  store i64 %264, i64* %266, align 8
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %268 = load i64, i64* %11, align 8
  %269 = load i64, i64* %15, align 8
  %270 = sub nsw i64 %269, 1
  %271 = load i64, i64* %14, align 8
  %272 = call i64 @ROUND_DOWN(i64 %270, i64 %271)
  %273 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %272, %275
  %277 = load i64, i64* @TRUE, align 8
  %278 = call i32 @OffsetToCluster(%struct.TYPE_31__* %267, i64 %268, i64 %276, i64* %16, i64 %277)
  store i32 %278, i32* %13, align 4
  %279 = load i64, i64* %16, align 8
  %280 = icmp eq i64 %279, 4294967295
  br i1 %280, label %285, label %281

281:                                              ; preds = %253
  %282 = load i32, i32* %13, align 4
  %283 = call i64 @NT_SUCCESS(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %318, label %285

285:                                              ; preds = %281, %253
  %286 = load i64, i64* %11, align 8
  store i64 %286, i64* %16, align 8
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %288 = load i64, i64* %12, align 8
  %289 = load i64, i64* @FALSE, align 8
  %290 = call i32 @NextCluster(%struct.TYPE_31__* %287, i64 %288, i64* %16, i64 %289)
  store i32 %290, i32* %13, align 4
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %292 = load i64, i64* %11, align 8
  %293 = call i32 @WriteCluster(%struct.TYPE_31__* %291, i64 %292, i32 -1)
  %294 = load i64, i64* %16, align 8
  store i64 %294, i64* %11, align 8
  br label %295

295:                                              ; preds = %307, %285
  %296 = load i32, i32* %13, align 4
  %297 = call i64 @NT_SUCCESS(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %295
  %300 = load i64, i64* %11, align 8
  %301 = icmp ne i64 %300, 4294967295
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i64, i64* %11, align 8
  %304 = icmp sgt i64 %303, 1
  br label %305

305:                                              ; preds = %302, %299, %295
  %306 = phi i1 [ false, %299 ], [ false, %295 ], [ %304, %302 ]
  br i1 %306, label %307, label %316

307:                                              ; preds = %305
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %309 = load i64, i64* %12, align 8
  %310 = load i64, i64* @FALSE, align 8
  %311 = call i32 @NextCluster(%struct.TYPE_31__* %308, i64 %309, i64* %16, i64 %310)
  store i32 %311, i32* %13, align 4
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %313 = load i64, i64* %11, align 8
  %314 = call i32 @WriteCluster(%struct.TYPE_31__* %312, i64 %313, i32 0)
  %315 = load i64, i64* %16, align 8
  store i64 %315, i64* %11, align 8
  br label %295

316:                                              ; preds = %305
  %317 = load i32, i32* @STATUS_DISK_FULL, align 4
  store i32 %317, i32* %5, align 4
  br label %477

318:                                              ; preds = %281
  br label %319

319:                                              ; preds = %318, %190
  %320 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %321 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %322 = load i64, i64* %15, align 8
  %323 = load i64, i64* %14, align 8
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %325 = call i64 @vfatVolumeIsFatX(%struct.TYPE_31__* %324)
  %326 = call i32 @UpdateFileSize(%struct.TYPE_30__* %320, %struct.TYPE_40__* %321, i64 %322, i64 %323, i64 %325)
  br label %458

327:                                              ; preds = %67
  %328 = load i64, i64* %15, align 8
  %329 = load i64, i64* %14, align 8
  %330 = add nsw i64 %328, %329
  %331 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp sle i64 %330, %336
  br i1 %337, label %338, label %449

338:                                              ; preds = %327
  %339 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %340 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %344 = call i32 @MmCanFileBeTruncated(i32 %342, %struct.TYPE_41__* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %338
  %347 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %348 = load i32, i32* @STATUS_USER_MAPPED_FILE, align 4
  store i32 %348, i32* %5, align 4
  br label %477

349:                                              ; preds = %338
  %350 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %351 = load i64, i64* @TRUE, align 8
  store i64 %351, i64* %17, align 8
  %352 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %352, i32 0, i32 1
  store i64 0, i64* %353, align 8
  %354 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %354, i32 0, i32 0
  store i64 0, i64* %355, align 8
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %357 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %358 = load i64, i64* %15, align 8
  %359 = load i64, i64* %14, align 8
  %360 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %361 = call i64 @vfatVolumeIsFatX(%struct.TYPE_31__* %360)
  %362 = call i32 @UpdateFileSize(%struct.TYPE_30__* %356, %struct.TYPE_40__* %357, i64 %358, i64 %359, i64 %361)
  %363 = load i64, i64* %15, align 8
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %365, label %383

365:                                              ; preds = %349
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %367 = load i64, i64* %12, align 8
  %368 = load i64, i64* %15, align 8
  %369 = sub nsw i64 %368, 1
  %370 = load i64, i64* %14, align 8
  %371 = call i64 @ROUND_DOWN(i64 %369, i64 %370)
  %372 = load i64, i64* @FALSE, align 8
  %373 = call i32 @OffsetToCluster(%struct.TYPE_31__* %366, i64 %367, i64 %371, i64* %11, i64 %372)
  store i32 %373, i32* %13, align 4
  %374 = load i64, i64* %11, align 8
  store i64 %374, i64* %16, align 8
  %375 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %376 = load i64, i64* %12, align 8
  %377 = load i64, i64* @FALSE, align 8
  %378 = call i32 @NextCluster(%struct.TYPE_31__* %375, i64 %376, i64* %16, i64 %377)
  store i32 %378, i32* %13, align 4
  %379 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %380 = load i64, i64* %11, align 8
  %381 = call i32 @WriteCluster(%struct.TYPE_31__* %379, i64 %380, i32 -1)
  %382 = load i64, i64* %16, align 8
  store i64 %382, i64* %11, align 8
  br label %416

383:                                              ; preds = %349
  %384 = load i64, i64* %18, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %389, i32 0, i32 1
  store i64 0, i64* %390, align 8
  br label %413

391:                                              ; preds = %383
  %392 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @FAT32, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %407

398:                                              ; preds = %391
  %399 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %401, i32 0, i32 1
  store i16 0, i16* %402, align 8
  %403 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %405, i32 0, i32 2
  store i64 0, i64* %406, align 8
  br label %412

407:                                              ; preds = %391
  %408 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %410, i32 0, i32 1
  store i16 0, i16* %411, align 8
  br label %412

412:                                              ; preds = %407, %398
  br label %413

413:                                              ; preds = %412, %386
  %414 = load i64, i64* %12, align 8
  store i64 %414, i64* %11, align 8
  store i64 %414, i64* %16, align 8
  %415 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %415, i32* %13, align 4
  br label %416

416:                                              ; preds = %413, %365
  br label %417

417:                                              ; preds = %429, %416
  %418 = load i32, i32* %13, align 4
  %419 = call i64 @NT_SUCCESS(i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %427

421:                                              ; preds = %417
  %422 = load i64, i64* %11, align 8
  %423 = icmp ne i64 4294967295, %422
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = load i64, i64* %11, align 8
  %426 = icmp sgt i64 %425, 1
  br label %427

427:                                              ; preds = %424, %421, %417
  %428 = phi i1 [ false, %421 ], [ false, %417 ], [ %426, %424 ]
  br i1 %428, label %429, label %438

429:                                              ; preds = %427
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %431 = load i64, i64* %12, align 8
  %432 = load i64, i64* @FALSE, align 8
  %433 = call i32 @NextCluster(%struct.TYPE_31__* %430, i64 %431, i64* %16, i64 %432)
  store i32 %433, i32* %13, align 4
  %434 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %435 = load i64, i64* %11, align 8
  %436 = call i32 @WriteCluster(%struct.TYPE_31__* %434, i64 %435, i32 0)
  %437 = load i64, i64* %16, align 8
  store i64 %437, i64* %11, align 8
  br label %417

438:                                              ; preds = %427
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @FAT32, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %448

445:                                              ; preds = %438
  %446 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %447 = call i32 @FAT32UpdateFreeClustersCount(%struct.TYPE_31__* %446)
  br label %448

448:                                              ; preds = %445, %438
  br label %457

449:                                              ; preds = %327
  %450 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %451 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %452 = load i64, i64* %15, align 8
  %453 = load i64, i64* %14, align 8
  %454 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %455 = call i64 @vfatVolumeIsFatX(%struct.TYPE_31__* %454)
  %456 = call i32 @UpdateFileSize(%struct.TYPE_30__* %450, %struct.TYPE_40__* %451, i64 %452, i64 %453, i64 %455)
  br label %457

457:                                              ; preds = %449, %448
  br label %458

458:                                              ; preds = %457, %319
  %459 = load i32, i32* @FCB_IS_DIRTY, align 4
  %460 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %461 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = or i32 %462, %459
  store i32 %463, i32* %461, align 8
  %464 = load i64, i64* %17, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %475

466:                                              ; preds = %458
  %467 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %468 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %469 = call i32 @VfatUpdateEntry(%struct.TYPE_31__* %467, %struct.TYPE_40__* %468)
  %470 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %471 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %472 = load i32, i32* @FILE_NOTIFY_CHANGE_SIZE, align 4
  %473 = load i32, i32* @FILE_ACTION_MODIFIED, align 4
  %474 = call i32 @vfatReportChange(%struct.TYPE_31__* %470, %struct.TYPE_40__* %471, i32 %472, i32 %473)
  br label %475

475:                                              ; preds = %466, %458
  %476 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %476, i32* %5, align 4
  br label %477

477:                                              ; preds = %475, %346, %316, %251, %144, %103, %96, %65, %59
  %478 = load i32, i32* %5, align 4
  ret i32 %478
}

declare dso_local i64 @vfatVolumeIsFatX(%struct.TYPE_31__*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @vfatDirEntryGetFirstCluster(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i32 @NextCluster(%struct.TYPE_31__*, i64, i64*, i64) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @OffsetToCluster(%struct.TYPE_31__*, i64, i64, i64*, i64) #1

declare dso_local i64 @ROUND_DOWN(i64, i64) #1

declare dso_local i32 @WriteCluster(%struct.TYPE_31__*, i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @UpdateFileSize(%struct.TYPE_30__*, %struct.TYPE_40__*, i64, i64, i64) #1

declare dso_local i32 @MmCanFileBeTruncated(i32, %struct.TYPE_41__*) #1

declare dso_local i32 @FAT32UpdateFreeClustersCount(%struct.TYPE_31__*) #1

declare dso_local i32 @VfatUpdateEntry(%struct.TYPE_31__*, %struct.TYPE_40__*) #1

declare dso_local i32 @vfatReportChange(%struct.TYPE_31__*, %struct.TYPE_40__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
