; ModuleID = '/home/carl/AnghaBench/vlc/src/android/extr_thread.c_vlc_clone_attr.c'
source_filename = "/home/carl/AnghaBench/vlc/src/android/extr_thread.c_vlc_clone_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* (i8*)*, i32, %struct.TYPE_6__, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@detached_thread = common dso_local global i32 0, align 4
@joinable_thread = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, i8* (i8*)*, i8*, i32)* @vlc_clone_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_clone_attr(%struct.TYPE_7__** %0, i8* (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8* (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i8* (i8*)* %1, i8* (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call %struct.TYPE_7__* @malloc(i32 56)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %5, align 4
  br label %90

23:                                               ; preds = %4
  %24 = call i32 @sigemptyset(i32* %13)
  %25 = load i32, i32* @SIGHUP, align 4
  %26 = call i32 @sigdelset(i32* %13, i32 %25)
  %27 = load i32, i32* @SIGINT, align 4
  %28 = call i32 @sigaddset(i32* %13, i32 %27)
  %29 = load i32, i32* @SIGQUIT, align 4
  %30 = call i32 @sigaddset(i32* %13, i32 %29)
  %31 = load i32, i32* @SIGTERM, align 4
  %32 = call i32 @sigaddset(i32* %13, i32 %31)
  %33 = load i32, i32* @SIGPIPE, align 4
  %34 = call i32 @sigaddset(i32* %13, i32 %33)
  %35 = load i32, i32* @SIG_BLOCK, align 4
  %36 = call i32 @pthread_sigmask(i32 %35, i32* %13, i32* %12)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %23
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = call i32 @vlc_sem_init(i32* %41, i32 0)
  br label %43

43:                                               ; preds = %39, %23
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = call i32 @atomic_store(i32* %45, i32 0)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i8* (i8*)* %49, i8* (i8*)** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @vlc_mutex_init(i32* %60)
  %62 = call i32 @pthread_attr_init(i32* %14)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %43
  %66 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  br label %69

67:                                               ; preds = %43
  %68 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @pthread_attr_setdetachstate(i32* %14, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @detached_thread, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @joinable_thread, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = call i32 @pthread_create(i32* %73, i32* %14, i32 %81, %struct.TYPE_7__* %82)
  store i32 %83, i32* %11, align 4
  %84 = call i32 @pthread_attr_destroy(i32* %14)
  %85 = load i32, i32* @SIG_SETMASK, align 4
  %86 = call i32 @pthread_sigmask(i32 %85, i32* %12, i32* null)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %88, align 8
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %80, %21
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
