; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_SetupWinToGo.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_SetupWinToGo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i8** }

@SetupWinToGo.unattend_path = internal global [41 x i8] c"?:\\Windows\\System32\\sysprep\\unattend.xml\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Windows To Go mode selected\00", align 1
@SelectedDrive = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FixedMedia = common dso_local global i64 0, align 8
@nWindowsBuildNumber = common dso_local global i32 0, align 4
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@image_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Could not mount ISO for Windows To Go installation\00", align 1
@ERROR_ISO_EXTRACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@img_report = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@wininst_index = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Mounted ISO as '%s'\00", align 1
@wintogo_index = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to apply Windows To Go image\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Setting up EFI System Partition\00", align 1
@partition_offset = common dso_local global i32* null, align 8
@PI_ESP = common dso_local global i64 0, align 8
@FS_FAT32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FP_QUICK = common dso_local global i32 0, align 4
@FP_FORCE = common dso_local global i32 0, align 4
@FP_LARGE_FAT32 = common dso_local global i32 0, align 4
@FP_NO_BOOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Could not format EFI System Partition\00", align 1
@ERROR_CANT_ASSIGN_LETTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"%s\\bcdboot.exe %s\\Windows /v /f %s /s %s\00", align 1
@sysnative_dir = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"UEFI\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Enabling boot using command '%s'\00", align 1
@usb_debug = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"Failed to enable boot\00", align 1
@OP_FILE_COPY = common dso_local global i32 0, align 4
@MSG_267 = common dso_local global i32 0, align 4
@wim_proc_files = common dso_local global i64 0, align 8
@wim_extra_files = common dso_local global i32 0, align 4
@wim_nb_files = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [82 x i8] c"Copying 'unattend.xml', to disable the use of the Windows Recovery Environment...\00", align 1
@hMainInstance = common dso_local global i32 0, align 4
@IDR_TOGO_UNATTEND_XML = common dso_local global i32 0, align 4
@_RT_RCDATA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"unattend.xml\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Could not write '%s'\00", align 1
@TRUE = common dso_local global i64 0, align 8
@IDR_TOGO_SAN_POLICY_XML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @SetupWinToGo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetupWinToGo(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SelectedDrive, i32 0, i32 0), align 8
  %27 = load i64, i64* @FixedMedia, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, i32* @nWindowsBuildNumber, align 4
  %31 = icmp slt i32 %30, 15000
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %34 = load i32, i32* @FACILITY_STORAGE, align 4
  %35 = call i32 @FAC(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* @FormatStatus, align 4
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %240

40:                                               ; preds = %29, %25, %3
  %41 = load i32, i32* @image_path, align 4
  %42 = call i8* @MountISO(i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %48 = load i32, i32* @FACILITY_STORAGE, align 4
  %49 = call i32 @FAC(i32 %48)
  %50 = or i32 %47, %49
  %51 = load i32, i32* @ERROR_ISO_EXTRACT, align 4
  %52 = call i32 @APPERR(i32 %51)
  %53 = or i32 %50, %52
  store i32 %53, i32* @FormatStatus, align 4
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %240

55:                                               ; preds = %40
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %57 = load i8*, i8** %8, align 8
  %58 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 8
  %59 = load i64, i64* @wininst_index, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = call i32 (i8*, i8*, i8*, i8*, ...) @static_sprintf(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* @wintogo_index, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @WimApplyImage(i8* %66, i32 %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %55
  %72 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @FormatStatus, align 4
  %74 = call i32 @IS_ERROR(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %78 = load i32, i32* @FACILITY_STORAGE, align 4
  %79 = call i32 @FAC(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32, i32* @ERROR_ISO_EXTRACT, align 4
  %82 = call i32 @APPERR(i32 %81)
  %83 = or i32 %80, %82
  store i32 %83, i32* @FormatStatus, align 4
  br label %84

84:                                               ; preds = %76, %71
  %85 = call i32 (...) @UnMountISO()
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %240

87:                                               ; preds = %55
  %88 = call i32 (...) @UnMountISO()
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SelectedDrive, i32 0, i32 1), align 8
  %94 = icmp sle i32 %93, 1024
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1024, i32* %15, align 4
  br label %103

96:                                               ; preds = %91
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SelectedDrive, i32 0, i32 1), align 8
  %98 = icmp sle i32 %97, 4096
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 4096, i32* %15, align 4
  br label %102

100:                                              ; preds = %96
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SelectedDrive, i32 0, i32 1), align 8
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %100, %99
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i64, i64* %5, align 8
  %105 = load i32*, i32** @partition_offset, align 8
  %106 = load i64, i64* @PI_ESP, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @FS_FAT32, align 4
  %111 = load i32, i32* @FP_QUICK, align 4
  %112 = load i32, i32* @FP_FORCE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @FP_LARGE_FAT32, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @FP_NO_BOOT, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @FormatPartition(i64 %104, i32 %108, i32 %109, i32 %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %103
  %121 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %240

123:                                              ; preds = %103
  %124 = call i32 @Sleep(i32 200)
  br label %125

125:                                              ; preds = %123, %87
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  %129 = load i64, i64* %5, align 8
  %130 = load i32*, i32** @partition_offset, align 8
  %131 = load i64, i64* @PI_ESP, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* @FALSE, align 8
  %135 = call i8* @AltMountVolume(i64 %129, i32 %133, i64 %134)
  store i8* %135, i8** %9, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %140 = load i32, i32* @FACILITY_STORAGE, align 4
  %141 = call i32 @FAC(i32 %140)
  %142 = or i32 %139, %141
  %143 = load i32, i32* @ERROR_CANT_ASSIGN_LETTER, align 4
  %144 = call i32 @APPERR(i32 %143)
  %145 = or i32 %142, %144
  store i32 %145, i32* @FormatStatus, align 4
  %146 = load i64, i64* @FALSE, align 8
  store i64 %146, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %240

147:                                              ; preds = %128
  br label %148

148:                                              ; preds = %147, %125
  %149 = load i32*, i32** @sysnative_dir, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = load i8*, i8** %6, align 8
  %152 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 8
  %153 = call i64 @HAS_BOOTMGR_BIOS(i8** %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @img_report, i32 0, i32 0), align 8
  %157 = call i64 @HAS_BOOTMGR_EFI(i8** %156)
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  br label %162

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %155
  %163 = phi i8* [ %160, %155 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %161 ]
  %164 = load i64, i64* %7, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i8*, i8** %9, align 8
  br label %170

168:                                              ; preds = %162
  %169 = load i8*, i8** %6, align 8
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i8* [ %167, %166 ], [ %169, %168 ]
  %172 = call i32 (i8*, i8*, i8*, i8*, ...) @static_sprintf(i8* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %150, i8* %151, i8* %163, i8* %171)
  %173 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %21)
  %174 = load i32*, i32** @sysnative_dir, align 8
  %175 = load i64, i64* @usb_debug, align 8
  %176 = call i64 @RunCommand(i8* %21, i32* %174, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %170
  %179 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %180 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %181 = load i32, i32* @FACILITY_STORAGE, align 4
  %182 = call i32 @FAC(i32 %181)
  %183 = or i32 %180, %182
  %184 = load i32, i32* @ERROR_ISO_EXTRACT, align 4
  %185 = call i32 @APPERR(i32 %184)
  %186 = or i32 %183, %185
  store i32 %186, i32* @FormatStatus, align 4
  br label %187

187:                                              ; preds = %178, %170
  %188 = load i64, i64* %7, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = call i32 @Sleep(i32 200)
  %192 = load i8*, i8** %9, align 8
  %193 = load i64, i64* @FALSE, align 8
  %194 = call i32 @AltUnmountVolume(i8* %192, i64 %193)
  br label %195

195:                                              ; preds = %190, %187
  %196 = load i32, i32* @OP_FILE_COPY, align 4
  %197 = load i32, i32* @MSG_267, align 4
  %198 = load i64, i64* @wim_proc_files, align 8
  %199 = load i32, i32* @wim_extra_files, align 4
  %200 = mul nsw i32 2, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %198, %201
  %203 = load i64, i64* @wim_nb_files, align 8
  %204 = call i32 @UpdateProgressWithInfo(i32 %196, i32 %197, i64 %202, i64 %203)
  %205 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.14, i64 0, i64 0))
  %206 = load i32, i32* @hMainInstance, align 4
  %207 = load i32, i32* @IDR_TOGO_UNATTEND_XML, align 4
  %208 = call i32 @MAKEINTRESOURCEA(i32 %207)
  %209 = load i32, i32* @_RT_RCDATA, align 4
  %210 = load i64, i64* @FALSE, align 8
  %211 = call i8* @GetResource(i32 %206, i32 %208, i32 %209, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64* %14, i64 %210)
  store i8* %211, i8** %13, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  store i8 %214, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @SetupWinToGo.unattend_path, i64 0, i64 0), align 16
  %215 = call i32* @fopenU(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @SetupWinToGo.unattend_path, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  store i32* %215, i32** %16, align 8
  %216 = load i32*, i32** %16, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %225, label %218

218:                                              ; preds = %195
  %219 = load i8*, i8** %13, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load i32*, i32** %16, align 8
  %222 = call i64 @fwrite(i8* %219, i32 1, i64 %220, i32* %221)
  %223 = load i64, i64* %14, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %218, %195
  %226 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @SetupWinToGo.unattend_path, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %218
  %228 = load i32*, i32** %16, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32*, i32** %16, align 8
  %232 = call i32 @fclose(i32* %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = load i32, i32* @OP_FILE_COPY, align 4
  %235 = load i32, i32* @MSG_267, align 4
  %236 = load i64, i64* @wim_nb_files, align 8
  %237 = load i64, i64* @wim_nb_files, align 8
  %238 = call i32 @UpdateProgressWithInfo(i32 %234, i32 %235, i64 %236, i64 %237)
  %239 = load i64, i64* @TRUE, align 8
  store i64 %239, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %240

240:                                              ; preds = %233, %138, %120, %84, %45, %32
  %241 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i64, i64* %4, align 8
  ret i64 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @FAC(i32) #2

declare dso_local i8* @MountISO(i32) #2

declare dso_local i32 @APPERR(i32) #2

declare dso_local i32 @static_sprintf(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @WimApplyImage(i8*, i32, i8*) #2

declare dso_local i32 @IS_ERROR(i32) #2

declare dso_local i32 @UnMountISO(...) #2

declare dso_local i32 @FormatPartition(i64, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i8* @AltMountVolume(i64, i32, i64) #2

declare dso_local i64 @HAS_BOOTMGR_BIOS(i8**) #2

declare dso_local i64 @HAS_BOOTMGR_EFI(i8**) #2

declare dso_local i64 @RunCommand(i8*, i32*, i64) #2

declare dso_local i32 @AltUnmountVolume(i8*, i64) #2

declare dso_local i32 @UpdateProgressWithInfo(i32, i32, i64, i64) #2

declare dso_local i8* @GetResource(i32, i32, i32, i8*, i64*, i64) #2

declare dso_local i32 @MAKEINTRESOURCEA(i32) #2

declare dso_local i32* @fopenU(i8*, i8*) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
