; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bio.c_bioProcessBackgroundJobs.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bio.c_bioProcessBackgroundJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_job = type { i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.bio_job* }

@BIO_NUM_OPS = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Warning: bio thread started with wrong type %lu\00", align 1
@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ASYNCHRONOUS = common dso_local global i32 0, align 4
@bio_mutex = common dso_local global i32* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Warning: can't mask SIGALRM in bio.c thread: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@bio_jobs = common dso_local global i32* null, align 8
@bio_newjob_cond = common dso_local global i32* null, align 8
@BIO_CLOSE_FILE = common dso_local global i64 0, align 8
@BIO_AOF_FSYNC = common dso_local global i64 0, align 8
@BIO_LAZY_FREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Wrong job type in bioProcessBackgroundJobs().\00", align 1
@bio_pending = common dso_local global i32* null, align 8
@bio_step_cond = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bioProcessBackgroundJobs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bio_job*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BIO_NUM_OPS, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @LL_WARNING, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @serverLog(i32 %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %14)
  ret i8* null

16:                                               ; preds = %1
  %17 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %18 = call i32 @pthread_setcancelstate(i32 %17, i32* null)
  %19 = load i32, i32* @PTHREAD_CANCEL_ASYNCHRONOUS, align 4
  %20 = call i32 @pthread_setcanceltype(i32 %19, i32* null)
  %21 = load i32*, i32** @bio_mutex, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = call i32 @sigemptyset(i32* %5)
  %26 = load i32, i32* @SIGALRM, align 4
  %27 = call i32 @sigaddset(i32* %5, i32 %26)
  %28 = load i32, i32* @SIG_BLOCK, align 4
  %29 = call i64 @pthread_sigmask(i32 %28, i32* %5, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load i32, i32* @LL_WARNING, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i64 @strerror(i32 %33)
  %35 = call i32 @serverLog(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %31, %16
  br label %37

37:                                               ; preds = %36, %44, %131
  %38 = load i32*, i32** @bio_jobs, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @listLength(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32*, i32** @bio_newjob_cond, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32*, i32** @bio_mutex, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @pthread_cond_wait(i32* %47, i32* %50)
  br label %37

52:                                               ; preds = %37
  %53 = load i32*, i32** @bio_jobs, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_4__* @listFirst(i32 %56)
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.bio_job*, %struct.bio_job** %59, align 8
  store %struct.bio_job* %60, %struct.bio_job** %3, align 8
  %61 = load i32*, i32** @bio_mutex, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @pthread_mutex_unlock(i32* %63)
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @BIO_CLOSE_FILE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %70 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @close(i64 %71)
  br label %131

73:                                               ; preds = %52
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @BIO_AOF_FSYNC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %79 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @redis_fsync(i64 %80)
  br label %130

82:                                               ; preds = %73
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @BIO_LAZY_FREE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %82
  %87 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %88 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %93 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @lazyfreeFreeObjectFromBioThread(i64 %94)
  br label %126

96:                                               ; preds = %86
  %97 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %98 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %103 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %108 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %111 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @lazyfreeFreeDatabaseFromBioThread(i64 %109, i64 %112)
  br label %125

114:                                              ; preds = %101, %96
  %115 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %116 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %121 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @lazyfreeFreeSlotsMapFromBioThread(i64 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %106
  br label %126

126:                                              ; preds = %125, %91
  br label %129

127:                                              ; preds = %82
  %128 = call i32 @serverPanic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %126
  br label %130

130:                                              ; preds = %129, %77
  br label %131

131:                                              ; preds = %130, %68
  %132 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %133 = call i32 @zfree(%struct.bio_job* %132)
  %134 = load i32*, i32** @bio_mutex, align 8
  %135 = load i64, i64* %4, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = call i32 @pthread_mutex_lock(i32* %136)
  %138 = load i32*, i32** @bio_jobs, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = call i32 @listDelNode(i32 %141, %struct.TYPE_4__* %142)
  %144 = load i32*, i32** @bio_pending, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** @bio_step_cond, align 8
  %150 = load i64, i64* %4, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = call i32 @pthread_cond_broadcast(i32* %151)
  br label %37
}

declare dso_local i32 @serverLog(i32, i8*, i64) #1

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_setcanceltype(i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @listFirst(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @redis_fsync(i64) #1

declare dso_local i32 @lazyfreeFreeObjectFromBioThread(i64) #1

declare dso_local i32 @lazyfreeFreeDatabaseFromBioThread(i64, i64) #1

declare dso_local i32 @lazyfreeFreeSlotsMapFromBioThread(i64) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @zfree(%struct.bio_job*) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
