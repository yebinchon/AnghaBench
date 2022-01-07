; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_scan_dir.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_scan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i8*, i32*, i64, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to scan zedlet dir: %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to scan dir \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to open dir \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to stat \22%s\22: %s\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Ignoring \22%s\22: not a regular file\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Ignoring \22%s\22: not owned by root\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Ignoring \22%s\22: not executable by user\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Ignoring \22%s\22: writable by group\00", align 1
@S_IWOTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Ignoring \22%s\22: writable by other\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to register \22%s\22: %s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Registered zedlet \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to close dir \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_conf_scan_dir(%struct.zed_conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zed_conf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.zed_conf* %0, %struct.zed_conf** %3, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %19 = icmp ne %struct.zed_conf* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %234

28:                                               ; preds = %1
  %29 = call i32* (...) @zed_strings_create()
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* @errno, align 4
  %34 = load i32, i32* @LOG_WARNING, align 4
  %35 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %36 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %234

41:                                               ; preds = %28
  %42 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %43 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* @opendir(i8* %44)
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @LOG_WARNING, align 4
  %51 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %52 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @zed_strings_destroy(i32* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %234

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %203, %184, %171, %154, %137, %125, %110, %100, %89, %73, %60
  %62 = load i32*, i32** %5, align 8
  %63 = call %struct.dirent* @readdir(i32* %62)
  store %struct.dirent* %63, %struct.dirent** %6, align 8
  %64 = icmp ne %struct.dirent* %63, null
  br i1 %64, label %65, label %204

65:                                               ; preds = %61
  %66 = load %struct.dirent*, %struct.dirent** %6, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %61

74:                                               ; preds = %65
  %75 = trunc i64 %15 to i32
  %76 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %77 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.dirent*, %struct.dirent** %6, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @snprintf(i8* %17, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %78, i8* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp uge i64 %87, %15
  br i1 %88, label %89, label %97

89:                                               ; preds = %85, %74
  %90 = load i32, i32* @LOG_WARNING, align 4
  %91 = load %struct.dirent*, %struct.dirent** %6, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @ENAMETOOLONG, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %93, i32 %95)
  br label %61

97:                                               ; preds = %85
  %98 = call i64 @stat(i8* %17, %struct.stat* %9)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @LOG_WARNING, align 4
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @strerror(i32 %102)
  %104 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %17, i32 %103)
  br label %61

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @S_ISREG(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @LOG_INFO, align 4
  %112 = load %struct.dirent*, %struct.dirent** %6, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %61

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %122 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @LOG_NOTICE, align 4
  %127 = load %struct.dirent*, %struct.dirent** %6, align 8
  %128 = getelementptr inbounds %struct.dirent, %struct.dirent* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  br label %61

131:                                              ; preds = %120, %116
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @S_IXUSR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @LOG_INFO, align 4
  %139 = load %struct.dirent*, %struct.dirent** %6, align 8
  %140 = getelementptr inbounds %struct.dirent, %struct.dirent* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  br label %61

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @S_IWGRP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %151 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @LOG_NOTICE, align 4
  %156 = load %struct.dirent*, %struct.dirent** %6, align 8
  %157 = getelementptr inbounds %struct.dirent, %struct.dirent* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %158)
  br label %61

160:                                              ; preds = %149, %143
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @S_IWOTH, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %168 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @LOG_NOTICE, align 4
  %173 = load %struct.dirent*, %struct.dirent** %6, align 8
  %174 = getelementptr inbounds %struct.dirent, %struct.dirent* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %175)
  br label %61

177:                                              ; preds = %166, %160
  %178 = load i32*, i32** %4, align 8
  %179 = load %struct.dirent*, %struct.dirent** %6, align 8
  %180 = getelementptr inbounds %struct.dirent, %struct.dirent* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @zed_strings_add(i32* %178, i32* null, i8* %181)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load i32, i32* @LOG_WARNING, align 4
  %186 = load %struct.dirent*, %struct.dirent** %6, align 8
  %187 = getelementptr inbounds %struct.dirent, %struct.dirent* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @errno, align 4
  %190 = call i32 @strerror(i32 %189)
  %191 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %188, i32 %190)
  br label %61

192:                                              ; preds = %177
  %193 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %194 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i32, i32* @LOG_INFO, align 4
  %199 = load %struct.dirent*, %struct.dirent** %6, align 8
  %200 = getelementptr inbounds %struct.dirent, %struct.dirent* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %197, %192
  br label %61

204:                                              ; preds = %61
  %205 = load i32*, i32** %5, align 8
  %206 = call i64 @closedir(i32* %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i32, i32* @errno, align 4
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* @LOG_WARNING, align 4
  %211 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %212 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* @errno, align 4
  %215 = call i32 @strerror(i32 %214)
  %216 = call i32 (i32, i8*, i8*, ...) @zed_log_msg(i32 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %213, i32 %215)
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @zed_strings_destroy(i32* %217)
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %234

220:                                              ; preds = %204
  %221 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %222 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %227 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @zed_strings_destroy(i32* %228)
  br label %230

230:                                              ; preds = %225, %220
  %231 = load i32*, i32** %4, align 8
  %232 = load %struct.zed_conf*, %struct.zed_conf** %3, align 8
  %233 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %232, i32 0, i32 1
  store i32* %231, i32** %233, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %234

234:                                              ; preds = %230, %208, %48, %32, %20
  %235 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @zed_strings_create(...) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @zed_strings_destroy(i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i64 @zed_strings_add(i32*, i32*, i8*) #2

declare dso_local i64 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
