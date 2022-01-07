; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_start.c_thread_worker.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_start.c_thread_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_parm = type { i32, i32, %struct.monitor* }
%struct.monitor = type { i32, i32, i32, i32, %struct.skynet_monitor** }
%struct.skynet_monitor = type { i32 }
%struct.message_queue = type { i32 }

@THREAD_WORKER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unlock mutex error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker_parm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.monitor*, align 8
  %7 = alloca %struct.skynet_monitor*, align 8
  %8 = alloca %struct.message_queue*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.worker_parm*
  store %struct.worker_parm* %10, %struct.worker_parm** %3, align 8
  %11 = load %struct.worker_parm*, %struct.worker_parm** %3, align 8
  %12 = getelementptr inbounds %struct.worker_parm, %struct.worker_parm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.worker_parm*, %struct.worker_parm** %3, align 8
  %15 = getelementptr inbounds %struct.worker_parm, %struct.worker_parm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.worker_parm*, %struct.worker_parm** %3, align 8
  %18 = getelementptr inbounds %struct.worker_parm, %struct.worker_parm* %17, i32 0, i32 2
  %19 = load %struct.monitor*, %struct.monitor** %18, align 8
  store %struct.monitor* %19, %struct.monitor** %6, align 8
  %20 = load %struct.monitor*, %struct.monitor** %6, align 8
  %21 = getelementptr inbounds %struct.monitor, %struct.monitor* %20, i32 0, i32 4
  %22 = load %struct.skynet_monitor**, %struct.skynet_monitor*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.skynet_monitor*, %struct.skynet_monitor** %22, i64 %24
  %26 = load %struct.skynet_monitor*, %struct.skynet_monitor** %25, align 8
  store %struct.skynet_monitor* %26, %struct.skynet_monitor** %7, align 8
  %27 = load i32, i32* @THREAD_WORKER, align 4
  %28 = call i32 @skynet_initthread(i32 %27)
  store %struct.message_queue* null, %struct.message_queue** %8, align 8
  br label %29

29:                                               ; preds = %77, %1
  %30 = load %struct.monitor*, %struct.monitor** %6, align 8
  %31 = getelementptr inbounds %struct.monitor, %struct.monitor* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %78

35:                                               ; preds = %29
  %36 = load %struct.skynet_monitor*, %struct.skynet_monitor** %7, align 8
  %37 = load %struct.message_queue*, %struct.message_queue** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.message_queue* @skynet_context_message_dispatch(%struct.skynet_monitor* %36, %struct.message_queue* %37, i32 %38)
  store %struct.message_queue* %39, %struct.message_queue** %8, align 8
  %40 = load %struct.message_queue*, %struct.message_queue** %8, align 8
  %41 = icmp eq %struct.message_queue* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %35
  %43 = load %struct.monitor*, %struct.monitor** %6, align 8
  %44 = getelementptr inbounds %struct.monitor, %struct.monitor* %43, i32 0, i32 0
  %45 = call i64 @pthread_mutex_lock(i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load %struct.monitor*, %struct.monitor** %6, align 8
  %49 = getelementptr inbounds %struct.monitor, %struct.monitor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.monitor*, %struct.monitor** %6, align 8
  %53 = getelementptr inbounds %struct.monitor, %struct.monitor* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.monitor*, %struct.monitor** %6, align 8
  %58 = getelementptr inbounds %struct.monitor, %struct.monitor* %57, i32 0, i32 2
  %59 = load %struct.monitor*, %struct.monitor** %6, align 8
  %60 = getelementptr inbounds %struct.monitor, %struct.monitor* %59, i32 0, i32 0
  %61 = call i32 @pthread_cond_wait(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %56, %47
  %63 = load %struct.monitor*, %struct.monitor** %6, align 8
  %64 = getelementptr inbounds %struct.monitor, %struct.monitor* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.monitor*, %struct.monitor** %6, align 8
  %68 = getelementptr inbounds %struct.monitor, %struct.monitor* %67, i32 0, i32 0
  %69 = call i64 @pthread_mutex_unlock(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %35
  br label %29

78:                                               ; preds = %29
  ret i8* null
}

declare dso_local i32 @skynet_initthread(i32) #1

declare dso_local %struct.message_queue* @skynet_context_message_dispatch(%struct.skynet_monitor*, %struct.message_queue*, i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
