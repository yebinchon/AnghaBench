; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetFileSystemAndClusterSize.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetFileSystemAndClusterSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@hFileSystem = common dso_local global i32 0, align 4
@hClusterSize = common dso_local global i32 0, align 4
@FS_UNKNOWN = common dso_local global i32 0, align 4
@default_fs = common dso_local global i32 0, align 4
@SelectedDrive = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GB = common dso_local global i32 0, align 4
@FS_FAT16 = common dso_local global i64 0, align 8
@MB = common dso_local global i32 0, align 4
@MAX_FAT32_SIZE = common dso_local global float 0.000000e+00, align 4
@TB = common dso_local global float 0.000000e+00, align 4
@FS_FAT32 = common dso_local global i64 0, align 8
@FAT32_CLUSTER_THRESHOLD = common dso_local global i32 0, align 4
@KB = common dso_local global i32 0, align 4
@FS_NTFS = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@SINGLE_CLUSTERSIZE_DEFAULT = common dso_local global i8* null, align 8
@FS_UDF = common dso_local global i64 0, align 8
@advanced_mode_format = common dso_local global i64 0, align 8
@FS_EXT2 = common dso_local global i64 0, align 8
@FS_EXT3 = common dso_local global i64 0, align 8
@nWindowsVersion = common dso_local global i64 0, align 8
@WINDOWS_8_1 = common dso_local global i64 0, align 8
@FixedMedia = common dso_local global i64 0, align 8
@FS_REFS = common dso_local global i64 0, align 8
@FS_MAX = common dso_local global i32 0, align 4
@LARGE_FAT32_SIZE = common dso_local global i32 0, align 4
@force_large_fat32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Large \00", align 1
@FileSystemLabel = common dso_local global i8** null, align 8
@MSG_030 = common dso_local global i32 0, align 4
@allowed_filesystem = common dso_local global i64* null, align 8
@selected_fs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @SetFileSystemAndClusterSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetFileSystemAndClusterSize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = bitcast [128 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 128, i1 false)
  %8 = load i32, i32* @hFileSystem, align 4
  %9 = call i32 @ComboBox_ResetContent(i32 %8)
  %10 = call i32 @IGNORE_RETVAL(i32 %9)
  %11 = load i32, i32* @hClusterSize, align 4
  %12 = call i32 @ComboBox_ResetContent(i32 %11)
  %13 = call i32 @IGNORE_RETVAL(i32 %12)
  %14 = load i32, i32* @FS_UNKNOWN, align 4
  store i32 %14, i32* @default_fs, align 4
  %15 = call i32 @memset(%struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), i32 0, i32 8)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %17 = load i32, i32* @GB, align 4
  %18 = mul nsw i32 4, %17
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %22 = load i64, i64* @FS_FAT16, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 7680, i32* %24, align 4
  store i32 32, i32* %4, align 4
  br label %25

25:                                               ; preds = %48, %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 4096
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MB, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 16, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %38 = load i64, i64* @FS_FAT16, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  br label %51

41:                                               ; preds = %28
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %43 = load i64, i64* @FS_FAT16, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %25

51:                                               ; preds = %34, %25
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %53 = load i64, i64* @FS_FAT16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 130560
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %1
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %60 = load i32, i32* @MB, align 4
  %61 = mul nsw i32 32, %60
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %170

63:                                               ; preds = %58
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %65 = sitofp i32 %64 to float
  %66 = fmul float 1.000000e+00, %65
  %67 = load float, float* @MAX_FAT32_SIZE, align 4
  %68 = fmul float 1.000000e+00, %67
  %69 = load float, float* @TB, align 4
  %70 = fmul float %68, %69
  %71 = fcmp olt float %66, %70
  br i1 %71, label %72, label %170

72:                                               ; preds = %63
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %74 = load i64, i64* @FS_FAT32, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 504, i32* %76, align 4
  store i32 32, i32* %4, align 4
  br label %77

77:                                               ; preds = %105, %72
  %78 = load i32, i32* %4, align 4
  %79 = icmp sle i32 %78, 32768
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %82 = sitofp i32 %81 to float
  %83 = fmul float %82, 1.000000e+00
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @MB, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* @FAT32_CLUSTER_THRESHOLD, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sitofp i32 %88 to float
  %90 = fcmp olt float %83, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 8, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %95 = load i64, i64* @FS_FAT32, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  br label %108

98:                                               ; preds = %80
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %100 = load i64, i64* @FS_FAT32, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %4, align 4
  %107 = shl i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %77

108:                                              ; preds = %91, %77
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %110 = load i64, i64* @FS_FAT32, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 130560
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %116 = load i32, i32* @MB, align 4
  %117 = mul nsw i32 256, %116
  %118 = icmp sge i32 %115, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %108
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %121 = load i32, i32* @GB, align 4
  %122 = mul nsw i32 32, %121
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %153

124:                                              ; preds = %119
  store i32 8, i32* %4, align 4
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp sle i32 %126, 32
  br i1 %127, label %128, label %152

128:                                              ; preds = %125
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %130 = sitofp i32 %129 to float
  %131 = fmul float %130, 1.000000e+00
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @GB, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* @FAT32_CLUSTER_THRESHOLD, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sitofp i32 %136 to float
  %138 = fcmp olt float %131, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %128
  %140 = load i32, i32* %4, align 4
  %141 = sdiv i32 %140, 2
  %142 = load i32, i32* @KB, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %145 = load i64, i64* @FS_FAT32, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  br label %152

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %4, align 4
  %151 = shl i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %125

152:                                              ; preds = %139, %125
  br label %153

153:                                              ; preds = %152, %119, %108
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %155 = load i32, i32* @GB, align 4
  %156 = mul nsw i32 32, %155
  %157 = icmp sge i32 %154, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %160 = load i64, i64* @FS_FAT32, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 114688
  store i32 %164, i32* %162, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %166 = load i64, i64* @FS_FAT32, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i32 32768, i32* %168, align 4
  br label %169

169:                                              ; preds = %158, %153
  br label %170

170:                                              ; preds = %169, %63, %58
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %172 = sitofp i32 %171 to float
  %173 = load float, float* @TB, align 4
  %174 = fmul float 2.560000e+02, %173
  %175 = fcmp olt float %172, %174
  br i1 %175, label %176, label %301

176:                                              ; preds = %170
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %178 = load i64, i64* @FS_NTFS, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 130560, i32* %180, align 4
  store i32 16, i32* %4, align 4
  br label %181

181:                                              ; preds = %202, %176
  %182 = load i32, i32* %4, align 4
  %183 = icmp sle i32 %182, 256
  br i1 %183, label %184, label %205

184:                                              ; preds = %181
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %186 = sitofp i32 %185 to float
  %187 = load i32, i32* %4, align 4
  %188 = sitofp i32 %187 to float
  %189 = load float, float* @TB, align 4
  %190 = fmul float %188, %189
  %191 = fcmp olt float %186, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %184
  %193 = load i32, i32* %4, align 4
  %194 = sdiv i32 %193, 4
  %195 = load i32, i32* @KB, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %198 = load i64, i64* @FS_NTFS, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  store i32 %196, i32* %200, align 4
  br label %205

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = shl i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %181

205:                                              ; preds = %192, %181
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %207 = load i64, i64* @FS_EXFAT, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  store i32 67108352, i32* %209, align 4
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %211 = load i32, i32* @MB, align 4
  %212 = mul nsw i32 256, %211
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %205
  %215 = load i32, i32* @KB, align 4
  %216 = mul nsw i32 4, %215
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %218 = load i64, i64* @FS_EXFAT, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 4
  br label %241

221:                                              ; preds = %205
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %223 = load i32, i32* @GB, align 4
  %224 = mul nsw i32 32, %223
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = load i32, i32* @KB, align 4
  %228 = mul nsw i32 32, %227
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %230 = load i64, i64* @FS_EXFAT, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  store i32 %228, i32* %232, align 4
  br label %240

233:                                              ; preds = %221
  %234 = load i32, i32* @KB, align 4
  %235 = mul nsw i32 128, %234
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %237 = load i64, i64* @FS_EXFAT, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  store i32 %235, i32* %239, align 4
  br label %240

240:                                              ; preds = %233, %226
  br label %241

241:                                              ; preds = %240, %214
  %242 = load i8*, i8** @SINGLE_CLUSTERSIZE_DEFAULT, align 8
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %245 = load i64, i64* @FS_UDF, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  store i32 %243, i32* %247, align 4
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %249 = load i64, i64* @FS_UDF, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  store i32 1, i32* %251, align 4
  %252 = load i64, i64* @advanced_mode_format, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %275

254:                                              ; preds = %241
  %255 = load i8*, i8** @SINGLE_CLUSTERSIZE_DEFAULT, align 8
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %258 = load i64, i64* @FS_EXT2, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i32 %256, i32* %260, align 4
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %262 = load i64, i64* @FS_EXT2, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  store i32 1, i32* %264, align 4
  %265 = load i8*, i8** @SINGLE_CLUSTERSIZE_DEFAULT, align 8
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %268 = load i64, i64* @FS_EXT3, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  store i32 %266, i32* %270, align 4
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %272 = load i64, i64* @FS_EXT3, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  store i32 1, i32* %274, align 4
  br label %275

275:                                              ; preds = %254, %241
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %277 = load i32, i32* @MB, align 4
  %278 = mul nsw i32 512, %277
  %279 = icmp sge i32 %276, %278
  br i1 %279, label %280, label %300

280:                                              ; preds = %275
  %281 = load i64, i64* @nWindowsVersion, align 8
  %282 = load i64, i64* @WINDOWS_8_1, align 8
  %283 = icmp sge i64 %281, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %280
  %285 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 1), align 8
  %286 = load i64, i64* @FixedMedia, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %299

288:                                              ; preds = %284
  %289 = load i8*, i8** @SINGLE_CLUSTERSIZE_DEFAULT, align 8
  %290 = ptrtoint i8* %289 to i32
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %292 = load i64, i64* @FS_REFS, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  store i32 %290, i32* %294, align 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %296 = load i64, i64* @FS_REFS, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  store i32 1, i32* %298, align 4
  br label %299

299:                                              ; preds = %288, %284, %280
  br label %300

300:                                              ; preds = %299, %275
  br label %301

301:                                              ; preds = %300, %170
  %302 = call i32 (...) @SetAllowedFileSystems()
  %303 = call i32 (...) @SetClusterSizeLabels()
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %424, %301
  %305 = load i32, i32* %3, align 4
  %306 = load i32, i32* @FS_MAX, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %427

308:                                              ; preds = %304
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %310 = load i32, i32* %3, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = inttoptr i64 %315 to i8*
  %317 = load i8*, i8** @SINGLE_CLUSTERSIZE_DEFAULT, align 8
  %318 = icmp ne i8* %316, %317
  br i1 %318, label %319, label %365

319:                                              ; preds = %308
  %320 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 2), align 8
  %321 = sub nsw i32 %320, 1
  %322 = xor i32 %321, -1
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %322
  store i32 %329, i32* %327, align 4
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %331 = load i32, i32* %3, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %337 = load i32, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %335, %341
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %364

344:                                              ; preds = %319
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %346 = load i32, i32* %3, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %352 = load i32, i32* %3, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 0, %356
  %358 = and i32 %350, %357
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %360 = load i32, i32* %3, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 1
  store i32 %358, i32* %363, align 4
  br label %364

364:                                              ; preds = %344, %319
  br label %365

365:                                              ; preds = %364, %308
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 4), align 8
  %367 = load i32, i32* %3, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %423

373:                                              ; preds = %365
  %374 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %374, align 16
  %375 = load i32, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* @FS_FAT32, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %389

379:                                              ; preds = %373
  %380 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %381 = load i32, i32* @LARGE_FAT32_SIZE, align 4
  %382 = icmp sgt i32 %380, %381
  br i1 %382, label %386, label %383

383:                                              ; preds = %379
  %384 = load i64, i64* @force_large_fat32, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383, %379
  %387 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %388 = call i32 @static_strcat(i8* %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %389

389:                                              ; preds = %386, %383, %373
  %390 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %391 = load i8**, i8*** @FileSystemLabel, align 8
  %392 = load i32, i32* %3, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %391, i64 %393
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @static_strcat(i8* %390, i8* %395)
  %397 = load i32, i32* @default_fs, align 4
  %398 = load i32, i32* @FS_UNKNOWN, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %405

400:                                              ; preds = %389
  %401 = load i32, i32* @MSG_030, align 4
  %402 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %403 = call i8* @lmprintf(i32 %401, i8* %402)
  store i8* %403, i8** %6, align 8
  %404 = load i32, i32* %3, align 4
  store i32 %404, i32* @default_fs, align 4
  br label %407

405:                                              ; preds = %389
  %406 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8* %406, i8** %6, align 8
  br label %407

407:                                              ; preds = %405, %400
  %408 = load i64*, i64** @allowed_filesystem, align 8
  %409 = load i32, i32* %3, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %407
  %415 = load i32, i32* @hFileSystem, align 4
  %416 = load i32, i32* @hFileSystem, align 4
  %417 = load i8*, i8** %6, align 8
  %418 = call i32 @ComboBox_AddStringU(i32 %416, i8* %417)
  %419 = load i32, i32* %3, align 4
  %420 = call i32 @ComboBox_SetItemData(i32 %415, i32 %418, i32 %419)
  %421 = call i32 @IGNORE_RETVAL(i32 %420)
  br label %422

422:                                              ; preds = %414, %407
  br label %423

423:                                              ; preds = %422, %365
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %3, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %3, align 4
  br label %304

427:                                              ; preds = %304
  %428 = load i32, i32* @FS_UNKNOWN, align 4
  store i32 %428, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  %429 = load i8*, i8** %2, align 8
  %430 = call i64 @safe_strlen(i8* %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %453

432:                                              ; preds = %427
  %433 = load i32, i32* @FS_MAX, align 4
  %434 = sub nsw i32 %433, 1
  store i32 %434, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  br label %435

435:                                              ; preds = %449, %432
  %436 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  %437 = icmp sge i32 %436, 0
  br i1 %437, label %438, label %452

438:                                              ; preds = %435
  %439 = load i8*, i8** %2, align 8
  %440 = load i8**, i8*** @FileSystemLabel, align 8
  %441 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %440, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = call i64 @safe_strcmp(i8* %439, i8* %444)
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %438
  br label %452

448:                                              ; preds = %438
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  br label %435

452:                                              ; preds = %447, %435
  br label %456

453:                                              ; preds = %427
  %454 = load i64, i64* @selected_fs, align 8
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  br label %456

456:                                              ; preds = %453, %452
  store i32 0, i32* %4, align 4
  br label %457

457:                                              ; preds = %475, %456
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* @hFileSystem, align 4
  %460 = call i32 @ComboBox_GetCount(i32 %459)
  %461 = icmp slt i32 %458, %460
  br i1 %461, label %462, label %478

462:                                              ; preds = %457
  %463 = load i32, i32* @hFileSystem, align 4
  %464 = load i32, i32* %4, align 4
  %465 = call i64 @ComboBox_GetItemData(i32 %463, i32 %464)
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 3), align 4
  %467 = sext i32 %466 to i64
  %468 = icmp eq i64 %465, %467
  br i1 %468, label %469, label %474

469:                                              ; preds = %462
  %470 = load i32, i32* @hFileSystem, align 4
  %471 = load i32, i32* %4, align 4
  %472 = call i32 @ComboBox_SetCurSel(i32 %470, i32 %471)
  %473 = call i32 @IGNORE_RETVAL(i32 %472)
  br label %478

474:                                              ; preds = %462
  br label %475

475:                                              ; preds = %474
  %476 = load i32, i32* %4, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %4, align 4
  br label %457

478:                                              ; preds = %469, %457
  %479 = load i32, i32* %4, align 4
  %480 = load i32, i32* @hFileSystem, align 4
  %481 = call i32 @ComboBox_GetCount(i32 %480)
  %482 = icmp eq i32 %479, %481
  br i1 %482, label %483, label %487

483:                                              ; preds = %478
  %484 = load i32, i32* @hFileSystem, align 4
  %485 = load i32, i32* @default_fs, align 4
  %486 = call i32 @SetComboEntry(i32 %484, i32 %485)
  br label %487

487:                                              ; preds = %483, %478
  %488 = load i32, i32* @hFileSystem, align 4
  %489 = load i32, i32* @hFileSystem, align 4
  %490 = call i32 @ComboBox_GetCurSel(i32 %489)
  %491 = call i64 @ComboBox_GetItemData(i32 %488, i32 %490)
  %492 = trunc i64 %491 to i32
  %493 = call i32 @SetClusterSizes(i32 %492)
  ret i32 %493
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #2

declare dso_local i32 @ComboBox_ResetContent(i32) #2

declare dso_local i32 @memset(%struct.TYPE_3__**, i32, i32) #2

declare dso_local i32 @SetAllowedFileSystems(...) #2

declare dso_local i32 @SetClusterSizeLabels(...) #2

declare dso_local i32 @static_strcat(i8*, i8*) #2

declare dso_local i8* @lmprintf(i32, i8*) #2

declare dso_local i32 @ComboBox_SetItemData(i32, i32, i32) #2

declare dso_local i32 @ComboBox_AddStringU(i32, i8*) #2

declare dso_local i64 @safe_strlen(i8*) #2

declare dso_local i64 @safe_strcmp(i8*, i8*) #2

declare dso_local i32 @ComboBox_GetCount(i32) #2

declare dso_local i64 @ComboBox_GetItemData(i32, i32) #2

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #2

declare dso_local i32 @SetComboEntry(i32, i32) #2

declare dso_local i32 @SetClusterSizes(i32) #2

declare dso_local i32 @ComboBox_GetCurSel(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
