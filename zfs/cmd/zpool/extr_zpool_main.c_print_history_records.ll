; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_history_records.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_history_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.tm = type { i32 }
%struct.passwd = type { i8* }

@ZPOOL_HIST_RECORD = common dso_local global i32 0, align 4
@ZPOOL_HIST_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%F.%T\00", align 1
@ZPOOL_HIST_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@ZPOOL_HIST_INT_EVENT = common dso_local global i32 0, align 4
@ZFS_NUM_LEGACY_HISTORY_EVENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s unrecognized record:\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s [internal %s txg:%lld] %s\00", align 1
@zfs_history_event_names = common dso_local global i8** null, align 8
@ZPOOL_HIST_TXG = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_STR = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"%s [txg:%lld] %s\00", align 1
@ZPOOL_HIST_DSNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" %s (%llu)\00", align 1
@ZPOOL_HIST_DSID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@ZPOOL_HIST_IOCTL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"%s ioctl %s\0A\00", align 1
@ZPOOL_HIST_INPUT_NVL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"    input:\0A\00", align 1
@ZPOOL_HIST_OUTPUT_NVL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"    output:\0A\00", align 1
@ZPOOL_HIST_ERRNO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"    errno: %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@ZPOOL_HIST_WHO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"user %d \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@ZPOOL_HIST_HOST = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"on %s\00", align 1
@ZPOOL_HIST_ZONE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @print_history_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_history_records(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [30 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tm, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.passwd*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @ZPOOL_HIST_RECORD, align 4
  %17 = call i64 @nvlist_lookup_nvlist_array(i32* %15, i32 %16, i32*** %5, i32* %6)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @verify(i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %253, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %256

25:                                               ; preds = %21
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = bitcast [30 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 30, i1 false)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @ZPOOL_HIST_TIME, align 4
  %34 = call i64 @nvlist_exists(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load i32**, i32*** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @ZPOOL_HIST_TIME, align 4
  %43 = call i8* @fnvlist_lookup_uint64(i32* %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = call i32 @localtime_r(i8** %10, %struct.tm* %11)
  %45 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %46 = call i32 @strftime(i8* %45, i32 30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %11)
  br label %47

47:                                               ; preds = %36, %25
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @ZPOOL_HIST_CMD, align 4
  %50 = call i64 @nvlist_exists(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @ZPOOL_HIST_CMD, align 4
  %56 = call i8* @fnvlist_lookup_string(i32* %54, i32 %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %56)
  br label %200

58:                                               ; preds = %47
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @ZPOOL_HIST_INT_EVENT, align 4
  %61 = call i64 @nvlist_exists(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @ZPOOL_HIST_INT_EVENT, align 4
  %66 = call i8* @fnvlist_lookup_uint64(i32* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %253

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @ZFS_NUM_LEGACY_HISTORY_EVENTS, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @dump_nvlist(i32* %80, i32 4)
  br label %253

82:                                               ; preds = %73
  %83 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %84 = load i8**, i8*** @zfs_history_event_names, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %91 = call i8* @fnvlist_lookup_uint64(i32* %89, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %95 = call i8* @fnvlist_lookup_string(i32* %93, i32 %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* %88, i32 %92, i8* %95)
  br label %199

97:                                               ; preds = %58
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %100 = call i64 @nvlist_exists(i32* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %97
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %253

108:                                              ; preds = %102
  %109 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %112 = call i8* @fnvlist_lookup_uint64(i32* %110, i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %116 = call i8* @fnvlist_lookup_string(i32* %114, i32 %115)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %109, i32 %113, i8* %116)
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @ZPOOL_HIST_DSNAME, align 4
  %120 = call i64 @nvlist_exists(i32* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %108
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* @ZPOOL_HIST_DSNAME, align 4
  %125 = call i8* @fnvlist_lookup_string(i32* %123, i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @ZPOOL_HIST_DSID, align 4
  %128 = call i8* @fnvlist_lookup_uint64(i32* %126, i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %125, i32 %129)
  br label %131

131:                                              ; preds = %122, %108
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %134 = call i8* @fnvlist_lookup_string(i32* %132, i32 %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %134)
  br label %198

136:                                              ; preds = %97
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* @ZPOOL_HIST_IOCTL, align 4
  %139 = call i64 @nvlist_exists(i32* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %186

141:                                              ; preds = %136
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  br label %253

147:                                              ; preds = %141
  %148 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* @ZPOOL_HIST_IOCTL, align 4
  %151 = call i8* @fnvlist_lookup_string(i32* %149, i32 %150)
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %148, i8* %151)
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @ZPOOL_HIST_INPUT_NVL, align 4
  %155 = call i64 @nvlist_exists(i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* @ZPOOL_HIST_INPUT_NVL, align 4
  %161 = call i32* @fnvlist_lookup_nvlist(i32* %159, i32 %160)
  %162 = call i32 @dump_nvlist(i32* %161, i32 8)
  br label %163

163:                                              ; preds = %157, %147
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* @ZPOOL_HIST_OUTPUT_NVL, align 4
  %166 = call i64 @nvlist_exists(i32* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* @ZPOOL_HIST_OUTPUT_NVL, align 4
  %172 = call i32* @fnvlist_lookup_nvlist(i32* %170, i32 %171)
  %173 = call i32 @dump_nvlist(i32* %172, i32 8)
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* @ZPOOL_HIST_ERRNO, align 4
  %177 = call i64 @nvlist_exists(i32* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* @ZPOOL_HIST_ERRNO, align 4
  %182 = call i64 @fnvlist_lookup_int64(i32* %180, i32 %181)
  %183 = trunc i64 %182 to i32
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %174
  br label %197

186:                                              ; preds = %136
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  br label %253

192:                                              ; preds = %186
  %193 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %193)
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @dump_nvlist(i32* %195, i32 4)
  br label %197

197:                                              ; preds = %192, %185
  br label %198

198:                                              ; preds = %197, %131
  br label %199

199:                                              ; preds = %198, %82
  br label %200

200:                                              ; preds = %199, %52
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %253

207:                                              ; preds = %200
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %211 = call i64 @nvlist_exists(i32* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %207
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %216 = call i8* @fnvlist_lookup_uint64(i32* %214, i32 %215)
  store i8* %216, i8** %13, align 8
  %217 = load i8*, i8** %13, align 8
  %218 = call %struct.passwd* @getpwuid(i8* %217)
  store %struct.passwd* %218, %struct.passwd** %14, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = ptrtoint i8* %219 to i32
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %220)
  %222 = load %struct.passwd*, %struct.passwd** %14, align 8
  %223 = icmp ne %struct.passwd* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %213
  %225 = load %struct.passwd*, %struct.passwd** %14, align 8
  %226 = getelementptr inbounds %struct.passwd, %struct.passwd* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %227)
  br label %229

229:                                              ; preds = %224, %213
  br label %230

230:                                              ; preds = %229, %207
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* @ZPOOL_HIST_HOST, align 4
  %233 = call i64 @nvlist_exists(i32* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* @ZPOOL_HIST_HOST, align 4
  %238 = call i8* @fnvlist_lookup_string(i32* %236, i32 %237)
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %235, %230
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %243 = call i64 @nvlist_exists(i32* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load i32*, i32** %8, align 8
  %247 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %248 = call i8* @fnvlist_lookup_string(i32* %246, i32 %247)
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %245, %240
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %205, %191, %146, %107, %77, %72
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %7, align 4
  br label %21

256:                                              ; preds = %21
  ret void
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i8* @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @localtime_r(i8**, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i64 @fnvlist_lookup_int64(i32*, i32) #1

declare dso_local %struct.passwd* @getpwuid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
