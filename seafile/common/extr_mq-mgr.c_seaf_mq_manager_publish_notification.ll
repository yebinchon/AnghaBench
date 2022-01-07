; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_mq-mgr.c_seaf_mq_manager_publish_notification.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_mq-mgr.c_seaf_mq_manager_publish_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SEAFILE_NOTIFY_CHAN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unkonwn message channel %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"type and content should not be NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seaf_mq_manager_publish_notification(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** @SEAFILE_NOTIFY_CHAN, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32* @g_hash_table_lookup(i32 %15, i8* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %44

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %23
  %30 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %44

31:                                               ; preds = %26
  %32 = call i32* (...) @json_object()
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @json_string(i8* %34)
  %36 = call i32 @json_object_set_new(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @json_string(i8* %38)
  %40 = call i32 @json_object_set_new(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @g_async_queue_push(i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %31, %29, %20
  ret void
}

declare dso_local i32* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local i32 @g_async_queue_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
