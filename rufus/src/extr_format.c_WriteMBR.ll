; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_WriteMBR.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_WriteMBR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Using %s MBR\00", align 1
@SelectedDrive = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@partition_type = common dso_local global i64 0, align 8
@PARTITION_STYLE_GPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Rufus protective\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not allocate memory for MBR\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Could not read MBR\0A\00", align 1
@ERROR_READ_FAULT = common dso_local global i32 0, align 4
@hFileSystem = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Partition is already FAT16 LBA...\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Warning: converting a non FAT16 partition to FAT16 LBA: FS type=0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Partition is already FAT32 LBA...\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Warning: converting a non FAT32 partition to FAT32 LBA: FS type=0x%02x\0A\00", align 1
@boot_type = common dso_local global i64 0, align 8
@BT_NON_BOOTABLE = common dso_local global i64 0, align 8
@target_type = common dso_local global i64 0, align 8
@TT_BIOS = common dso_local global i64 0, align 8
@IDC_RUFUS_MBR = common dso_local global i32 0, align 4
@hDiskID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Set bootable USB partition as 0x%02X\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Could not write MBR\0A\00", align 1
@ERROR_WRITE_FAULT = common dso_local global i32 0, align 4
@BT_IMAGE = common dso_local global i64 0, align 8
@img_report = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@allow_dual_uefi_bios = common dso_local global i64 0, align 8
@TT_UEFI = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"Zeroed\00", align 1
@BT_SYSLINUX_V4 = common dso_local global i64 0, align 8
@BT_SYSLINUX_V6 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"Syslinux\00", align 1
@BT_GRUB2 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"Grub 2.0\00", align 1
@BT_GRUB4DOS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"Grub4DOS\00", align 1
@BT_REACTOS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"ReactOS\00", align 1
@fs_type = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"KolibriOS\00", align 1
@APPLICATION_NAME = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"Windows 7\00", align 1
@IOCTL_DISK_UPDATE_PROPERTIES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [58 x i8] c"Failed to notify system about disk properties update: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @WriteMBR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteMBR(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  store i8* null, i8** %5, align 8
  %10 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = bitcast %struct.TYPE_8__* %6 to i32*
  store i32* %11, i32** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SelectedDrive, i32 0, i32 0), align 4
  %13 = icmp slt i32 %12, 512
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %300

15:                                               ; preds = %1
  %16 = load i64, i64* @partition_type, align 8
  %17 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SelectedDrive, i32 0, i32 0), align 4
  %24 = call i32 @set_bytes_per_sector(i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 (i8*, ...) @uprintf(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @write_rufus_gpt_mbr(i32* %27)
  store i32 %28, i32* %3, align 4
  br label %291

29:                                               ; preds = %15
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SelectedDrive, i32 0, i32 0), align 4
  %31 = call i64 @_mm_malloc(i32 %30, i32 16)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %38 = load i32, i32* @FACILITY_STORAGE, align 4
  %39 = call i32 @FAC(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* @FormatStatus, align 4
  br label %300

43:                                               ; preds = %29
  %44 = load i64, i64* %2, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SelectedDrive, i32 0, i32 0), align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @read_sectors(i64 %44, i32 %45, i32 0, i32 1, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %52 = load i32, i32* @FACILITY_STORAGE, align 4
  %53 = call i32 @FAC(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @ERROR_READ_FAULT, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* @FormatStatus, align 4
  br label %300

57:                                               ; preds = %43
  %58 = load i32, i32* @hFileSystem, align 4
  %59 = load i32, i32* @hFileSystem, align 4
  %60 = call i32 @ComboBox_GetCurSel(i32 %59)
  %61 = call i32 @ComboBox_GetItemData(i32 %58, i32 %60)
  switch i32 %61, label %116 [
    i32 129, label %62
    i32 128, label %92
  ]

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 450
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 14
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %89

70:                                               ; preds = %62
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 450
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 4
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 450
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 6
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 450
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %76, %70
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 450
  store i8 14, i8* %91, align 1
  br label %116

92:                                               ; preds = %57
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 450
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 12
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %113

100:                                              ; preds = %92
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 450
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 11
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 450
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 450
  store i8 12, i8* %115, align 1
  br label %116

116:                                              ; preds = %57, %113, %89
  %117 = load i64, i64* @boot_type, align 8
  %118 = load i64, i64* @BT_NON_BOOTABLE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i64, i64* @target_type, align 8
  %122 = load i64, i64* @TT_BIOS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load i32, i32* @IDC_RUFUS_MBR, align 4
  %126 = call i64 @IsChecked(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i32, i32* @hDiskID, align 4
  %130 = load i32, i32* @hDiskID, align 4
  %131 = call i32 @ComboBox_GetCurSel(i32 %130)
  %132 = call i32 @ComboBox_GetItemData(i32 %129, i32 %131)
  br label %134

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %128
  %135 = phi i32 [ %132, %128 ], [ 128, %133 ]
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 446
  store i8 %136, i8* %138, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 446
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %134, %120, %116
  %145 = load i64, i64* %2, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SelectedDrive, i32 0, i32 0), align 4
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @write_sectors(i64 %145, i32 %146, i32 0, i32 1, i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %153 = load i32, i32* @FACILITY_STORAGE, align 4
  %154 = call i32 @FAC(i32 %153)
  %155 = or i32 %152, %154
  %156 = load i32, i32* @ERROR_WRITE_FAULT, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* @FormatStatus, align 4
  br label %300

158:                                              ; preds = %144
  %159 = load i64, i64* %2, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* %160, i8** %161, align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SelectedDrive, i32 0, i32 0), align 4
  %163 = call i32 @set_bytes_per_sector(i32 %162)
  %164 = load i64, i64* @boot_type, align 8
  %165 = load i64, i64* @BT_IMAGE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = call i64 @HAS_WINDOWS(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @img_report)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i64, i64* @allow_dual_uefi_bios, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i64, i64* @target_type, align 8
  %175 = load i64, i64* @TT_BIOS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %269

178:                                              ; preds = %173, %170, %167, %158
  %179 = load i64, i64* @boot_type, align 8
  %180 = load i64, i64* @BT_NON_BOOTABLE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* @target_type, align 8
  %184 = load i64, i64* @TT_UEFI, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %182, %178
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i8*, ...) @uprintf(i8* %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @write_zero_mbr(i32* %189)
  store i32 %190, i32* %3, align 4
  br label %291

191:                                              ; preds = %182
  %192 = load i64, i64* @boot_type, align 8
  %193 = load i64, i64* @BT_SYSLINUX_V4, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %206, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* @boot_type, align 8
  %197 = load i64, i64* @BT_SYSLINUX_V6, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %206, label %199

199:                                              ; preds = %195
  %200 = load i64, i64* @boot_type, align 8
  %201 = load i64, i64* @BT_IMAGE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = call i64 @HAS_SYSLINUX(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @img_report)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203, %195, %191
  %207 = load i8*, i8** %8, align 8
  %208 = call i32 (i8*, ...) @uprintf(i8* %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @write_syslinux_mbr(i32* %209)
  store i32 %210, i32* %3, align 4
  br label %291

211:                                              ; preds = %203, %199
  %212 = load i64, i64* @boot_type, align 8
  %213 = load i64, i64* @BT_IMAGE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 2), align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %215, %211
  %219 = load i64, i64* @boot_type, align 8
  %220 = load i64, i64* @BT_GRUB2, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218, %215
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 (i8*, ...) @uprintf(i8* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @write_grub2_mbr(i32* %225)
  store i32 %226, i32* %3, align 4
  br label %291

227:                                              ; preds = %218
  %228 = load i64, i64* @boot_type, align 8
  %229 = load i64, i64* @BT_IMAGE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 1), align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231, %227
  %235 = load i64, i64* @boot_type, align 8
  %236 = load i64, i64* @BT_GRUB4DOS, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234, %231
  %239 = load i8*, i8** %8, align 8
  %240 = call i32 (i8*, ...) @uprintf(i8* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %241 = load i32*, i32** %7, align 8
  %242 = call i32 @write_grub4dos_mbr(i32* %241)
  store i32 %242, i32* %3, align 4
  br label %291

243:                                              ; preds = %234
  %244 = load i64, i64* @boot_type, align 8
  %245 = load i64, i64* @BT_REACTOS, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  %248 = load i8*, i8** %8, align 8
  %249 = call i32 (i8*, ...) @uprintf(i8* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @write_reactos_mbr(i32* %250)
  store i32 %251, i32* %3, align 4
  br label %291

252:                                              ; preds = %243
  %253 = load i64, i64* @boot_type, align 8
  %254 = load i64, i64* @BT_IMAGE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = call i64 @HAS_KOLIBRIOS(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @img_report)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %256
  %260 = load i32, i32* @fs_type, align 4
  %261 = call i64 @IS_FAT(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load i8*, i8** %8, align 8
  %265 = call i32 (i8*, ...) @uprintf(i8* %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %266 = load i32*, i32** %7, align 8
  %267 = call i32 @write_kolibrios_mbr(i32* %266)
  store i32 %267, i32* %3, align 4
  br label %291

268:                                              ; preds = %259, %256, %252
  br label %269

269:                                              ; preds = %268, %177
  %270 = call i64 @HAS_WINPE(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @img_report)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @img_report, i32 0, i32 0), align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272, %269
  %276 = load i32, i32* @IDC_RUFUS_MBR, align 4
  %277 = call i64 @IsChecked(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %275, %272
  %280 = load i8*, i8** %8, align 8
  %281 = load i8*, i8** @APPLICATION_NAME, align 8
  %282 = call i32 (i8*, ...) @uprintf(i8* %280, i8* %281)
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @write_rufus_mbr(i32* %283)
  store i32 %284, i32* %3, align 4
  br label %290

285:                                              ; preds = %275
  %286 = load i8*, i8** %8, align 8
  %287 = call i32 (i8*, ...) @uprintf(i8* %286, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %288 = load i32*, i32** %7, align 8
  %289 = call i32 @write_win7_mbr(i32* %288)
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %285, %279
  br label %291

291:                                              ; preds = %290, %263, %247, %238, %222, %206, %186, %19
  %292 = load i64, i64* %2, align 8
  %293 = load i32, i32* @IOCTL_DISK_UPDATE_PROPERTIES, align 4
  %294 = call i32 @DeviceIoControl(i64 %292, i32 %293, i32* null, i32 0, i32* null, i32 0, i32* %4, i32* null)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %291
  %297 = call i8* (...) @WindowsErrorString()
  %298 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i8* %297)
  br label %299

299:                                              ; preds = %296, %291
  br label %300

300:                                              ; preds = %299, %150, %49, %35, %14
  %301 = load i8*, i8** %5, align 8
  %302 = call i32 @safe_mm_free(i8* %301)
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_bytes_per_sector(i32) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @write_rufus_gpt_mbr(i32*) #2

declare dso_local i64 @_mm_malloc(i32, i32) #2

declare dso_local i32 @FAC(i32) #2

declare dso_local i32 @read_sectors(i64, i32, i32, i32, i8*) #2

declare dso_local i32 @ComboBox_GetItemData(i32, i32) #2

declare dso_local i32 @ComboBox_GetCurSel(i32) #2

declare dso_local i64 @IsChecked(i32) #2

declare dso_local i32 @write_sectors(i64, i32, i32, i32, i8*) #2

declare dso_local i64 @HAS_WINDOWS(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

declare dso_local i32 @write_zero_mbr(i32*) #2

declare dso_local i64 @HAS_SYSLINUX(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

declare dso_local i32 @write_syslinux_mbr(i32*) #2

declare dso_local i32 @write_grub2_mbr(i32*) #2

declare dso_local i32 @write_grub4dos_mbr(i32*) #2

declare dso_local i32 @write_reactos_mbr(i32*) #2

declare dso_local i64 @HAS_KOLIBRIOS(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

declare dso_local i64 @IS_FAT(i32) #2

declare dso_local i32 @write_kolibrios_mbr(i32*) #2

declare dso_local i64 @HAS_WINPE(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

declare dso_local i32 @write_rufus_mbr(i32*) #2

declare dso_local i32 @write_win7_mbr(i32*) #2

declare dso_local i32 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i8* @WindowsErrorString(...) #2

declare dso_local i32 @safe_mm_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
