; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_process_overflow.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_process_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_19__*, i32, i64)* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_18__*)*, i32, i64, i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rtsig process overflow\00", align 1
@ngx_cycle = common dso_local global %struct.TYPE_16__* null, align 8
@ngx_rtsig_module = common dso_local global i32 0, align 4
@overflow_current = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@overflow_list = common dso_local global %struct.TYPE_21__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rtsig overflow poll:%d\00", align 1
@ngx_errno = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"poll() failed while the overflow recover\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@NGX_POST_EVENTS = common dso_local global i64 0, align 8
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@ngx_linux_rtsig_max = common dso_local global i64 0, align 8
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_RTSIGMAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"sysctl(KERN_RTSIGMAX) failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@KERN_RTSIGNR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"sysctl(KERN_RTSIGNR) failed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"rtsig queue state: %d/%d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_UPDATE_TIME = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"rt signal queue overflow recovered\00", align 1
@overflow = common dso_local global i64 0, align 8
@ngx_event_actions = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32, i64)* @ngx_rtsig_process_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtsig_process_overflow(%struct.TYPE_19__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %23 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ngx_log_debug0(i32 %23, i32 %26, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ngx_rtsig_module, align 4
  %32 = call %struct.TYPE_17__* @ngx_event_get_conf(i32 %30, i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %22, align 8
  store i64 0, i64* %15, align 8
  br label %33

33:                                               ; preds = %374, %163, %3
  store i64 0, i64* %16, align 8
  br label %34

34:                                               ; preds = %103, %102, %62, %33
  %35 = load i64, i64* %16, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %34
  %41 = load i64, i64* @overflow_current, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %122

47:                                               ; preds = %40
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %49, align 8
  %51 = load i64, i64* @overflow_current, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @overflow_current, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %50, i64 %51
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %21, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %56 = icmp eq %struct.TYPE_20__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %47
  br label %34

63:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %74, align 8
  %76 = icmp ne i32 (%struct.TYPE_18__*)* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @POLLIN, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %70, %63
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %92, align 8
  %94 = icmp ne i32 (%struct.TYPE_18__*)* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @POLLOUT, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %95, %88, %81
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %34

103:                                              ; preds = %99
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %117 = load i64, i64* %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  store i32 0, i32* %119, align 4
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %16, align 8
  br label %34

122:                                              ; preds = %46, %34
  %123 = load i64, i64* %16, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %375

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %157, %126
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %129 = load i64, i64* %16, align 8
  %130 = call i32 @poll(%struct.TYPE_21__* %128, i64 %129, i32 0)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @ngx_log_debug1(i32 %131, i32 %134, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %159

139:                                              ; preds = %127
  %140 = load i64, i64* @ngx_errno, align 8
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* @NGX_EINTR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @NGX_LOG_INFO, align 4
  br label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @NGX_LOG_ALERT, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ngx_log_error(i32 %149, i32 %152, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* @NGX_EINTR, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %127

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %127
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %33

164:                                              ; preds = %160
  store i64 0, i64* %17, align 8
  br label %165

165:                                              ; preds = %296, %164
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* %16, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %299

169:                                              ; preds = %165
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %171, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %174 = load i64, i64* %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %172, i64 %178
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  store %struct.TYPE_20__* %180, %struct.TYPE_20__** %21, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %182 = icmp eq %struct.TYPE_20__* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %296

184:                                              ; preds = %169
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %18, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %243

192:                                              ; preds = %184
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %243, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %199, align 8
  %201 = icmp ne i32 (%struct.TYPE_18__*)* %200, null
  br i1 %201, label %202, label %243

202:                                              ; preds = %197
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %204 = load i64, i64* %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @POLLIN, align 4
  %209 = load i32, i32* @POLLERR, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @POLLHUP, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @POLLNVAL, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %207, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %243

217:                                              ; preds = %202
  %218 = load i64, i64* %15, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %15, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @NGX_POST_EVENTS, align 8
  %224 = and i64 %222, %223
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %217
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %232, i32** %20, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %234 = load i32*, i32** %20, align 8
  %235 = call i32 @ngx_post_event(%struct.TYPE_18__* %233, i32* %234)
  br label %242

236:                                              ; preds = %217
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %238, align 8
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %241 = call i32 %239(%struct.TYPE_18__* %240)
  br label %242

242:                                              ; preds = %236, %226
  br label %243

243:                                              ; preds = %242, %202, %197, %192, %184
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  store %struct.TYPE_18__* %246, %struct.TYPE_18__** %19, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %295

251:                                              ; preds = %243
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %295, label %256

256:                                              ; preds = %251
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 1
  %259 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %258, align 8
  %260 = icmp ne i32 (%struct.TYPE_18__*)* %259, null
  br i1 %260, label %261, label %295

261:                                              ; preds = %256
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** @overflow_list, align 8
  %263 = load i64, i64* %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @POLLOUT, align 4
  %268 = load i32, i32* @POLLERR, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @POLLHUP, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @POLLNVAL, align 4
  %273 = or i32 %271, %272
  %274 = and i32 %266, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %261
  %277 = load i64, i64* %15, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %15, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  store i32 1, i32* %280, align 8
  %281 = load i64, i64* %7, align 8
  %282 = load i64, i64* @NGX_POST_EVENTS, align 8
  %283 = and i64 %281, %282
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %287 = call i32 @ngx_post_event(%struct.TYPE_18__* %286, i32* @ngx_posted_events)
  br label %294

288:                                              ; preds = %276
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %290, align 8
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %293 = call i32 %291(%struct.TYPE_18__* %292)
  br label %294

294:                                              ; preds = %288, %285
  br label %295

295:                                              ; preds = %294, %261, %256, %251, %243
  br label %296

296:                                              ; preds = %295, %183
  %297 = load i64, i64* %17, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %17, align 8
  br label %165

299:                                              ; preds = %165
  %300 = load i64, i64* %15, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = icmp uge i64 %300, %303
  br i1 %304, label %305, label %374

305:                                              ; preds = %299
  %306 = load i64, i64* @ngx_linux_rtsig_max, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %364

308:                                              ; preds = %305
  %309 = load i32, i32* @CTL_KERN, align 4
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %309, i32* %310, align 4
  %311 = load i32, i32* @KERN_RTSIGMAX, align 4
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %311, i32* %312, align 4
  store i64 4, i64* %13, align 8
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %314 = call i32 @sysctl(i32* %313, i32 2, i32* %9, i64* %13, i32* null, i32 0)
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %324

316:                                              ; preds = %308
  %317 = load i32, i32* @NGX_LOG_ALERT, align 4
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @errno, align 4
  %322 = call i32 @ngx_log_error(i32 %317, i32 %320, i32 %321, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %323 = load i64, i64* @NGX_ERROR, align 8
  store i64 %323, i64* %4, align 8
  br label %389

324:                                              ; preds = %308
  %325 = load i32, i32* @KERN_RTSIGNR, align 4
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %325, i32* %326, align 4
  store i64 4, i64* %13, align 8
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %328 = call i32 @sysctl(i32* %327, i32 2, i32* %10, i64* %13, i32* null, i32 0)
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %338

330:                                              ; preds = %324
  %331 = load i32, i32* @NGX_LOG_ALERT, align 4
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @errno, align 4
  %336 = call i32 @ngx_log_error(i32 %331, i32 %334, i32 %335, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %337 = load i64, i64* @NGX_ERROR, align 8
  store i64 %337, i64* %4, align 8
  br label %389

338:                                              ; preds = %324
  %339 = load i32, i32* %9, align 4
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = trunc i64 %342 to i32
  %344 = sdiv i32 %339, %343
  %345 = load i32, i32* %10, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %363

347:                                              ; preds = %338
  %348 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @ngx_log_debug2(i32 %348, i32 %351, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %361, %347
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %357 = load i64, i64* %7, align 8
  %358 = call i64 @ngx_rtsig_process_events(%struct.TYPE_19__* %356, i32 0, i64 %357)
  %359 = load i64, i64* @NGX_OK, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %355
  br label %355

362:                                              ; preds = %355
  br label %363

363:                                              ; preds = %362, %338
  br label %373

364:                                              ; preds = %305
  br label %365

365:                                              ; preds = %371, %364
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %367 = load i64, i64* %7, align 8
  %368 = call i64 @ngx_rtsig_process_events(%struct.TYPE_19__* %366, i32 0, i64 %367)
  %369 = load i64, i64* @NGX_OK, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  br label %365

372:                                              ; preds = %365
  br label %373

373:                                              ; preds = %372, %363
  store i64 0, i64* %15, align 8
  br label %374

374:                                              ; preds = %373, %299
  br label %33

375:                                              ; preds = %125
  %376 = load i64, i64* %7, align 8
  %377 = load i64, i64* @NGX_UPDATE_TIME, align 8
  %378 = and i64 %376, %377
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %375
  %381 = call i32 (...) @ngx_time_update()
  br label %382

382:                                              ; preds = %380, %375
  %383 = load i32, i32* @NGX_LOG_ALERT, align 4
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @ngx_log_error(i32 %383, i32 %386, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* @overflow, align 8
  store i64 (%struct.TYPE_19__*, i32, i64)* @ngx_rtsig_process_events, i64 (%struct.TYPE_19__*, i32, i64)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_event_actions, i32 0, i32 0), align 8
  %388 = load i64, i64* @NGX_OK, align 8
  store i64 %388, i64* %4, align 8
  br label %389

389:                                              ; preds = %382, %330, %316
  %390 = load i64, i64* %4, align 8
  ret i64 %390
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @poll(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_rtsig_process_events(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @ngx_time_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
