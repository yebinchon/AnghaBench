; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_wait.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i8**, i8*, i8*, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_WAIT_NUM_ACTIVITIES = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"HpT:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@zpool_do_wait.col_subopts = internal global [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"resilver\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"scrub\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"invalid activity '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"missing 'pool' argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@wait_status_thread = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to create statusthread: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_wait(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i8*, i8** @B_FALSE, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %22 = load i8*, i8** @B_FALSE, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @B_FALSE, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @B_FALSE, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %29 = call i32 @sem_init(i32* %28, i32 0, i32 0)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %41, %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ZPOOL_WAIT_NUM_ACTIVITIES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i8*, i8** @B_TRUE, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %35, i8** %40, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %30

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = call signext i8 @getopt(i32 %46, i8** %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8 %48, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %102

51:                                               ; preds = %45
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %101 [
    i32 72, label %54
    i32 110, label %57
    i32 112, label %60
    i32 84, label %63
    i32 116, label %67
    i32 63, label %94
  ]

54:                                               ; preds = %51
  %55 = load i8*, i8** @B_TRUE, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  store i8* %55, i8** %56, align 8
  br label %101

57:                                               ; preds = %51
  %58 = load i8*, i8** @B_TRUE, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  store i8* %58, i8** %59, align 8
  br label %101

60:                                               ; preds = %51
  %61 = load i8*, i8** @B_TRUE, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i8* %61, i8** %62, align 8
  br label %101

63:                                               ; preds = %51
  %64 = load i8*, i8** @optarg, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @get_timestamp_arg(i8 signext %65)
  br label %101

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %69 = call i32 @bzero(i8*** %68, i32 8)
  br label %70

70:                                               ; preds = %86, %67
  %71 = load i8*, i8** @optarg, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = call i32 @getsubopt(i8** @optarg, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @zpool_do_wait.col_subopts, i64 0, i64 0), i8** %8)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* %81, i8* %82)
  %84 = load i8*, i8** @B_FALSE, align 8
  %85 = call i32 @usage(i8* %84)
  br label %86

86:                                               ; preds = %79, %75
  %87 = load i8*, i8** @B_TRUE, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %87, i8** %92, align 8
  br label %70

93:                                               ; preds = %70
  br label %101

94:                                               ; preds = %51
  %95 = load i32, i32* @stderr, align 4
  %96 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %97 = load i32, i32* @optopt, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* %96, i32 %97)
  %99 = load i8*, i8** @B_FALSE, align 8
  %100 = call i32 @usage(i8* %99)
  br label %101

101:                                              ; preds = %94, %51, %93, %63, %60, %57, %54
  br label %45

102:                                              ; preds = %45
  %103 = load i64, i64* @optind, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  %108 = load i64, i64* @optind, align 8
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 %108
  store i8** %110, i8*** %5, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %113 = call i32 @get_interval_count(i32* %4, i8** %111, i64* %112, i64* %10)
  %114 = load i64, i64* %10, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %102
  %117 = load i32, i32* @stderr, align 4
  %118 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* %118)
  %120 = load i8*, i8** @B_FALSE, align 8
  %121 = call i32 @usage(i8* %120)
  br label %122

122:                                              ; preds = %116, %102
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8*, i8** @B_TRUE, align 8
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32, i32* @stderr, align 4
  %134 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* %134)
  %136 = load i8*, i8** @B_FALSE, align 8
  %137 = call i32 @usage(i8* %136)
  br label %138

138:                                              ; preds = %132, %129
  %139 = load i32, i32* %4, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* @stderr, align 4
  %143 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* %143)
  %145 = load i8*, i8** @B_FALSE, align 8
  %146 = call i32 @usage(i8* %145)
  br label %147

147:                                              ; preds = %141, %138
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i8* %150, i8** %151, align 8
  %152 = load i32, i32* @g_zfs, align 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32* @zpool_open(i32 %152, i8* %154)
  store i32* %155, i32** %13, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  store i32 1, i32* %3, align 4
  br label %247

158:                                              ; preds = %147
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i32, i32* @wait_status_thread, align 4
  %163 = call i64 @pthread_create(i32* %11, i32* null, i32 %162, %struct.TYPE_3__* %14)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load i32, i32* @stderr, align 4
  %167 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %168 = load i32, i32* @errno, align 4
  %169 = call i8* @strerror(i32 %168)
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* %167, i8* %169)
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @zpool_close(i32* %171)
  store i32 1, i32* %3, align 4
  br label %247

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %158
  br label %175

175:                                              ; preds = %225, %174
  %176 = load i8*, i8** @B_FALSE, align 8
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %16, align 4
  %178 = load i8*, i8** @B_FALSE, align 8
  %179 = ptrtoint i8* %178 to i32
  store i32 %179, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %212, %175
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @ZPOOL_WAIT_NUM_ACTIVITIES, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %186 = load i8**, i8*** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  br label %212

193:                                              ; preds = %184
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @zpool_wait_status(i32* %194, i32 %195, i32* %16, i32* %18)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %193
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199, %193
  br label %215

203:                                              ; preds = %199
  %204 = load i32, i32* %17, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br label %209

209:                                              ; preds = %206, %203
  %210 = phi i1 [ true, %203 ], [ %208, %206 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %209, %192
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %180

215:                                              ; preds = %202, %180
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %17, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221, %218, %215
  br label %226

225:                                              ; preds = %221
  br label %175

226:                                              ; preds = %224
  %227 = load i32*, i32** %13, align 8
  %228 = call i32 @zpool_close(i32* %227)
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %233 = call i32 @sem_post(i32* %232)
  %234 = load i32, i32* %11, align 4
  %235 = bitcast i64* %19 to i8*
  %236 = call i32 @pthread_join(i32 %234, i8* %235)
  %237 = load i64, i64* %19, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load i64, i64* %19, align 8
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %239, %231
  br label %243

243:                                              ; preds = %242, %226
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %245 = call i32 @sem_destroy(i32* %244)
  %246 = load i32, i32* %12, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %243, %165, %157
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @get_timestamp_arg(i8 signext) #1

declare dso_local i32 @bzero(i8***, i32) #1

declare dso_local i32 @getsubopt(i8**, i8**, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @get_interval_count(i32*, i8**, i64*, i64*) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32 @zpool_wait_status(i32*, i32, i32*, i32*) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @pthread_join(i32, i8*) #1

declare dso_local i32 @sem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
