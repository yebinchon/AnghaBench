; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_check_iso_props.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_check_iso_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i64*, i64, i32, i8*, i8**, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8**, i8*, i8*, i8*, i8* }

@syslinux_cfg = common dso_local global i8** null, align 8
@TRUE = common dso_local global i8* null, align 8
@scan_only = common dso_local global i64 0, align 8
@config_path = common dso_local global i32 0, align 4
@efi_dirname = common dso_local global i8* null, align 8
@img_report = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@NB_OLD_C32 = common dso_local global i64 0, align 8
@old_c32_name = common dso_local global i8** null, align 8
@old_c32_threshold = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@grub_cfg = common dso_local global i8* null, align 8
@menu_cfg = common dso_local global i8* null, align 8
@ldlinux_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Skipping '%s' file from ISO image\00", align 1
@grub_dirname = common dso_local global i8* null, align 8
@ldlinux_c32 = common dso_local global i8* null, align 8
@has_ldlinux_c32 = common dso_local global i8* null, align 8
@casper_dirname = common dso_local global i8* null, align 8
@pop_os_name = common dso_local global i32 0, align 4
@bootmgr_name = common dso_local global i8* null, align 8
@bootmgr_efi_name = common dso_local global i8* null, align 8
@grldr_name = common dso_local global i8* null, align 8
@kolibri_name = common dso_local global i8* null, align 8
@manjaro_marker = common dso_local global i8* null, align 8
@reactos_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".img\00", align 1
@efi_bootname = common dso_local global i8** null, align 8
@sources_str = common dso_local global i8* null, align 8
@wininst_name = common dso_local global i8** null, align 8
@MAX_WININST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"?:%s\00", align 1
@pe_dirname = common dso_local global i8** null, align 8
@pe_file = common dso_local global i8** null, align 8
@isolinux_bin = common dso_local global i8** null, align 8
@isolinux_path = common dso_local global i32 0, align 4
@FOUR_GIGABYTES = common dso_local global i64 0, align 8
@ISO_BLOCKSIZE = common dso_local global i64 0, align 8
@total_blocks = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i8*, %struct.TYPE_6__*)* @check_iso_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_iso_props(i8* %0, i64 %1, i8* %2, i8* %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %16 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 40)
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %61, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i8**, i8*** @syslinux_cfg, align 8
  %20 = call i64 @ARRAYSIZE(i8** %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = load i8**, i8*** @syslinux_cfg, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @safe_stricmp(i8* %23, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %22
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @scan_only, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %40, 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** @TRUE, align 8
  %45 = call i32 @StrArrayAdd(i32* @config_path, i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %39, %30
  %47 = load i64, i64* @scan_only, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** @efi_dirname, align 8
  %55 = call i64 @safe_stricmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 15), align 8
  br label %59

59:                                               ; preds = %57, %52, %49, %46
  br label %60

60:                                               ; preds = %59, %22
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %17

64:                                               ; preds = %17
  store i64 0, i64* %12, align 8
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @NB_OLD_C32, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = load i8**, i8*** @old_c32_name, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @safe_stricmp(i8* %70, i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = load i64*, i64** @old_c32_threshold, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp sle i64 %78, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i8*, i8** @TRUE, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  store i8* %85, i8** %90, align 8
  br label %91

91:                                               ; preds = %84, %77, %69
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %65

95:                                               ; preds = %65
  %96 = load i64, i64* @scan_only, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %153, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @safe_strlen(i8* %99)
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %14, align 8
  %103 = icmp uge i64 %102, 4
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %14, align 8
  %107 = sub i64 %106, 4
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i64 @safe_stricmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %104
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** @grub_cfg, align 8
  %117 = call i64 @safe_stricmp(i8* %115, i8* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i8*, i8** @TRUE, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  br label %133

123:                                              ; preds = %111
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** @menu_cfg, align 8
  %126 = call i64 @safe_stricmp(i8* %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %123
  br label %133

133:                                              ; preds = %132, %119
  br label %134

134:                                              ; preds = %133, %104, %98
  %135 = load i8*, i8** %7, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** @ldlinux_name, align 8
  %146 = call i64 @safe_stricmp(i8* %144, i8* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** @TRUE, align 8
  store i8* %151, i8** %6, align 8
  br label %472

152:                                              ; preds = %143, %137, %134
  br label %470

153:                                              ; preds = %95
  %154 = load i8*, i8** %7, align 8
  %155 = load i8*, i8** @grub_dirname, align 8
  %156 = call i64 @safe_stricmp(i8* %154, i8* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i8*, i8** @TRUE, align 8
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 14), align 8
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i8*, i8** %9, align 8
  %162 = load i8*, i8** @ldlinux_c32, align 8
  %163 = call i64 @safe_stricmp(i8* %161, i8* %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** @TRUE, align 8
  store i8* %166, i8** @has_ldlinux_c32, align 8
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i8*, i8** %7, align 8
  %169 = load i8*, i8** @casper_dirname, align 8
  %170 = load i8*, i8** @casper_dirname, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = call i64 @safe_strnicmp(i8* %168, i8* %169, i32 %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %167
  %175 = load i8*, i8** @TRUE, align 8
  store i8* %175, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 13), align 8
  %176 = load i8*, i8** %7, align 8
  %177 = load i32, i32* @pop_os_name, align 4
  %178 = call i32* @safe_strstr(i8* %176, i32 %177)
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i8*, i8** @TRUE, align 8
  store i8* %181, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 8), align 8
  br label %182

182:                                              ; preds = %180, %174
  br label %183

183:                                              ; preds = %182, %167
  %184 = load i8*, i8** %7, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %236

186:                                              ; preds = %183
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %236

192:                                              ; preds = %186
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** @bootmgr_name, align 8
  %195 = call i64 @safe_stricmp(i8* %193, i8* %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i8*, i8** @TRUE, align 8
  store i8* %198, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 12), align 8
  br label %199

199:                                              ; preds = %197, %192
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** @bootmgr_efi_name, align 8
  %202 = call i64 @safe_stricmp(i8* %200, i8* %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i8*, i8** @TRUE, align 8
  store i8* %205, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 11), align 8
  br label %206

206:                                              ; preds = %204, %199
  %207 = load i8*, i8** %9, align 8
  %208 = load i8*, i8** @grldr_name, align 8
  %209 = call i64 @safe_stricmp(i8* %207, i8* %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i8*, i8** @TRUE, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 10), align 8
  br label %213

213:                                              ; preds = %211, %206
  %214 = load i8*, i8** %9, align 8
  %215 = load i8*, i8** @kolibri_name, align 8
  %216 = call i64 @safe_stricmp(i8* %214, i8* %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i8*, i8** @TRUE, align 8
  store i8* %219, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 9), align 8
  br label %220

220:                                              ; preds = %218, %213
  %221 = load i8*, i8** %9, align 8
  %222 = load i8*, i8** @bootmgr_efi_name, align 8
  %223 = call i64 @safe_stricmp(i8* %221, i8* %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %227 = or i32 %226, 1
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  br label %228

228:                                              ; preds = %225, %220
  %229 = load i8*, i8** %9, align 8
  %230 = load i8*, i8** @manjaro_marker, align 8
  %231 = call i64 @safe_stricmp(i8* %229, i8* %230)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i8*, i8** @TRUE, align 8
  store i8* %234, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 8), align 8
  br label %235

235:                                              ; preds = %233, %228
  br label %236

236:                                              ; preds = %235, %186, %183
  %237 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 1), align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %236
  %242 = load i8*, i8** %9, align 8
  %243 = load i8*, i8** @reactos_name, align 8
  %244 = call i64 @safe_stricmp(i8* %242, i8* %243)
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 1), align 8
  %248 = load i8*, i8** %10, align 8
  %249 = call i32 @static_strcpy(i64* %247, i8* %248)
  br label %250

250:                                              ; preds = %246, %241, %236
  %251 = call i32 @HAS_EFI_IMG(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 @img_report)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %274, label %253

253:                                              ; preds = %250
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 @safe_strlen(i8* %254)
  %256 = icmp sge i32 %255, 7
  br i1 %256, label %257, label %274

257:                                              ; preds = %253
  %258 = load i8*, i8** %9, align 8
  %259 = call i64 @safe_strnicmp(i8* %258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load i8*, i8** %9, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = call i32 @strlen(i8* %263)
  %265 = sub nsw i32 %264, 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %262, i64 %266
  %268 = call i64 @safe_stricmp(i8* %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %261
  %271 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 2), align 8
  %272 = load i8*, i8** %10, align 8
  %273 = call i32 @static_strcpy(i64* %271, i8* %272)
  br label %274

274:                                              ; preds = %270, %261, %257, %253, %250
  %275 = load i8*, i8** %7, align 8
  %276 = load i8*, i8** @efi_dirname, align 8
  %277 = call i64 @safe_stricmp(i8* %275, i8* %276)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %274
  store i64 0, i64* %12, align 8
  br label %280

280:                                              ; preds = %300, %279
  %281 = load i64, i64* %12, align 8
  %282 = load i8**, i8*** @efi_bootname, align 8
  %283 = call i64 @ARRAYSIZE(i8** %282)
  %284 = icmp ult i64 %281, %283
  br i1 %284, label %285, label %303

285:                                              ; preds = %280
  %286 = load i8*, i8** %9, align 8
  %287 = load i8**, i8*** @efi_bootname, align 8
  %288 = load i64, i64* %12, align 8
  %289 = getelementptr inbounds i8*, i8** %287, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @safe_stricmp(i8* %286, i8* %290)
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load i64, i64* %12, align 8
  %295 = trunc i64 %294 to i32
  %296 = shl i32 2, %295
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %298 = or i32 %297, %296
  store i32 %298, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  br label %299

299:                                              ; preds = %293, %285
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %12, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %12, align 8
  br label %280

303:                                              ; preds = %280
  br label %304

304:                                              ; preds = %303, %274
  %305 = load i8*, i8** %7, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %353

307:                                              ; preds = %304
  %308 = load i8*, i8** %7, align 8
  %309 = load i8*, i8** %7, align 8
  %310 = call i32 @safe_strlen(i8* %309)
  %311 = load i8*, i8** @sources_str, align 8
  %312 = call i32 @strlen(i8* %311)
  %313 = sub nsw i32 %310, %312
  %314 = call i64 @max(i32 0, i32 %313)
  %315 = getelementptr inbounds i8, i8* %308, i64 %314
  %316 = load i8*, i8** @sources_str, align 8
  %317 = call i64 @safe_stricmp(i8* %315, i8* %316)
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %352

319:                                              ; preds = %307
  store i64 0, i64* %12, align 8
  br label %320

320:                                              ; preds = %348, %319
  %321 = load i64, i64* %12, align 8
  %322 = load i8**, i8*** @wininst_name, align 8
  %323 = call i64 @ARRAYSIZE(i8** %322)
  %324 = icmp ult i64 %321, %323
  br i1 %324, label %325, label %351

325:                                              ; preds = %320
  %326 = load i8*, i8** %9, align 8
  %327 = load i8**, i8*** @wininst_name, align 8
  %328 = load i64, i64* %12, align 8
  %329 = getelementptr inbounds i8*, i8** %327, i64 %328
  %330 = load i8*, i8** %329, align 8
  %331 = call i64 @safe_stricmp(i8* %326, i8* %330)
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %347

333:                                              ; preds = %325
  %334 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 3), align 8
  %335 = load i64, i64* @MAX_WININST, align 8
  %336 = icmp ult i64 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %333
  %338 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 7), align 8
  %339 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 3), align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i8*, i8** %10, align 8
  %343 = call i32 @static_sprintf(i32 %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %342)
  %344 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 3), align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 3), align 8
  br label %346

346:                                              ; preds = %337, %333
  br label %347

347:                                              ; preds = %346, %325
  br label %348

348:                                              ; preds = %347
  %349 = load i64, i64* %12, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %12, align 8
  br label %320

351:                                              ; preds = %320
  br label %352

352:                                              ; preds = %351, %307
  br label %353

353:                                              ; preds = %352, %304
  store i64 0, i64* %12, align 8
  br label %354

354:                                              ; preds = %399, %353
  %355 = load i64, i64* %12, align 8
  %356 = load i8**, i8*** @pe_dirname, align 8
  %357 = call i64 @ARRAYSIZE(i8** %356)
  %358 = icmp ult i64 %355, %357
  br i1 %358, label %359, label %402

359:                                              ; preds = %354
  %360 = load i8*, i8** %7, align 8
  %361 = load i8**, i8*** @pe_dirname, align 8
  %362 = load i64, i64* %12, align 8
  %363 = getelementptr inbounds i8*, i8** %361, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = call i64 @safe_stricmp(i8* %360, i8* %364)
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %398

367:                                              ; preds = %359
  store i64 0, i64* %13, align 8
  br label %368

368:                                              ; preds = %394, %367
  %369 = load i64, i64* %13, align 8
  %370 = load i8**, i8*** @pe_file, align 8
  %371 = call i64 @ARRAYSIZE(i8** %370)
  %372 = icmp ult i64 %369, %371
  br i1 %372, label %373, label %397

373:                                              ; preds = %368
  %374 = load i8*, i8** %9, align 8
  %375 = load i8**, i8*** @pe_file, align 8
  %376 = load i64, i64* %13, align 8
  %377 = getelementptr inbounds i8*, i8** %375, i64 %376
  %378 = load i8*, i8** %377, align 8
  %379 = call i64 @safe_stricmp(i8* %374, i8* %378)
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %381, label %393

381:                                              ; preds = %373
  %382 = load i64, i64* %13, align 8
  %383 = trunc i64 %382 to i32
  %384 = shl i32 1, %383
  %385 = load i8**, i8*** @pe_dirname, align 8
  %386 = call i64 @ARRAYSIZE(i8** %385)
  %387 = load i64, i64* %12, align 8
  %388 = mul i64 %386, %387
  %389 = trunc i64 %388 to i32
  %390 = shl i32 %384, %389
  %391 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 4), align 8
  %392 = or i32 %391, %390
  store i32 %392, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 4), align 8
  br label %393

393:                                              ; preds = %381, %373
  br label %394

394:                                              ; preds = %393
  %395 = load i64, i64* %13, align 8
  %396 = add i64 %395, 1
  store i64 %396, i64* %13, align 8
  br label %368

397:                                              ; preds = %368
  br label %398

398:                                              ; preds = %397, %359
  br label %399

399:                                              ; preds = %398
  %400 = load i64, i64* %12, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %12, align 8
  br label %354

402:                                              ; preds = %354
  store i64 0, i64* %12, align 8
  br label %403

403:                                              ; preds = %421, %402
  %404 = load i64, i64* %12, align 8
  %405 = load i8**, i8*** @isolinux_bin, align 8
  %406 = call i64 @ARRAYSIZE(i8** %405)
  %407 = icmp ult i64 %404, %406
  br i1 %407, label %408, label %424

408:                                              ; preds = %403
  %409 = load i8*, i8** %9, align 8
  %410 = load i8**, i8*** @isolinux_bin, align 8
  %411 = load i64, i64* %12, align 8
  %412 = getelementptr inbounds i8*, i8** %410, i64 %411
  %413 = load i8*, i8** %412, align 8
  %414 = call i64 @safe_stricmp(i8* %409, i8* %413)
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %408
  %417 = load i8*, i8** %10, align 8
  %418 = load i8*, i8** @TRUE, align 8
  %419 = call i32 @StrArrayAdd(i32* @isolinux_path, i8* %417, i8* %418)
  br label %420

420:                                              ; preds = %416, %408
  br label %421

421:                                              ; preds = %420
  %422 = load i64, i64* %12, align 8
  %423 = add i64 %422, 1
  store i64 %423, i64* %12, align 8
  br label %403

424:                                              ; preds = %403
  store i64 0, i64* %12, align 8
  br label %425

425:                                              ; preds = %443, %424
  %426 = load i64, i64* %12, align 8
  %427 = load i64, i64* @NB_OLD_C32, align 8
  %428 = icmp ult i64 %426, %427
  br i1 %428, label %429, label %446

429:                                              ; preds = %425
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i8**, i8*** %431, align 8
  %433 = load i64, i64* %12, align 8
  %434 = getelementptr inbounds i8*, i8** %432, i64 %433
  %435 = load i8*, i8** %434, align 8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %429
  %438 = load i8*, i8** @TRUE, align 8
  %439 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 6), align 8
  %440 = load i64, i64* %12, align 8
  %441 = getelementptr inbounds i8*, i8** %439, i64 %440
  store i8* %438, i8** %441, align 8
  br label %442

442:                                              ; preds = %437, %429
  br label %443

443:                                              ; preds = %442
  %444 = load i64, i64* %12, align 8
  %445 = add i64 %444, 1
  store i64 %445, i64* %12, align 8
  br label %425

446:                                              ; preds = %425
  %447 = load i64, i64* %8, align 8
  %448 = load i64, i64* @FOUR_GIGABYTES, align 8
  %449 = icmp sge i64 %447, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %446
  %451 = load i8*, i8** @TRUE, align 8
  store i8* %451, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 5), align 8
  br label %452

452:                                              ; preds = %450, %446
  %453 = load i64, i64* %8, align 8
  %454 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %455 = sdiv i64 %453, %454
  %456 = load i64, i64* @total_blocks, align 8
  %457 = add nsw i64 %456, %455
  store i64 %457, i64* @total_blocks, align 8
  %458 = load i64, i64* %8, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %468

460:                                              ; preds = %452
  %461 = load i64, i64* %8, align 8
  %462 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %463 = srem i64 %461, %462
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %460
  %466 = load i64, i64* @total_blocks, align 8
  %467 = add nsw i64 %466, 1
  store i64 %467, i64* @total_blocks, align 8
  br label %468

468:                                              ; preds = %465, %460, %452
  %469 = load i8*, i8** @TRUE, align 8
  store i8* %469, i8** %6, align 8
  br label %472

470:                                              ; preds = %152
  %471 = load i8*, i8** @FALSE, align 8
  store i8* %471, i8** %6, align 8
  br label %472

472:                                              ; preds = %470, %468, %148
  %473 = load i8*, i8** %6, align 8
  ret i8* %473
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @ARRAYSIZE(i8**) #1

declare dso_local i64 @safe_stricmp(i8*, i8*) #1

declare dso_local i32 @StrArrayAdd(i32*, i8*, i8*) #1

declare dso_local i32 @safe_strlen(i8*) #1

declare dso_local i32 @uprintf(i8*, i8*) #1

declare dso_local i64 @safe_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @safe_strstr(i8*, i32) #1

declare dso_local i32 @static_strcpy(i64*, i8*) #1

declare dso_local i32 @HAS_EFI_IMG(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @static_sprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
