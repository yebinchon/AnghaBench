; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_mq-mgr.c_seaf_mq_manager_pop_message.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_mq-mgr.c_seaf_mq_manager_pop_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SEAFILE_NOTIFY_CHAN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unkonwn message channel %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_mq_manager_pop_message(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load i8*, i8** @SEAFILE_NOTIFY_CHAN, align 8
  store i8* %6, i8** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @g_hash_table_lookup(i32 %11, i8* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32* null, i32** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @g_async_queue_try_pop(i32* %20)
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32* @g_async_queue_try_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
