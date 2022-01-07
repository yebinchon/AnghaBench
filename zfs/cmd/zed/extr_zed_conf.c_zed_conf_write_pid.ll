; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_write_pid.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_write_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i8*, i32 }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to create PID file: %s\00", align 1
@ENAMETOOLONG = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create directory \22%s\22: %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to open PID file \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to lock PID file \22%s\22: %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to test lock on PID file \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Found PID %d bound to PID file \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Inconsistent lock state on PID file \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to write PID file \22%s\22: %s\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to sync PID file \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_conf_write_pid(%struct.zed_conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zed_conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.zed_conf* %0, %struct.zed_conf** %3, align 8
  %14 = load i32, i32* @S_IRWXU, align 4
  %15 = load i32, i32* @S_IRGRP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IXGRP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @S_IROTH, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IXOTH, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @S_IRUSR, align 4
  %24 = load i32, i32* @S_IWUSR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IRGRP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @S_IROTH, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @PATH_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %6, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %7, align 8
  %34 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %35 = icmp ne %struct.zed_conf* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %38 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36, %1
  %42 = load i64, i64* @EINVAL, align 8
  store i64 %42, i64* @errno, align 8
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i64, i64* @errno, align 8
  %45 = call i8* @strerror(i64 %44)
  %46 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

47:                                               ; preds = %36
  %48 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %49 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %55 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = trunc i64 %31 to i32
  %58 = call i32 @strlcpy(i8* %33, i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %60, %31
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  %63 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %63, i64* @errno, align 8
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i64, i64* @errno, align 8
  %66 = call i8* @strerror(i64 %65)
  %67 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %220

68:                                               ; preds = %47
  %69 = call i8* @strrchr(i8* %33, i8 signext 47)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i8*, i8** %9, align 8
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @mkdirp(i8* %33, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @EEXIST, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @LOG_ERR, align 4
  %84 = load i64, i64* @errno, align 8
  %85 = call i8* @strerror(i64 %84)
  %86 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %85)
  br label %220

87:                                               ; preds = %78, %74
  %88 = call i32 @umask(i32 0)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, 18
  %91 = call i32 @umask(i32 %90)
  %92 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %93 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @O_RDWR, align 4
  %96 = load i32, i32* @O_CREAT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @open(i8* %94, i32 %97, i32 %98)
  %100 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %101 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @umask(i32 %102)
  %104 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %105 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %87
  %109 = load i32, i32* @LOG_ERR, align 4
  %110 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %111 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* @errno, align 8
  %114 = call i8* @strerror(i64 %113)
  %115 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %112, i8* %114)
  br label %220

116:                                              ; preds = %87
  %117 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %118 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @zed_file_lock(i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load i32, i32* @LOG_ERR, align 4
  %125 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %126 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* @errno, align 8
  %129 = call i8* @strerror(i64 %128)
  %130 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %129)
  br label %220

131:                                              ; preds = %116
  %132 = load i32, i32* %11, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %136 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @zed_file_is_locked(i32 %137)
  store i8* %138, i8** %13, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = icmp ult i8* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i32, i32* @LOG_ERR, align 4
  %143 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %144 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %145)
  br label %164

147:                                              ; preds = %134
  %148 = load i8*, i8** %13, align 8
  %149 = icmp ugt i8* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* @LOG_ERR, align 4
  %152 = load i8*, i8** %13, align 8
  %153 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %154 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %152, i8* %155)
  br label %163

157:                                              ; preds = %147
  %158 = load i32, i32* @LOG_ERR, align 4
  %159 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %160 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %157, %150
  br label %164

164:                                              ; preds = %163, %141
  br label %220

165:                                              ; preds = %131
  br label %166

166:                                              ; preds = %165
  %167 = trunc i64 %31 to i32
  %168 = call i64 (...) @getpid()
  %169 = trunc i64 %168 to i32
  %170 = call i32 @snprintf(i8* %33, i32 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp uge i64 %175, %31
  br i1 %176, label %177, label %186

177:                                              ; preds = %173, %166
  %178 = load i64, i64* @ERANGE, align 8
  store i64 %178, i64* @errno, align 8
  %179 = load i32, i32* @LOG_ERR, align 4
  %180 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %181 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i64, i64* @errno, align 8
  %184 = call i8* @strerror(i64 %183)
  %185 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %182, i8* %184)
  br label %219

186:                                              ; preds = %173
  %187 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %188 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @zed_file_write_n(i32 %189, i8* %33, i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %186
  %195 = load i32, i32* @LOG_ERR, align 4
  %196 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %197 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i64, i64* @errno, align 8
  %200 = call i8* @strerror(i64 %199)
  %201 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %198, i8* %200)
  br label %218

202:                                              ; preds = %186
  %203 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %204 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @fdatasync(i32 %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = load i32, i32* @LOG_ERR, align 4
  %210 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %211 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i64, i64* @errno, align 8
  %214 = call i8* @strerror(i64 %213)
  %215 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %209, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %212, i8* %214)
  br label %217

216:                                              ; preds = %202
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217, %194
  br label %219

219:                                              ; preds = %218, %177
  br label %220

220:                                              ; preds = %219, %164, %123, %108, %82, %62
  %221 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %222 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %227 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @close(i32 %228)
  %230 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %231 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %230, i32 0, i32 1
  store i32 -1, i32* %231, align 8
  br label %232

232:                                              ; preds = %225, %220
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %233

233:                                              ; preds = %232, %216, %41
  %234 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @mkdirp(i8*, i32) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @zed_file_lock(i32) #2

declare dso_local i8* @zed_file_is_locked(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i32 @zed_file_write_n(i32, i8*, i32) #2

declare dso_local i64 @fdatasync(i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
