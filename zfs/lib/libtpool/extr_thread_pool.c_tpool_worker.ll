; ModuleID = '/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_tpool_worker.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_tpool_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { void (i8*)*, %struct.TYPE_8__*, i8* }
%struct.timespec = type { i32 }

@worker_cleanup = common dso_local global i32 0, align 4
@TP_WAIT = common dso_local global i32 0, align 4
@TP_SUSPEND = common dso_local global i32 0, align 4
@TP_DESTROY = common dso_local global i32 0, align 4
@TP_ABANDON = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@job_cleanup = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_DEFERRED = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @tpool_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tpool_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load i32, i32* @worker_cleanup, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32 @pthread_cleanup_push(i32 %15, %struct.TYPE_7__* %16)
  %18 = call i32 (...) @pthread_self()
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  br label %20

20:                                               ; preds = %215, %1
  store i32 0, i32* %4, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TP_WAIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 @notify_waiters(%struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %31, %20
  br label %35

35:                                               ; preds = %97, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp eq %struct.TYPE_8__* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TP_SUSPEND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40, %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TP_DESTROY, align 4
  %52 = load i32, i32* @TP_ABANDON, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %47, %40
  %58 = phi i1 [ false, %40 ], [ %56, %47 ]
  br i1 %58, label %59, label %98

59:                                               ; preds = %57
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67, %59
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = call i32 @pthread_cond_wait(i32* %74, i32* %76)
  br label %97

78:                                               ; preds = %67
  %79 = load i32, i32* @CLOCK_REALTIME, align 4
  %80 = call i32 @clock_gettime(i32 %79, %struct.timespec* %8)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %83
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 9
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = call i64 @pthread_cond_timedwait(i32* %90, i32* %92, %struct.timespec* %8)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %98

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %72
  br label %35

98:                                               ; preds = %95, %57
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TP_DESTROY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %216

110:                                              ; preds = %98
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TP_ABANDON, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %110
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TP_SUSPEND, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load i32, i32* @TP_SUSPEND, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 9
  %133 = call i32 @pthread_cond_broadcast(i32* %132)
  br label %134

134:                                              ; preds = %124, %117
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = icmp eq %struct.TYPE_8__* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %216

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %110
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %5, align 8
  %145 = icmp ne %struct.TYPE_8__* %144, null
  br i1 %145, label %146, label %203

146:                                              ; preds = %141
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TP_SUSPEND, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %203, label %153

153:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load void (i8*)*, void (i8*)** %155, align 8
  store void (i8*)* %156, void (i8*)** %6, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %2, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 8
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 7
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = icmp eq %struct.TYPE_8__* %165, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %153
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %172, align 8
  br label %173

173:                                              ; preds = %170, %153
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %175, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store %struct.TYPE_9__* %180, %struct.TYPE_9__** %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 5
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %183, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  %186 = call i32 @pthread_mutex_unlock(i32* %185)
  %187 = load i32, i32* @job_cleanup, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = call i32 @pthread_cleanup_push(i32 %187, %struct.TYPE_7__* %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = call i32 @free(%struct.TYPE_8__* %190)
  %192 = load i32, i32* @SIG_SETMASK, align 4
  %193 = call i32 @pthread_sigmask(i32 %192, i32* null, i32* %9)
  %194 = load void (i8*)*, void (i8*)** %6, align 8
  %195 = load i8*, i8** %2, align 8
  call void %194(i8* %195)
  %196 = load i32, i32* @SIG_SETMASK, align 4
  %197 = call i32 @pthread_sigmask(i32 %196, i32* %9, i32* null)
  %198 = load i32, i32* @PTHREAD_CANCEL_DEFERRED, align 4
  %199 = call i32 @pthread_setcanceltype(i32 %198, i32* null)
  %200 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %201 = call i32 @pthread_setcancelstate(i32 %200, i32* null)
  %202 = call i32 @pthread_cleanup_pop(i32 1)
  br label %203

203:                                              ; preds = %173, %146, %141
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %216

215:                                              ; preds = %206, %203
  br label %20

216:                                              ; preds = %214, %139, %109
  %217 = call i32 @pthread_cleanup_pop(i32 1)
  %218 = load i8*, i8** %2, align 8
  ret i8* %218
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cleanup_push(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @notify_waiters(%struct.TYPE_7__*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @pthread_setcanceltype(i32, i32*) #1

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
