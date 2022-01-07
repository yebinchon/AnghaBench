; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_media_info.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_media_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { i32 }

@cd_media_info.media_status = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"appendable\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"READ DISC INFORMATION\00", align 1
@cd_media = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"disk type %02x\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"hardware reported media status: %s\00", align 1
@cd_media_cd_rom = common dso_local global i32 0, align 4
@cd_media_state = common dso_local global i8* null, align 8
@cd_media_dvd_rw_ro = common dso_local global i64 0, align 8
@cd_media_dvd_plus_rw = common dso_local global i64 0, align 8
@cd_media_dvd_plus_rw_dl = common dso_local global i64 0, align 8
@cd_media_dvd_ram = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"READ DVD STRUCTURE\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"write-protected DVD-RAM media inserted\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"READ DVD FORMAT CAPACITIES\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"invalid format capacities length\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"unformatted DVD-RAM media inserted\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"formatted DVD-RAM media inserted\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"format capacities returned no media\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"READ FIRST 32 BLOCKS\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"data in block 16, assuming complete\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"data in block 0, assuming complete\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"no data in blocks 0 or 16, assuming blank\00", align 1
@cd_media_session_next = common dso_local global i8 0, align 1
@cd_media_session_count = common dso_local global i8 0, align 1
@cd_media_track_count = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cd_media_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd_media_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmd, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [65536 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca [12 x i8], align 1
  store i32 %0, i32* %3, align 4
  %12 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %13 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 81)
  %14 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 32)
  %15 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %18 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %16, i8* %17, i32 32)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %2, align 4
  br label %232

24:                                               ; preds = %1
  store i32 1, i32* @cd_media, align 4
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 8
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 2
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cd_media_info.media_status, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @cd_media_cd_rom, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %24
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 2
  %41 = load i8, i8* %40, align 2
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cd_media_info.media_status, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** @cd_media_state, align 8
  br label %47

47:                                               ; preds = %39, %24
  %48 = load i64, i64* @cd_media_dvd_rw_ro, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 2
  %52 = load i8, i8* %51, align 2
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cd_media_info.media_status, i64 0, i64 0), align 16
  store i8* %57, i8** @cd_media_state, align 8
  br label %58

58:                                               ; preds = %56, %50, %47
  %59 = load i64, i64* @cd_media_dvd_rw_ro, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @cd_media_dvd_plus_rw, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @cd_media_dvd_plus_rw_dl, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @cd_media_dvd_ram, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %193

70:                                               ; preds = %67, %64, %61, %58
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 2
  %72 = load i8, i8* %71, align 2
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 3
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %193

76:                                               ; preds = %70
  %77 = load i64, i64* @cd_media_dvd_ram, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %76
  %80 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %81 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 173)
  %82 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 7, i32 192)
  %83 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 8)
  %84 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 11, i32 0)
  %85 = load i32, i32* %3, align 4
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %87 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %85, i8* %86, i32 8)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %2, align 4
  br label %232

93:                                               ; preds = %79
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cd_media_info.media_status, i64 0, i64 2), align 16
  store i8* %100, i8** @cd_media_state, align 8
  %101 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %194

102:                                              ; preds = %93
  %103 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %104 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 35)
  %105 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 12)
  %106 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %107 = load i32, i32* %3, align 4
  %108 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %109 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %107, i8* %108, i32 12)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  store i32 -1, i32* %2, align 4
  br label %232

115:                                              ; preds = %102
  %116 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 3
  %117 = load i8, i8* %116, align 1
  store i8 %117, i8* %8, align 1
  %118 = load i8, i8* %8, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 7
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = load i8, i8* %8, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %130

126:                                              ; preds = %122, %115
  %127 = load i32, i32* @EINVAL, align 4
  %128 = call i32 @SYNTHETIC_ERRNO(i32 %127)
  %129 = call i32 @log_debug_errno(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 %129, i32* %2, align 4
  br label %232

130:                                              ; preds = %122
  %131 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 3
  switch i32 %134, label %143 [
    i32 1, label %135
    i32 2, label %137
    i32 3, label %139
  ]

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %194

137:                                              ; preds = %130
  %138 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %143

139:                                              ; preds = %130
  store i32 0, i32* @cd_media, align 4
  %140 = load i32, i32* @ENOMEDIUM, align 4
  %141 = call i32 @SYNTHETIC_ERRNO(i32 %140)
  %142 = call i32 @log_debug_errno(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  store i32 %142, i32* %2, align 4
  br label %232

143:                                              ; preds = %130, %137
  br label %144

144:                                              ; preds = %143, %76
  %145 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %146 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 40)
  %147 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 5, i32 0)
  %148 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 32)
  %149 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %150 = load i32, i32* %3, align 4
  %151 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 0
  %152 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %150, i8* %151, i32 65536)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  store i32 0, i32* @cd_media, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %156)
  store i32 -1, i32* %2, align 4
  br label %232

158:                                              ; preds = %144
  store i32 32768, i32* %9, align 4
  br label %159

159:                                              ; preds = %171, %158
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 34816
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %194

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %159

174:                                              ; preds = %159
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %187, %174
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 2048
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [65536 x i8], [65536 x i8]* %7, i64 0, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %194

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %175

190:                                              ; preds = %175
  %191 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cd_media_info.media_status, i64 0, i64 0), align 16
  store i8* %191, i8** @cd_media_state, align 8
  %192 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %70, %67
  br label %194

194:                                              ; preds = %193, %184, %168, %135, %99
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 2
  %196 = load i8, i8* %195, align 2
  %197 = zext i8 %196 to i32
  %198 = and i32 %197, 3
  %199 = icmp slt i32 %198, 2
  br i1 %199, label %200, label %213

200:                                              ; preds = %194
  %201 = load i64, i64* @cd_media_dvd_rw_ro, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 10
  %205 = load i8, i8* %204, align 2
  %206 = zext i8 %205 to i32
  %207 = shl i32 %206, 8
  %208 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 5
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %207, %210
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* @cd_media_session_next, align 1
  br label %213

213:                                              ; preds = %203, %200, %194
  %214 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 9
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = shl i32 %216, 8
  %218 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 4
  %219 = load i8, i8* %218, align 4
  %220 = zext i8 %219 to i32
  %221 = or i32 %217, %220
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* @cd_media_session_count, align 1
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 11
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %225, 8
  %227 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 6
  %228 = load i8, i8* %227, align 2
  %229 = zext i8 %228 to i32
  %230 = or i32 %226, %229
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* @cd_media_track_count, align 1
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %213, %155, %139, %126, %112, %90, %21
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @scsi_cmd_init(%struct.scsi_cmd*) #1

declare dso_local i32 @scsi_cmd_set(%struct.scsi_cmd*, i32, i32) #1

declare dso_local i32 @scsi_cmd_run(%struct.scsi_cmd*, i32, i8*, i32) #1

declare dso_local i32 @info_scsi_cmd_err(i8*, i32) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
