; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetPartitionSchemeAndTargetSystem.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_rufus.c_SetPartitionSchemeAndTargetSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hPartitionScheme = common dso_local global i32 0, align 4
@hTargetSystem = common dso_local global i32 0, align 4
@hBootType = common dso_local global i32 0, align 4
@boot_type = common dso_local global i32 0, align 4
@image_path = common dso_local global i32* null, align 8
@img_report = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@hMainDialog = common dso_local global i32 0, align 4
@IDC_IMAGE_OPTION = common dso_local global i32 0, align 4
@hDeviceList = common dso_local global i32 0, align 4
@PARTITION_STYLE_SFD = common dso_local global i64 0, align 8
@PARTITION_STYLE_GPT = common dso_local global i64 0, align 8
@allow_dual_uefi_bios = common dso_local global i64 0, align 8
@SelectedDrive = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TB = common dso_local global i32 0, align 4
@selected_pt = common dso_local global i64 0, align 8
@PARTITION_STYLE_MBR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"MBR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GPT\00", align 1
@sfd_name = common dso_local global i8* null, align 8
@partition_type = common dso_local global i64 0, align 8
@has_uefi_csm = common dso_local global i32 0, align 4
@MSG_031 = common dso_local global i32 0, align 4
@TT_BIOS = common dso_local global i64 0, align 8
@MSG_032 = common dso_local global i32 0, align 4
@TT_UEFI = common dso_local global i64 0, align 8
@MSG_033 = common dso_local global i32 0, align 4
@target_type = common dso_local global i32 0, align 4
@UM_UPDATE_CSM_TOOLTIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SetPartitionSchemeAndTargetSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetPartitionSchemeAndTargetSystem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @hPartitionScheme, align 4
  %23 = call i32 @ComboBox_ResetContent(i32 %22)
  %24 = call i32 @IGNORE_RETVAL(i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @hTargetSystem, align 4
  %27 = call i32 @ComboBox_ResetContent(i32 %26)
  %28 = call i32 @IGNORE_RETVAL(i32 %27)
  %29 = load i32, i32* @hBootType, align 4
  %30 = load i32, i32* @hBootType, align 4
  %31 = call i32 @ComboBox_GetCurSel(i32 %30)
  %32 = call i64 @ComboBox_GetItemData(i32 %29, i32 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @boot_type, align 4
  %34 = load i32, i32* @boot_type, align 4
  %35 = icmp eq i32 %34, 134
  br i1 %35, label %36, label %48

36:                                               ; preds = %25
  %37 = load i32*, i32** @image_path, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = call i64 @HAS_WINTOGO(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @hMainDialog, align 4
  %44 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %45 = call i32 @GetDlgItem(i32 %43, i32 %44)
  %46 = call i32 @ComboBox_GetCurSel(i32 %45)
  %47 = icmp eq i32 %46, 1
  br label %48

48:                                               ; preds = %42, %39, %36, %25
  %49 = phi i1 [ false, %39 ], [ false, %36 ], [ false, %25 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @hDeviceList, align 4
  %52 = call i32 @ComboBox_GetCurSel(i32 %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %322

55:                                               ; preds = %48
  %56 = load i32, i32* @boot_type, align 4
  switch i32 %56, label %113 [
    i32 132, label %57
    i32 134, label %67
    i32 133, label %104
    i32 137, label %104
    i32 130, label %104
    i32 129, label %104
    i32 131, label %104
    i32 135, label %104
    i32 136, label %104
    i32 128, label %110
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @TRUE, align 4
  %59 = load i64, i64* @PARTITION_STYLE_SFD, align 8
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %65, i32* %66, align 4
  br label %113

67:                                               ; preds = %55
  %68 = load i32*, i32** @image_path, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %113

71:                                               ; preds = %67
  %72 = call i64 @IS_EFI_BOOTABLE(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %76
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  br label %113

80:                                               ; preds = %71
  %81 = call i64 @IS_BIOS_BOOTABLE(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = call i64 @HAS_WINDOWS(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i64, i64* @allow_dual_uefi_bios, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89, %86, %83
  %93 = load i32, i32* @FALSE, align 4
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @TRUE, align 4
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %89
  br label %103

100:                                              ; preds = %80
  %101 = load i32, i32* @FALSE, align 4
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %99
  br label %113

104:                                              ; preds = %55, %55, %55, %55, %55, %55, %55
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %106
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %108, i32* %109, align 4
  br label %113

110:                                              ; preds = %55
  %111 = load i32, i32* @FALSE, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %55, %110, %104, %103, %74, %70, %57
  %114 = load i32, i32* %2, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %245, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @SelectedDrive, i32 0, i32 0), align 4
  %118 = load i32, i32* @TB, align 4
  %119 = mul nsw i32 2, %118
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  store i64 %122, i64* @selected_pt, align 8
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @SelectedDrive, i32 0, i32 1), align 4
  store i32 %124, i32* %6, align 4
  %125 = load i64, i64* @PARTITION_STYLE_MBR, align 8
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i32, i32* @hPartitionScheme, align 4
  %131 = load i32, i32* @hPartitionScheme, align 4
  %132 = call i32 @ComboBox_AddStringU(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %133 = load i64, i64* @PARTITION_STYLE_MBR, align 8
  %134 = call i32 @ComboBox_SetItemData(i32 %130, i32 %132, i64 %133)
  %135 = call i32 @IGNORE_RETVAL(i32 %134)
  br label %136

136:                                              ; preds = %129, %123
  %137 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32, i32* @hPartitionScheme, align 4
  %143 = load i32, i32* @hPartitionScheme, align 4
  %144 = call i32 @ComboBox_AddStringU(i32 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %146 = call i32 @ComboBox_SetItemData(i32 %142, i32 %144, i64 %145)
  %147 = call i32 @IGNORE_RETVAL(i32 %146)
  br label %148

148:                                              ; preds = %141, %136
  %149 = load i64, i64* @PARTITION_STYLE_SFD, align 8
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* @hPartitionScheme, align 4
  %155 = load i32, i32* @hPartitionScheme, align 4
  %156 = load i8*, i8** @sfd_name, align 8
  %157 = call i32 @ComboBox_AddStringU(i32 %155, i8* %156)
  %158 = load i64, i64* @PARTITION_STYLE_SFD, align 8
  %159 = call i32 @ComboBox_SetItemData(i32 %154, i32 %157, i64 %158)
  %160 = call i32 @IGNORE_RETVAL(i32 %159)
  br label %161

161:                                              ; preds = %153, %148
  %162 = load i32, i32* @boot_type, align 4
  %163 = icmp eq i32 %162, 132
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load i64, i64* @selected_pt, align 8
  %166 = icmp uge i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i64, i64* @selected_pt, align 8
  br label %171

169:                                              ; preds = %164
  %170 = load i64, i64* @PARTITION_STYLE_MBR, align 8
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i64 [ %168, %167 ], [ %170, %169 ]
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  br label %235

174:                                              ; preds = %161
  %175 = load i32, i32* @boot_type, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i64, i64* @selected_pt, align 8
  %179 = icmp uge i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i64, i64* @selected_pt, align 8
  br label %184

182:                                              ; preds = %177
  %183 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i64 [ %181, %180 ], [ %183, %182 ]
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %6, align 4
  br label %234

187:                                              ; preds = %174
  %188 = load i32, i32* @boot_type, align 4
  %189 = icmp eq i32 %188, 134
  br i1 %189, label %190, label %233

190:                                              ; preds = %187
  %191 = load i32*, i32** @image_path, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %233

193:                                              ; preds = %190
  %194 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 2), align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %233

196:                                              ; preds = %193
  %197 = call i64 @HAS_WINDOWS(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %196
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 1), align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load i64, i64* @allow_dual_uefi_bios, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i64, i64* @PARTITION_STYLE_MBR, align 8
  br label %216

207:                                              ; preds = %202
  %208 = load i64, i64* @selected_pt, align 8
  %209 = icmp uge i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load i64, i64* @selected_pt, align 8
  br label %214

212:                                              ; preds = %207
  %213 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i64 [ %211, %210 ], [ %213, %212 ]
  br label %216

216:                                              ; preds = %214, %205
  %217 = phi i64 [ %206, %205 ], [ %215, %214 ]
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %216, %199, %196
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %219
  %223 = load i64, i64* @selected_pt, align 8
  %224 = icmp uge i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i64, i64* @selected_pt, align 8
  br label %229

227:                                              ; preds = %222
  %228 = load i64, i64* @PARTITION_STYLE_MBR, align 8
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i64 [ %226, %225 ], [ %228, %227 ]
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %229, %219
  br label %233

233:                                              ; preds = %232, %193, %190, %187
  br label %234

234:                                              ; preds = %233, %184
  br label %235

235:                                              ; preds = %234, %171
  %236 = load i32, i32* @hPartitionScheme, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @SetComboEntry(i32 %236, i32 %237)
  %239 = load i32, i32* @hPartitionScheme, align 4
  %240 = load i32, i32* @hPartitionScheme, align 4
  %241 = call i32 @ComboBox_GetCurSel(i32 %240)
  %242 = call i64 @ComboBox_GetItemData(i32 %239, i32 %241)
  %243 = trunc i64 %242 to i32
  %244 = sext i32 %243 to i64
  store i64 %244, i64* @partition_type, align 8
  br label %245

245:                                              ; preds = %235, %113
  %246 = load i32, i32* @FALSE, align 4
  store i32 %246, i32* @has_uefi_csm, align 4
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %245
  %251 = load i64, i64* @partition_type, align 8
  %252 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %250
  %255 = load i32, i32* @hTargetSystem, align 4
  %256 = load i32, i32* @hTargetSystem, align 4
  %257 = load i32, i32* @MSG_031, align 4
  %258 = call i8* @lmprintf(i32 %257)
  %259 = call i32 @ComboBox_AddStringU(i32 %256, i8* %258)
  %260 = load i64, i64* @TT_BIOS, align 8
  %261 = call i32 @ComboBox_SetItemData(i32 %255, i32 %259, i64 %260)
  %262 = call i32 @IGNORE_RETVAL(i32 %261)
  %263 = load i32, i32* @TRUE, align 4
  store i32 %263, i32* @has_uefi_csm, align 4
  br label %264

264:                                              ; preds = %254, %250, %245
  %265 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = load i64, i64* @partition_type, align 8
  %270 = load i64, i64* @PARTITION_STYLE_MBR, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %268
  %273 = load i32, i32* @boot_type, align 4
  %274 = icmp eq i32 %273, 134
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = call i64 @IS_BIOS_BOOTABLE(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = call i64 @IS_EFI_BOOTABLE(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %278, %275, %272, %268
  %282 = load i32, i32* @hTargetSystem, align 4
  %283 = load i32, i32* @hTargetSystem, align 4
  %284 = load i32, i32* @MSG_032, align 4
  %285 = call i8* @lmprintf(i32 %284)
  %286 = call i32 @ComboBox_AddStringU(i32 %283, i8* %285)
  %287 = load i64, i64* @TT_UEFI, align 8
  %288 = call i32 @ComboBox_SetItemData(i32 %282, i32 %286, i64 %287)
  %289 = call i32 @IGNORE_RETVAL(i32 %288)
  br label %290

290:                                              ; preds = %281, %278, %264
  %291 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %310

294:                                              ; preds = %290
  %295 = load i64, i64* @partition_type, align 8
  %296 = load i64, i64* @PARTITION_STYLE_GPT, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %301, label %298

298:                                              ; preds = %294
  %299 = load i32, i32* @boot_type, align 4
  %300 = icmp eq i32 %299, 132
  br i1 %300, label %301, label %310

301:                                              ; preds = %298, %294
  %302 = load i32, i32* @hTargetSystem, align 4
  %303 = load i32, i32* @hTargetSystem, align 4
  %304 = load i32, i32* @MSG_033, align 4
  %305 = call i8* @lmprintf(i32 %304)
  %306 = call i32 @ComboBox_AddStringU(i32 %303, i8* %305)
  %307 = load i64, i64* @TT_BIOS, align 8
  %308 = call i32 @ComboBox_SetItemData(i32 %302, i32 %306, i64 %307)
  %309 = call i32 @IGNORE_RETVAL(i32 %308)
  br label %310

310:                                              ; preds = %301, %298, %290
  %311 = load i32, i32* @hTargetSystem, align 4
  %312 = call i32 @ComboBox_SetCurSel(i32 %311, i32 0)
  %313 = call i32 @IGNORE_RETVAL(i32 %312)
  %314 = load i32, i32* @hTargetSystem, align 4
  %315 = load i32, i32* @hTargetSystem, align 4
  %316 = call i32 @ComboBox_GetCurSel(i32 %315)
  %317 = call i64 @ComboBox_GetItemData(i32 %314, i32 %316)
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* @target_type, align 4
  %319 = load i32, i32* @hMainDialog, align 4
  %320 = load i32, i32* @UM_UPDATE_CSM_TOOLTIP, align 4
  %321 = call i32 @SendMessage(i32 %319, i32 %320, i32 0, i32 0)
  br label %322

322:                                              ; preds = %310, %54
  ret void
}

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @ComboBox_ResetContent(i32) #1

declare dso_local i64 @ComboBox_GetItemData(i32, i32) #1

declare dso_local i32 @ComboBox_GetCurSel(i32) #1

declare dso_local i64 @HAS_WINTOGO(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @IS_EFI_BOOTABLE(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i64 @IS_BIOS_BOOTABLE(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i64 @HAS_WINDOWS(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @ComboBox_SetItemData(i32, i32, i64) #1

declare dso_local i32 @ComboBox_AddStringU(i32, i8*) #1

declare dso_local i32 @SetComboEntry(i32, i32) #1

declare dso_local i8* @lmprintf(i32) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
