; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_read_boot.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_read_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64 }
%struct.boot_sector = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i32, i32 }
%struct.boot_sector_16 = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Logical sector size is zero.\00", align 1
@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Logical sector size (%d bytes) is not a multiple of the physical sector size.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cluster size is zero.\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Currently, only 1 or 2 FATs are supported, not %d.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"Checking we can access the last sector of the filesystem\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"FAT size is zero.\00", align 1
@MSDOS_DIR_BITS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Filesystem has no space for any data clusters\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Warning: FAT32 root dir not in cluster chain! Compatibility mode...\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"No root directory!\00", align 1
@.str.9 = private unnamed_addr constant [115 x i8] c"Warning: FAT32 root dir is in a cluster chain, but a separate root dir\0A  area is defined. Cannot fix this easily.\0A\00", align 1
@FAT16_THRESHOLD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [191 x i8] c"Warning: Filesystem is FAT32 according to fat_length and fat32_length fields,\0A  but has only %lu clusters, less than the required minimum of %d.\0A  This may lead to problems on some systems.\0A\00", align 1
@atari_format = common dso_local global i32 0, align 4
@FAT12_THRESHOLD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"Too many clusters (%lu) for FAT16 filesystem.\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Filesystem has %u clusters but only space for %u FAT entries.\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Root directory has zero size.\00", align 1
@MSDOS_DPS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [72 x i8] c"Root directory (%d entries) doesn't span an integral number of sectors.\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"Logical sector size (%u bytes) is not a multiple of the physical sector size.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_boot(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.boot_sector, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.boot_sector_16*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = call i32 @fs_read(i32 0, i32 80, %struct.boot_sector* %3)
  %12 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 14
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @GET_UNALIGNED_W(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SECTOR_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul i32 %31, %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %29
  %43 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46, %42
  %55 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 13
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @GET_UNALIGNED_W(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  br label %71

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le32toh(i64 %69)
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i32 [ %66, %65 ], [ %70, %67 ]
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* @verbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, -2
  %80 = sub i32 %79, 1
  %81 = load i32, i32* %5, align 4
  %82 = mul i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @fs_test(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16toh(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le16toh(i32 %91)
  br label %97

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @le32toh(i64 %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %92, %89 ], [ %96, %93 ]
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @le16toh(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = mul i32 %106, %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le16toh(i32 %112)
  %114 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul i32 %115, %116
  %118 = add i32 %113, %117
  %119 = load i32, i32* %5, align 4
  %120 = mul i32 %118, %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @GET_UNALIGNED_W(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MSDOS_DIR_BITS, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @ROUND_TO_MULTIPLE(i32 %136, i32 %137)
  %139 = add i32 %131, %138
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %5, align 4
  %144 = mul i32 %142, %143
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %144, %147
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %103
  %155 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %103
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = udiv i32 %157, %160
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 7
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 14
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 8
  store i32 -1, i32* %169, align 8
  %170 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %251, label %173

173:                                              ; preds = %156
  %174 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 8
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %251

177:                                              ; preds = %173
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 9
  store i32 32, i32* %179, align 4
  %180 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @le32toh(i64 %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %177
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0))
  br label %222

196:                                              ; preds = %189, %177
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %221

208:                                              ; preds = %201, %196
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.9, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %213, %208
  br label %221

221:                                              ; preds = %220, %206
  br label %222

222:                                              ; preds = %221, %194
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @FAT16_THRESHOLD, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = zext i32 %231 to i64
  %233 = load i32, i32* @FAT16_THRESHOLD, align 4
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.10, i64 0, i64 0), i64 %232, i32 %233)
  br label %235

235:                                              ; preds = %228, %222
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %237 = call i32 @check_fat_state_bit(%struct.TYPE_7__* %236, %struct.boot_sector* %3)
  %238 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @le16toh(i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = mul i32 %240, %241
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 10
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @check_backup_boot(%struct.TYPE_7__* %245, %struct.boot_sector* %3, i32 %246)
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @read_fsinfo(%struct.TYPE_7__* %248, %struct.boot_sector* %3, i32 %249)
  br label %305

251:                                              ; preds = %173, %156
  %252 = load i32, i32* @atari_format, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %278, label %254

254:                                              ; preds = %251
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @FAT12_THRESHOLD, align 4
  %259 = icmp uge i32 %257, %258
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 16, i32 12
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 9
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @FAT16_THRESHOLD, align 4
  %268 = icmp uge i32 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %254
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = zext i32 %272 to i64
  %274 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i64 %273)
  br label %275

275:                                              ; preds = %269, %254
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %277 = call i32 @check_fat_state_bit(%struct.TYPE_7__* %276, %struct.boot_sector* %3)
  br label %304

278:                                              ; preds = %251
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 9
  store i32 16, i32* %280, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = add i32 %283, 2
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %5, align 4
  %287 = mul i32 %285, %286
  %288 = mul i32 %287, 8
  %289 = udiv i32 %288, 16
  %290 = icmp ugt i32 %284, %289
  br i1 %290, label %300, label %291

291:                                              ; preds = %278
  %292 = load i32, i32* %4, align 4
  %293 = icmp eq i32 %292, 720
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %4, align 4
  %296 = icmp eq i32 %295, 1440
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %4, align 4
  %299 = icmp eq i32 %298, 2880
  br i1 %299, label %300, label %303

300:                                              ; preds = %297, %294, %291, %278
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 9
  store i32 12, i32* %302, align 4
  br label %303

303:                                              ; preds = %300, %297
  br label %304

304:                                              ; preds = %303, %275
  br label %305

305:                                              ; preds = %304, %235
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 32
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %315

311:                                              ; preds = %305
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  br label %315

315:                                              ; preds = %311, %310
  %316 = phi i32 [ 28, %310 ], [ %314, %311 ]
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 11
  store i32 %316, i32* %318, align 4
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %5, align 4
  %321 = mul i32 %319, %320
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 12
  store i32 %321, i32* %323, align 8
  %324 = call i32* @calloc(i32 12, i32 4)
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 13
  store i32* %324, i32** %326, align 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 12
  br i1 %330, label %336, label %331

331:                                              ; preds = %315
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 16
  br i1 %335, label %336, label %354

336:                                              ; preds = %331, %315
  %337 = bitcast %struct.boot_sector* %3 to %struct.boot_sector_16*
  store %struct.boot_sector_16* %337, %struct.boot_sector_16** %10, align 8
  %338 = load %struct.boot_sector_16*, %struct.boot_sector_16** %10, align 8
  %339 = getelementptr inbounds %struct.boot_sector_16, %struct.boot_sector_16* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp eq i32 %340, 41
  br i1 %341, label %342, label %350

342:                                              ; preds = %336
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 13
  %345 = load i32*, i32** %344, align 8
  %346 = load %struct.boot_sector_16*, %struct.boot_sector_16** %10, align 8
  %347 = getelementptr inbounds %struct.boot_sector_16, %struct.boot_sector_16* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @memmove(i32* %345, i32* %348, i32 11)
  br label %353

350:                                              ; preds = %336
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 13
  store i32* null, i32** %352, align 8
  br label %353

353:                                              ; preds = %350, %342
  br label %374

354:                                              ; preds = %331
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 32
  br i1 %358, label %359, label %373

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 41
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 13
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %3, i32 0, i32 5
  %368 = call i32 @memmove(i32* %366, i32* %367, i32 11)
  br label %372

369:                                              ; preds = %359
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 13
  store i32* null, i32** %371, align 8
  br label %372

372:                                              ; preds = %369, %363
  br label %373

373:                                              ; preds = %372, %354
  br label %374

374:                                              ; preds = %373, %353
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 12
  %377 = load i32, i32* %376, align 8
  %378 = mul nsw i32 %377, 8
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 9
  %381 = load i32, i32* %380, align 4
  %382 = sdiv i32 %378, %381
  store i32 %382, i32* %8, align 4
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 6
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sub i32 %386, 2
  %388 = icmp ugt i32 %385, %387
  br i1 %388, label %389, label %396

389:                                              ; preds = %374
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sub i32 %393, 2
  %395 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %392, i32 %394)
  br label %396

396:                                              ; preds = %389, %374
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %408, label %401

401:                                              ; preds = %396
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %408, label %406

406:                                              ; preds = %401
  %407 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %408

408:                                              ; preds = %406, %401, %396
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @MSDOS_DPS, align 4
  %413 = sub nsw i32 %412, 1
  %414 = and i32 %411, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %408
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.14, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %416, %408
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* @SECTOR_SIZE, align 4
  %424 = sub nsw i32 %423, 1
  %425 = and i32 %422, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %421
  %428 = load i32, i32* %5, align 4
  %429 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %427, %421
  %431 = load i64, i64* @verbose, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %430
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %435 = load i32, i32* %5, align 4
  %436 = call i32 @dump_boot(%struct.TYPE_7__* %434, %struct.boot_sector* %3, i32 %435)
  br label %437

437:                                              ; preds = %433, %430
  ret void
}

declare dso_local i32 @fs_read(i32, i32, %struct.boot_sector*) #1

declare dso_local i8* @GET_UNALIGNED_W(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fs_test(i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @ROUND_TO_MULTIPLE(i32, i32) #1

declare dso_local i32 @check_fat_state_bit(%struct.TYPE_7__*, %struct.boot_sector*) #1

declare dso_local i32 @check_backup_boot(%struct.TYPE_7__*, %struct.boot_sector*, i32) #1

declare dso_local i32 @read_fsinfo(%struct.TYPE_7__*, %struct.boot_sector*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @dump_boot(%struct.TYPE_7__*, %struct.boot_sector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
