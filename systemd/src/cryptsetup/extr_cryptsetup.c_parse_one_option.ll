; ModuleID = '/home/carl/AnghaBench/systemd/src/cryptsetup/extr_cryptsetup.c_parse_one_option.c'
source_filename = "/home/carl/AnghaBench/systemd/src/cryptsetup/extr_cryptsetup.c_parse_one_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nofail\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_netdev\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"keyfile-timeout\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"keyfile-timeout=\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"cipher=\00", align 1
@arg_cipher = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"size=\00", align 1
@arg_key_size = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to parse %s, ignoring: %m\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"size= not a multiple of 8, ignoring.\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"sector-size=\00", align 1
@arg_sector_size = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"sector-size= not a multiple of 2, ignoring.\00", align 1
@CRYPT_SECTOR_SIZE = common dso_local global i32 0, align 4
@CRYPT_MAX_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"sector-size= is outside of %u and %u, ignoring.\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"key-slot=\00", align 1
@ANY_LUKS = common dso_local global i32 0, align 4
@arg_type = common dso_local global i32 0, align 4
@arg_key_slot = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"tcrypt-keyfile=\00", align 1
@CRYPT_TCRYPT = common dso_local global i32 0, align 4
@arg_tcrypt_keyfiles = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [46 x i8] c"Key file path \22%s\22 is not absolute. Ignoring.\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"keyfile-size=\00", align 1
@arg_keyfile_size = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"keyfile-offset=\00", align 1
@arg_keyfile_offset = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"hash=\00", align 1
@arg_hash = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"header=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"Header path \22%s\22 is not absolute, refusing.\00", align 1
@arg_header = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"Duplicate header= option, refusing.\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"tries=\00", align 1
@arg_tries = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@arg_readonly = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@arg_verify = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"allow-discards\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@arg_discards = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [15 x i8] c"same-cpu-crypt\00", align 1
@arg_same_cpu_crypt = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [23 x i8] c"submit-from-crypt-cpus\00", align 1
@arg_submit_from_crypt_cpus = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"luks\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"tcrypt\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"tcrypt-hidden\00", align 1
@arg_tcrypt_hidden = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"tcrypt-system\00", align 1
@arg_tcrypt_system = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [17 x i8] c"tcrypt-veracrypt\00", align 1
@arg_tcrypt_veracrypt = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@CRYPT_PLAIN = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"timeout=\00", align 1
@arg_timeout = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"offset=\00", align 1
@arg_offset = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [23 x i8] c"Failed to parse %s: %m\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"skip=\00", align 1
@arg_skip = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"Encountered unknown /etc/crypttab option '%s', ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_one_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_one_option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %336

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @startswith(i8* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %336

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @startswith(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @free_and_strdup(i32* @arg_cipher, i8* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @log_oom()
  store i32 %27, i32* %2, align 4
  br label %336

28:                                               ; preds = %21
  br label %335

29:                                               ; preds = %17
  %30 = load i8*, i8** %3, align 8
  %31 = call i8* @startswith(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @safe_atou(i8* %34, i32* @arg_key_size)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i32, i8*, ...) @log_error_errno(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %40)
  store i32 0, i32* %2, align 4
  br label %336

42:                                               ; preds = %33
  %43 = load i32, i32* @arg_key_size, align 4
  %44 = srem i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %336

48:                                               ; preds = %42
  %49 = load i32, i32* @arg_key_size, align 4
  %50 = sdiv i32 %49, 8
  store i32 %50, i32* @arg_key_size, align 4
  br label %334

51:                                               ; preds = %29
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @startswith(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i8* %53, i8** %4, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @safe_atou(i8* %56, i32* @arg_sector_size)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i32, i8*, ...) @log_error_errno(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  store i32 0, i32* %2, align 4
  br label %336

64:                                               ; preds = %55
  %65 = load i32, i32* @arg_sector_size, align 4
  %66 = srem i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %336

70:                                               ; preds = %64
  %71 = load i32, i32* @arg_sector_size, align 4
  %72 = load i32, i32* @CRYPT_SECTOR_SIZE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @arg_sector_size, align 4
  %76 = load i32, i32* @CRYPT_MAX_SECTOR_SIZE, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @CRYPT_SECTOR_SIZE, align 4
  %80 = load i32, i32* @CRYPT_MAX_SECTOR_SIZE, align 4
  %81 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %79, i32 %80)
  store i32 0, i32* %2, align 4
  br label %336

82:                                               ; preds = %74
  br label %333

83:                                               ; preds = %51
  %84 = load i8*, i8** %3, align 8
  %85 = call i8* @startswith(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  store i8* %85, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i32, i32* @ANY_LUKS, align 4
  store i32 %88, i32* @arg_type, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @safe_atoi(i8* %89, i32* @arg_key_slot)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 (i32, i8*, ...) @log_error_errno(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %95)
  store i32 0, i32* %2, align 4
  br label %336

97:                                               ; preds = %87
  br label %332

98:                                               ; preds = %83
  %99 = load i8*, i8** %3, align 8
  %100 = call i8* @startswith(i8* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  store i8* %100, i8** %4, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32, i32* @CRYPT_TCRYPT, align 4
  store i32 %103, i32* @arg_type, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = call i64 @path_is_absolute(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i8*, i8** %4, align 8
  %109 = call i64 @strv_extend(i32* @arg_tcrypt_keyfiles, i8* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 (...) @log_oom()
  store i32 %112, i32* %2, align 4
  br label %336

113:                                              ; preds = %107
  br label %117

114:                                              ; preds = %102
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %113
  br label %331

118:                                              ; preds = %98
  %119 = load i8*, i8** %3, align 8
  %120 = call i8* @startswith(i8* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i8* %120, i8** %4, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @safe_atou(i8* %123, i32* @arg_keyfile_size)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 (i32, i8*, ...) @log_error_errno(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %129)
  store i32 0, i32* %2, align 4
  br label %336

131:                                              ; preds = %122
  br label %330

132:                                              ; preds = %118
  %133 = load i8*, i8** %3, align 8
  %134 = call i8* @startswith(i8* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  store i8* %134, i8** %4, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @safe_atou64(i8* %137, i32* @arg_keyfile_offset)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 (i32, i8*, ...) @log_error_errno(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %143)
  store i32 0, i32* %2, align 4
  br label %336

145:                                              ; preds = %136
  br label %329

146:                                              ; preds = %132
  %147 = load i8*, i8** %3, align 8
  %148 = call i8* @startswith(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  store i8* %148, i8** %4, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @free_and_strdup(i32* @arg_hash, i8* %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 (...) @log_oom()
  store i32 %156, i32* %2, align 4
  br label %336

157:                                              ; preds = %150
  br label %328

158:                                              ; preds = %146
  %159 = load i8*, i8** %3, align 8
  %160 = call i8* @startswith(i8* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  store i8* %160, i8** %4, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %187

162:                                              ; preds = %158
  %163 = load i32, i32* @ANY_LUKS, align 4
  store i32 %163, i32* @arg_type, align 4
  %164 = load i8*, i8** %4, align 8
  %165 = call i64 @path_is_absolute(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @EINVAL, align 4
  %169 = call i32 @SYNTHETIC_ERRNO(i32 %168)
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 (i32, i8*, ...) @log_error_errno(i32 %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i8* %170)
  store i32 %171, i32* %2, align 4
  br label %336

172:                                              ; preds = %162
  %173 = load i64, i64* @arg_header, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* @EINVAL, align 4
  %177 = call i32 @SYNTHETIC_ERRNO(i32 %176)
  %178 = call i32 (i32, i8*, ...) @log_error_errno(i32 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  store i32 %178, i32* %2, align 4
  br label %336

179:                                              ; preds = %172
  %180 = load i8*, i8** %4, align 8
  %181 = call i64 @strdup(i8* %180)
  store i64 %181, i64* @arg_header, align 8
  %182 = load i64, i64* @arg_header, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = call i32 (...) @log_oom()
  store i32 %185, i32* %2, align 4
  br label %336

186:                                              ; preds = %179
  br label %327

187:                                              ; preds = %158
  %188 = load i8*, i8** %3, align 8
  %189 = call i8* @startswith(i8* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  store i8* %189, i8** %4, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i8*, i8** %4, align 8
  %193 = call i32 @safe_atou(i8* %192, i32* @arg_tries)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i32, i32* %5, align 4
  %198 = load i8*, i8** %3, align 8
  %199 = call i32 (i32, i8*, ...) @log_error_errno(i32 %197, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %198)
  store i32 0, i32* %2, align 4
  br label %336

200:                                              ; preds = %191
  br label %326

201:                                              ; preds = %187
  %202 = load i8*, i8** %3, align 8
  %203 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* @arg_readonly, align 4
  br label %325

206:                                              ; preds = %201
  %207 = load i8*, i8** %3, align 8
  %208 = call i64 @streq(i8* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 1, i32* @arg_verify, align 4
  br label %324

211:                                              ; preds = %206
  %212 = load i8*, i8** %3, align 8
  %213 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %212, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 1, i32* @arg_discards, align 4
  br label %323

216:                                              ; preds = %211
  %217 = load i8*, i8** %3, align 8
  %218 = call i64 @streq(i8* %217, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i32 1, i32* @arg_same_cpu_crypt, align 4
  br label %322

221:                                              ; preds = %216
  %222 = load i8*, i8** %3, align 8
  %223 = call i64 @streq(i8* %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32 1, i32* @arg_submit_from_crypt_cpus, align 4
  br label %321

226:                                              ; preds = %221
  %227 = load i8*, i8** %3, align 8
  %228 = call i64 @streq(i8* %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i32, i32* @ANY_LUKS, align 4
  store i32 %231, i32* @arg_type, align 4
  br label %320

232:                                              ; preds = %226
  %233 = load i8*, i8** %3, align 8
  %234 = call i64 @streq(i8* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load i32, i32* @CRYPT_TCRYPT, align 4
  store i32 %237, i32* @arg_type, align 4
  br label %319

238:                                              ; preds = %232
  %239 = load i8*, i8** %3, align 8
  %240 = call i64 @streq(i8* %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i32, i32* @CRYPT_TCRYPT, align 4
  store i32 %243, i32* @arg_type, align 4
  store i32 1, i32* @arg_tcrypt_hidden, align 4
  br label %318

244:                                              ; preds = %238
  %245 = load i8*, i8** %3, align 8
  %246 = call i64 @streq(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* @CRYPT_TCRYPT, align 4
  store i32 %249, i32* @arg_type, align 4
  store i32 1, i32* @arg_tcrypt_system, align 4
  br label %317

250:                                              ; preds = %244
  %251 = load i8*, i8** %3, align 8
  %252 = call i64 @streq(i8* %251, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = load i32, i32* @CRYPT_TCRYPT, align 4
  store i32 %255, i32* @arg_type, align 4
  store i32 1, i32* @arg_tcrypt_veracrypt, align 4
  br label %316

256:                                              ; preds = %250
  %257 = load i8*, i8** %3, align 8
  %258 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0))
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i32, i32* @CRYPT_PLAIN, align 4
  store i32 %261, i32* @arg_type, align 4
  br label %315

262:                                              ; preds = %256
  %263 = load i8*, i8** %3, align 8
  %264 = call i8* @startswith(i8* %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0))
  store i8* %264, i8** %4, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %276

266:                                              ; preds = %262
  %267 = load i8*, i8** %4, align 8
  %268 = call i32 @parse_sec_fix_0(i8* %267, i32* @arg_timeout)
  store i32 %268, i32* %5, align 4
  %269 = load i32, i32* %5, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = load i32, i32* %5, align 4
  %273 = load i8*, i8** %3, align 8
  %274 = call i32 (i32, i8*, ...) @log_error_errno(i32 %272, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %273)
  store i32 0, i32* %2, align 4
  br label %336

275:                                              ; preds = %266
  br label %314

276:                                              ; preds = %262
  %277 = load i8*, i8** %3, align 8
  %278 = call i8* @startswith(i8* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  store i8* %278, i8** %4, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %290

280:                                              ; preds = %276
  %281 = load i8*, i8** %4, align 8
  %282 = call i32 @safe_atou64(i8* %281, i32* @arg_offset)
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* %5, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = load i32, i32* %5, align 4
  %287 = load i8*, i8** %3, align 8
  %288 = call i32 (i32, i8*, ...) @log_error_errno(i32 %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i8* %287)
  store i32 %288, i32* %2, align 4
  br label %336

289:                                              ; preds = %280
  br label %313

290:                                              ; preds = %276
  %291 = load i8*, i8** %3, align 8
  %292 = call i8* @startswith(i8* %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0))
  store i8* %292, i8** %4, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %304

294:                                              ; preds = %290
  %295 = load i8*, i8** %4, align 8
  %296 = call i32 @safe_atou64(i8* %295, i32* @arg_skip)
  store i32 %296, i32* %5, align 4
  %297 = load i32, i32* %5, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = load i32, i32* %5, align 4
  %301 = load i8*, i8** %3, align 8
  %302 = call i32 (i32, i8*, ...) @log_error_errno(i32 %300, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i8* %301)
  store i32 %302, i32* %2, align 4
  br label %336

303:                                              ; preds = %294
  br label %312

304:                                              ; preds = %290
  %305 = load i8*, i8** %3, align 8
  %306 = call i64 @streq(i8* %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %304
  %309 = load i8*, i8** %3, align 8
  %310 = call i32 @log_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i64 0, i64 0), i8* %309)
  br label %311

311:                                              ; preds = %308, %304
  br label %312

312:                                              ; preds = %311, %303
  br label %313

313:                                              ; preds = %312, %289
  br label %314

314:                                              ; preds = %313, %275
  br label %315

315:                                              ; preds = %314, %260
  br label %316

316:                                              ; preds = %315, %254
  br label %317

317:                                              ; preds = %316, %248
  br label %318

318:                                              ; preds = %317, %242
  br label %319

319:                                              ; preds = %318, %236
  br label %320

320:                                              ; preds = %319, %230
  br label %321

321:                                              ; preds = %320, %225
  br label %322

322:                                              ; preds = %321, %220
  br label %323

323:                                              ; preds = %322, %215
  br label %324

324:                                              ; preds = %323, %210
  br label %325

325:                                              ; preds = %324, %205
  br label %326

326:                                              ; preds = %325, %200
  br label %327

327:                                              ; preds = %326, %186
  br label %328

328:                                              ; preds = %327, %157
  br label %329

329:                                              ; preds = %328, %145
  br label %330

330:                                              ; preds = %329, %131
  br label %331

331:                                              ; preds = %330, %117
  br label %332

332:                                              ; preds = %331, %97
  br label %333

333:                                              ; preds = %332, %82
  br label %334

334:                                              ; preds = %333, %48
  br label %335

335:                                              ; preds = %334, %28
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %335, %299, %285, %271, %196, %184, %175, %167, %155, %141, %127, %111, %93, %78, %68, %60, %46, %38, %26, %16, %11
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, ...) #1

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i32 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @log_error(i8*, ...) #1

declare dso_local i32 @safe_atoi(i8*, i32*) #1

declare dso_local i64 @path_is_absolute(i8*) #1

declare dso_local i64 @strv_extend(i32*, i8*) #1

declare dso_local i32 @safe_atou64(i8*, i32*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_sec_fix_0(i8*, i32*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
