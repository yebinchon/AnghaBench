; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32* }
%struct.TYPE_5__ = type { i8* }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FILE_NON_DIRECTORY_FILE = common dso_local global i64 0, align 8
@STATUS_FILE_IS_A_DIRECTORY = common dso_local global i32 0, align 4
@FILE_DIRECTORY_FILE = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@STATUS_NO_SUCH_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@GENERIC_ALL = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i64 0, align 8
@GENERIC_WRITE = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_COLLISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@MAX_OPEN_FILES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"Maximum number of open files (%s) reached. Increase MAX_OPEN_FILES!\0A\00", align 1
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i64, i64, i64, i8*, i32*)* @disk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_create(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.stat, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %22, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %23, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %30 = load i32, i32* @S_IRWXU, align 4
  %31 = load i32, i32* @S_IRGRP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IXGRP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @S_IROTH, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @S_IXOTH, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %21, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %8
  %44 = load i8*, i8** %16, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %53, %43, %8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %68)
  %70 = load i64, i64* %14, align 8
  switch i64 %70, label %91 [
    i64 136, label %71
    i64 135, label %76
    i64 130, label %82
    i64 129, label %86
    i64 128, label %87
  ]

71:                                               ; preds = %60
  %72 = call i32 @unlink(i8* %29)
  %73 = load i32, i32* @O_CREAT, align 4
  %74 = load i32, i32* %20, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %20, align 4
  br label %91

76:                                               ; preds = %60
  %77 = load i32, i32* @O_CREAT, align 4
  %78 = load i32, i32* @O_EXCL, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %20, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %20, align 4
  br label %91

82:                                               ; preds = %60
  %83 = load i32, i32* @O_CREAT, align 4
  %84 = load i32, i32* %20, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %20, align 4
  br label %91

86:                                               ; preds = %60
  br label %91

87:                                               ; preds = %60
  %88 = load i32, i32* @O_TRUNC, align 4
  %89 = load i32, i32* %20, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %60, %87, %86, %82, %76, %71
  %92 = call i64 @stat(i8* %29, %struct.stat* %24)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @S_ISDIR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @FILE_NON_DIRECTORY_FILE, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @STATUS_FILE_IS_A_DIRECTORY, align 4
  store i32 %105, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

106:                                              ; preds = %99
  %107 = load i64, i64* @FILE_DIRECTORY_FILE, align 8
  %108 = load i64, i64* %15, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %94, %91
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* @FILE_DIRECTORY_FILE, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %111
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* @O_CREAT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @mkdir(i8* %29, i32 %122)
  br label %124

124:                                              ; preds = %121, %116
  %125 = call i32* @opendir(i8* %29)
  store i32* %125, i32** %19, align 8
  %126 = load i32*, i32** %19, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @errno, align 4
  switch i32 %129, label %134 [
    i32 134, label %130
    i32 131, label %132
  ]

130:                                              ; preds = %128
  %131 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %131, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

132:                                              ; preds = %128
  %133 = load i32, i32* @STATUS_NO_SUCH_FILE, align 4
  store i32 %133, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

134:                                              ; preds = %128
  %135 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @STATUS_NO_SUCH_FILE, align 4
  store i32 %136, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

137:                                              ; preds = %124
  %138 = load i32*, i32** %19, align 8
  %139 = call i32 @DIRFD(i32* %138)
  store i32 %139, i32* %18, align 4
  br label %206

140:                                              ; preds = %111
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @GENERIC_ALL, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %140
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @GENERIC_READ, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* @GENERIC_WRITE, align 8
  %153 = and i64 %151, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150, %140
  %156 = load i32, i32* @O_RDWR, align 4
  %157 = load i32, i32* %20, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %20, align 4
  br label %178

159:                                              ; preds = %150, %145
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* @GENERIC_WRITE, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @GENERIC_READ, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @O_WRONLY, align 4
  %171 = load i32, i32* %20, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %20, align 4
  br label %177

173:                                              ; preds = %164, %159
  %174 = load i32, i32* @O_RDONLY, align 4
  %175 = load i32, i32* %20, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %20, align 4
  br label %177

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177, %155
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %21, align 4
  %181 = call i32 @open_weak_exclusive(i8* %29, i32 %179, i32 %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load i32, i32* @errno, align 4
  switch i32 %185, label %194 [
    i32 132, label %186
    i32 134, label %188
    i32 131, label %190
    i32 133, label %192
  ]

186:                                              ; preds = %184
  %187 = load i32, i32* @STATUS_FILE_IS_A_DIRECTORY, align 4
  store i32 %187, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

188:                                              ; preds = %184
  %189 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %189, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

190:                                              ; preds = %184
  %191 = load i32, i32* @STATUS_NO_SUCH_FILE, align 4
  store i32 %191, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

192:                                              ; preds = %184
  %193 = load i32, i32* @STATUS_OBJECT_NAME_COLLISION, align 4
  store i32 %193, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

194:                                              ; preds = %184
  %195 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @STATUS_NO_SUCH_FILE, align 4
  store i32 %196, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

197:                                              ; preds = %178
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* @F_SETFL, align 4
  %200 = load i32, i32* @O_NONBLOCK, align 4
  %201 = call i32 @fcntl(i32 %198, i32 %199, i32 %200)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %197
  br label %206

206:                                              ; preds = %205, %137
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* @MAX_OPEN_FILES, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  %213 = call i32 @exit(i32 1) #4
  unreachable

214:                                              ; preds = %206
  %215 = load i32*, i32** %19, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = load i32*, i32** %19, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 5
  store i32* %218, i32** %225, align 8
  br label %234

226:                                              ; preds = %214
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 5
  store i32* null, i32** %233, align 8
  br label %234

234:                                              ; preds = %226, %217
  %235 = load i64, i64* %11, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  store i64 %235, i64* %242, align 8
  %243 = load i64, i64* %15, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* %18, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  store i64 %243, i64* %250, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  store i64 %251, i64* %258, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @PATH_MAX, align 4
  %268 = sub nsw i32 %267, 1
  %269 = call i32 @strncpy(i32 %266, i8* %29, i32 %268)
  %270 = load i32, i32* @False, align 4
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  store i32 %270, i32* %277, align 8
  %278 = load i32, i32* @True, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %18, align 4
  %282 = load i32*, i32** %17, align 8
  store i32 %281, i32* %282, align 4
  %283 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %283, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %284

284:                                              ; preds = %234, %194, %192, %190, %188, %186, %134, %132, %130, %104
  %285 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %285)
  %286 = load i32, i32* %9, align 4
  ret i32 %286
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @DIRFD(i32*) #2

declare dso_local i32 @open_weak_exclusive(i8*, i32, i32) #2

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local i32 @error(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strncpy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
