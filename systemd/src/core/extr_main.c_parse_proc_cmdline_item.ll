; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"systemd.unit\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rd.systemd.unit\00", align 1
@UNIT_NAME_PLAIN = common dso_local global i32 0, align 4
@UNIT_NAME_INSTANCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Unit name specified on %s= is not valid, ignoring: %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rd.\00", align 1
@arg_default_unit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"systemd.dump_core\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Failed to parse dump core switch %s, ignoring: %m\00", align 1
@arg_dump_core = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"systemd.early_core_pattern\00", align 1
@arg_early_core_pattern = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"Specified core pattern '%s' is not an absolute path, ignoring.\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"systemd.crash_chvt\00", align 1
@arg_crash_chvt = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"Failed to parse crash chvt switch %s, ignoring: %m\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"systemd.crash_shell\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Failed to parse crash shell switch %s, ignoring: %m\00", align 1
@arg_crash_shell = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"systemd.crash_reboot\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Failed to parse crash reboot switch %s, ignoring: %m\00", align 1
@arg_crash_reboot = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"systemd.confirm_spawn\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Failed to parse confirm_spawn switch %s, ignoring: %m\00", align 1
@arg_confirm_spawn = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"systemd.service_watchdogs\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"Failed to parse service watchdog switch %s, ignoring: %m\00", align 1
@arg_service_watchdogs = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"systemd.show_status\00", align 1
@arg_show_status = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [52 x i8] c"Failed to parse show status switch %s, ignoring: %m\00", align 1
@SHOW_STATUS_YES = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"systemd.status_unit_format\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Failed to parse %s=%s, ignoring: %m\00", align 1
@arg_status_unit_format = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [32 x i8] c"systemd.default_standard_output\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"Failed to parse default standard output switch %s, ignoring: %m\00", align 1
@arg_default_std_output = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"systemd.default_standard_error\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"Failed to parse default standard error switch %s, ignoring: %m\00", align 1
@arg_default_std_error = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"systemd.setenv\00", align 1
@arg_default_environment = common dso_local global i8** null, align 8
@.str.27 = private unnamed_addr constant [55 x i8] c"Environment variable name '%s' is not valid. Ignoring.\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"systemd.machine_id\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"MachineID '%s' is not valid, ignoring: %m\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"systemd.default_timeout_start_sec\00", align 1
@arg_default_timeout_start_usec = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [57 x i8] c"Failed to parse default start timeout '%s', ignoring: %m\00", align 1
@USEC_INFINITY = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"systemd.watchdog_device\00", align 1
@arg_watchdog_device = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@_SHOW_STATUS_INVALID = common dso_local global i64 0, align 8
@SHOW_STATUS_AUTO = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@LOG_TARGET_CONSOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @STR_IN_SET(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @proc_cmdline_value_missing(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %430

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @UNIT_NAME_PLAIN, align 4
  %26 = load i32, i32* @UNIT_NAME_INSTANCE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @unit_name_is_valid(i8* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, i8*, ...) @log_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32)
  br label %51

34:                                               ; preds = %23
  %35 = call i32 (...) @in_initrd()
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @startswith(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free_and_strdup(i32* @arg_default_unit, i8* %44)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (...) @log_oom()
  store i32 %48, i32* %4, align 4
  br label %430

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %30
  br label %429

52:                                               ; preds = %3
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @proc_cmdline_key_streq(i8* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @parse_boolean(i8* %60)
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 1, %62 ]
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* @arg_dump_core, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %428

74:                                               ; preds = %52
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @proc_cmdline_key_streq(i8* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @proc_cmdline_value_missing(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %430

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @path_is_absolute(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @parse_path_argument_and_warn(i8* %89, i32 0, i32* @arg_early_core_pattern)
  br label %94

91:                                               ; preds = %84
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (i8*, i8*, ...) @log_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %427

95:                                               ; preds = %74
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @proc_cmdline_key_streq(i8* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i64 0, i64* @arg_crash_chvt, align 8
  br label %113

103:                                              ; preds = %99
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @parse_crash_chvt(i8* %104, i64* @arg_crash_chvt)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %109, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112, %102
  br label %426

114:                                              ; preds = %95
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @proc_cmdline_key_streq(i8* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  %119 = load i8*, i8** %6, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @parse_boolean(i8* %122)
  br label %125

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi i32 [ %123, %121 ], [ 1, %124 ]
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %130, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8* %131)
  br label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* @arg_crash_shell, align 4
  br label %135

135:                                              ; preds = %133, %129
  br label %425

136:                                              ; preds = %114
  %137 = load i8*, i8** %5, align 8
  %138 = call i64 @proc_cmdline_key_streq(i8* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %136
  %141 = load i8*, i8** %6, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @parse_boolean(i8* %144)
  br label %147

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i32 [ %145, %143 ], [ 1, %146 ]
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* %8, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %152, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* %153)
  br label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* @arg_crash_reboot, align 4
  br label %157

157:                                              ; preds = %155, %151
  br label %424

158:                                              ; preds = %136
  %159 = load i8*, i8** %5, align 8
  %160 = call i64 @proc_cmdline_key_streq(i8* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @parse_confirm_spawn(i8* %163, i8** %9)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %168, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i8* %169)
  br label %175

171:                                              ; preds = %162
  %172 = load i32, i32* @arg_confirm_spawn, align 4
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @free_and_replace(i32 %172, i8* %173)
  br label %175

175:                                              ; preds = %171, %167
  br label %423

176:                                              ; preds = %158
  %177 = load i8*, i8** %5, align 8
  %178 = call i64 @proc_cmdline_key_streq(i8* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %176
  %181 = load i8*, i8** %6, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %6, align 8
  %185 = call i32 @parse_boolean(i8* %184)
  br label %187

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %183
  %188 = phi i32 [ %185, %183 ], [ 1, %186 ]
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* %8, align 4
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %192, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0), i8* %193)
  br label %197

195:                                              ; preds = %187
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* @arg_service_watchdogs, align 4
  br label %197

197:                                              ; preds = %195, %191
  br label %422

198:                                              ; preds = %176
  %199 = load i8*, i8** %5, align 8
  %200 = call i64 @proc_cmdline_key_streq(i8* %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %198
  %203 = load i8*, i8** %6, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @parse_show_status(i8* %206, i64* @arg_show_status)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i32, i32* %8, align 4
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %211, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %210, %205
  br label %217

215:                                              ; preds = %202
  %216 = load i64, i64* @SHOW_STATUS_YES, align 8
  store i64 %216, i64* @arg_show_status, align 8
  br label %217

217:                                              ; preds = %215, %214
  br label %421

218:                                              ; preds = %198
  %219 = load i8*, i8** %5, align 8
  %220 = call i64 @proc_cmdline_key_streq(i8* %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %241

222:                                              ; preds = %218
  %223 = load i8*, i8** %5, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = call i64 @proc_cmdline_value_missing(i8* %223, i8* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i32 0, i32* %4, align 4
  br label %430

228:                                              ; preds = %222
  %229 = load i8*, i8** %6, align 8
  %230 = call i32 @status_unit_format_from_string(i8* %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i32, i32* %8, align 4
  %235 = load i8*, i8** %5, align 8
  %236 = load i8*, i8** %6, align 8
  %237 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %234, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i8* %235, i8* %236)
  br label %240

238:                                              ; preds = %228
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* @arg_status_unit_format, align 4
  br label %240

240:                                              ; preds = %238, %233
  br label %420

241:                                              ; preds = %218
  %242 = load i8*, i8** %5, align 8
  %243 = call i64 @proc_cmdline_key_streq(i8* %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %263

245:                                              ; preds = %241
  %246 = load i8*, i8** %5, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = call i64 @proc_cmdline_value_missing(i8* %246, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %430

251:                                              ; preds = %245
  %252 = load i8*, i8** %6, align 8
  %253 = call i32 @exec_output_from_string(i8* %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load i32, i32* %8, align 4
  %258 = load i8*, i8** %6, align 8
  %259 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %257, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i8* %258)
  br label %262

260:                                              ; preds = %251
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* @arg_default_std_output, align 4
  br label %262

262:                                              ; preds = %260, %256
  br label %419

263:                                              ; preds = %241
  %264 = load i8*, i8** %5, align 8
  %265 = call i64 @proc_cmdline_key_streq(i8* %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %285

267:                                              ; preds = %263
  %268 = load i8*, i8** %5, align 8
  %269 = load i8*, i8** %6, align 8
  %270 = call i64 @proc_cmdline_value_missing(i8* %268, i8* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  store i32 0, i32* %4, align 4
  br label %430

273:                                              ; preds = %267
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 @exec_output_from_string(i8* %274)
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = load i32, i32* %8, align 4
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %279, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0), i8* %280)
  br label %284

282:                                              ; preds = %273
  %283 = load i32, i32* %8, align 4
  store i32 %283, i32* @arg_default_std_error, align 4
  br label %284

284:                                              ; preds = %282, %278
  br label %418

285:                                              ; preds = %263
  %286 = load i8*, i8** %5, align 8
  %287 = call i64 @streq(i8* %286, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %313

289:                                              ; preds = %285
  %290 = load i8*, i8** %5, align 8
  %291 = load i8*, i8** %6, align 8
  %292 = call i64 @proc_cmdline_value_missing(i8* %290, i8* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  store i32 0, i32* %4, align 4
  br label %430

295:                                              ; preds = %289
  %296 = load i8*, i8** %6, align 8
  %297 = call i64 @env_assignment_is_valid(i8* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %295
  %300 = load i8**, i8*** @arg_default_environment, align 8
  %301 = load i8*, i8** %6, align 8
  %302 = call i8** @strv_env_set(i8** %300, i8* %301)
  store i8** %302, i8*** %10, align 8
  %303 = load i8**, i8*** %10, align 8
  %304 = icmp ne i8** %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %299
  %306 = call i32 (...) @log_oom()
  store i32 %306, i32* %4, align 4
  br label %430

307:                                              ; preds = %299
  %308 = load i8**, i8*** %10, align 8
  store i8** %308, i8*** @arg_default_environment, align 8
  br label %312

309:                                              ; preds = %295
  %310 = load i8*, i8** %6, align 8
  %311 = call i32 (i8*, i8*, ...) @log_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0), i8* %310)
  br label %312

312:                                              ; preds = %309, %307
  br label %417

313:                                              ; preds = %285
  %314 = load i8*, i8** %5, align 8
  %315 = call i64 @proc_cmdline_key_streq(i8* %314, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %313
  %318 = load i8*, i8** %5, align 8
  %319 = load i8*, i8** %6, align 8
  %320 = call i64 @proc_cmdline_value_missing(i8* %318, i8* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  store i32 0, i32* %4, align 4
  br label %430

323:                                              ; preds = %317
  %324 = load i8*, i8** %6, align 8
  %325 = call i32 @set_machine_id(i8* %324)
  store i32 %325, i32* %8, align 4
  %326 = load i32, i32* %8, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = load i32, i32* %8, align 4
  %330 = load i8*, i8** %6, align 8
  %331 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %329, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i8* %330)
  br label %332

332:                                              ; preds = %328, %323
  br label %416

333:                                              ; preds = %313
  %334 = load i8*, i8** %5, align 8
  %335 = call i64 @proc_cmdline_key_streq(i8* %334, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0))
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %358

337:                                              ; preds = %333
  %338 = load i8*, i8** %5, align 8
  %339 = load i8*, i8** %6, align 8
  %340 = call i64 @proc_cmdline_value_missing(i8* %338, i8* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  store i32 0, i32* %4, align 4
  br label %430

343:                                              ; preds = %337
  %344 = load i8*, i8** %6, align 8
  %345 = call i32 @parse_sec(i8* %344, i64* @arg_default_timeout_start_usec)
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %8, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %343
  %349 = load i32, i32* %8, align 4
  %350 = load i8*, i8** %6, align 8
  %351 = call i32 (i32, i8*, i8*, ...) @log_warning_errno(i32 %349, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0), i8* %350)
  br label %352

352:                                              ; preds = %348, %343
  %353 = load i64, i64* @arg_default_timeout_start_usec, align 8
  %354 = icmp sle i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = load i64, i64* @USEC_INFINITY, align 8
  store i64 %356, i64* @arg_default_timeout_start_usec, align 8
  br label %357

357:                                              ; preds = %355, %352
  br label %415

358:                                              ; preds = %333
  %359 = load i8*, i8** %5, align 8
  %360 = call i64 @proc_cmdline_key_streq(i8* %359, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %358
  %363 = load i8*, i8** %5, align 8
  %364 = load i8*, i8** %6, align 8
  %365 = call i64 @proc_cmdline_value_missing(i8* %363, i8* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  store i32 0, i32* %4, align 4
  br label %430

368:                                              ; preds = %362
  %369 = load i8*, i8** %6, align 8
  %370 = call i32 @parse_path_argument_and_warn(i8* %369, i32 0, i32* @arg_watchdog_device)
  br label %414

371:                                              ; preds = %358
  %372 = load i8*, i8** %5, align 8
  %373 = call i64 @streq(i8* %372, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %385

375:                                              ; preds = %371
  %376 = load i8*, i8** %6, align 8
  %377 = icmp ne i8* %376, null
  br i1 %377, label %385, label %378

378:                                              ; preds = %375
  %379 = load i64, i64* @arg_show_status, align 8
  %380 = load i64, i64* @_SHOW_STATUS_INVALID, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = load i64, i64* @SHOW_STATUS_AUTO, align 8
  store i64 %383, i64* @arg_show_status, align 8
  br label %384

384:                                              ; preds = %382, %378
  br label %413

385:                                              ; preds = %375, %371
  %386 = load i8*, i8** %5, align 8
  %387 = call i64 @streq(i8* %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %399

389:                                              ; preds = %385
  %390 = load i8*, i8** %6, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %399, label %392

392:                                              ; preds = %389
  %393 = call i64 (...) @detect_container()
  %394 = icmp sgt i64 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load i32, i32* @LOG_TARGET_CONSOLE, align 4
  %397 = call i32 @log_set_target(i32 %396)
  br label %398

398:                                              ; preds = %395, %392
  br label %412

399:                                              ; preds = %389, %385
  %400 = load i8*, i8** %6, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %411, label %402

402:                                              ; preds = %399
  %403 = load i8*, i8** %5, align 8
  %404 = call i8* @runlevel_to_target(i8* %403)
  store i8* %404, i8** %11, align 8
  %405 = load i8*, i8** %11, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %402
  %408 = load i8*, i8** %11, align 8
  %409 = call i32 @free_and_strdup(i32* @arg_default_unit, i8* %408)
  store i32 %409, i32* %4, align 4
  br label %430

410:                                              ; preds = %402
  br label %411

411:                                              ; preds = %410, %399
  br label %412

412:                                              ; preds = %411, %398
  br label %413

413:                                              ; preds = %412, %384
  br label %414

414:                                              ; preds = %413, %368
  br label %415

415:                                              ; preds = %414, %357
  br label %416

416:                                              ; preds = %415, %332
  br label %417

417:                                              ; preds = %416, %312
  br label %418

418:                                              ; preds = %417, %284
  br label %419

419:                                              ; preds = %418, %262
  br label %420

420:                                              ; preds = %419, %240
  br label %421

421:                                              ; preds = %420, %217
  br label %422

422:                                              ; preds = %421, %197
  br label %423

423:                                              ; preds = %422, %175
  br label %424

424:                                              ; preds = %423, %157
  br label %425

425:                                              ; preds = %424, %135
  br label %426

426:                                              ; preds = %425, %113
  br label %427

427:                                              ; preds = %426, %94
  br label %428

428:                                              ; preds = %427, %73
  br label %429

429:                                              ; preds = %428, %51
  store i32 0, i32* %4, align 4
  br label %430

430:                                              ; preds = %429, %407, %367, %342, %322, %305, %294, %272, %250, %227, %83, %47, %22
  %431 = load i32, i32* %4, align 4
  ret i32 %431
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @unit_name_is_valid(i8*, i32) #1

declare dso_local i32 @log_warning(i8*, i8*, ...) #1

declare dso_local i32 @in_initrd(...) #1

declare dso_local i32 @startswith(i8*, i8*) #1

declare dso_local i32 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*, ...) #1

declare dso_local i64 @path_is_absolute(i8*) #1

declare dso_local i32 @parse_path_argument_and_warn(i8*, i32, i32*) #1

declare dso_local i32 @parse_crash_chvt(i8*, i64*) #1

declare dso_local i32 @parse_confirm_spawn(i8*, i8**) #1

declare dso_local i32 @free_and_replace(i32, i8*) #1

declare dso_local i32 @parse_show_status(i8*, i64*) #1

declare dso_local i32 @status_unit_format_from_string(i8*) #1

declare dso_local i32 @exec_output_from_string(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @env_assignment_is_valid(i8*) #1

declare dso_local i8** @strv_env_set(i8**, i8*) #1

declare dso_local i32 @set_machine_id(i8*) #1

declare dso_local i32 @parse_sec(i8*, i64*) #1

declare dso_local i64 @detect_container(...) #1

declare dso_local i32 @log_set_target(i32) #1

declare dso_local i8* @runlevel_to_target(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
