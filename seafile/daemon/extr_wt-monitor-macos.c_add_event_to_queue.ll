; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_add_event_to_queue.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_add_event_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@G_NORMALIZE_NFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"create/update\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"scan dir\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"attribute change\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Adding event: %s, %s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*, i8*)* @add_event_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_event_to_queue(%struct.TYPE_3__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @G_NORMALIZE_NFC, align 4
  %19 = call i8* @g_utf8_normalize(i8* %17, i32 -1, i32 %18)
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @G_NORMALIZE_NFC, align 4
  %26 = call i8* @g_utf8_normalize(i8* %24, i32 -1, i32 %25)
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32* @wt_event_new(i32 %28, i8* %29, i8* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @g_free(i8* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @g_free(i8* %34)
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %43 [
    i32 132, label %37
    i32 128, label %38
    i32 131, label %39
    i32 129, label %40
    i32 130, label %41
    i32 133, label %42
  ]

37:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %44

38:                                               ; preds = %27
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %44

39:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %44

40:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %44

41:                                               ; preds = %27
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %44

42:                                               ; preds = %27
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %44

43:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38, %37
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %51 ]
  %54 = call i32 @seaf_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %45, i8* %46, i8* %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = call i32 @pthread_mutex_lock(i32* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @g_queue_push_tail(i32 %60, i32* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 132
  br i1 %67, label %68, label %94

68:                                               ; preds = %52
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @pthread_mutex_lock(i32* %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @g_queue_peek_tail(i32 %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i64 @strcmp(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78, %68
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = call i32* @g_strdup(i8* %87)
  %89 = call i32 @g_queue_push_tail(i32 %86, i32* %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i32 @pthread_mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %52
  ret void
}

declare dso_local i8* @g_utf8_normalize(i8*, i32, i32) #1

declare dso_local i32* @wt_event_new(i32, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_debug(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @g_queue_push_tail(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i8* @g_queue_peek_tail(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
