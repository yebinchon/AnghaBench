; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleLoadFromQueue.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleLoadFromQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.moduleLoadQueueEntry* }
%struct.moduleLoadQueueEntry = type { i32, i32, i64 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@C_ERR = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Can't load module from %s: server aborting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleLoadFromQueue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.moduleLoadQueueEntry*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %5 = call i32 @listRewind(i32 %4, i32* %1)
  br label %6

6:                                                ; preds = %33, %0
  %7 = call %struct.TYPE_4__* @listNext(i32* %1)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %2, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %11, align 8
  store %struct.moduleLoadQueueEntry* %12, %struct.moduleLoadQueueEntry** %3, align 8
  %13 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %3, align 8
  %14 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %3, align 8
  %17 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8**
  %20 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %3, align 8
  %21 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @moduleLoad(i32 %15, i8** %19, i32 %22)
  %24 = load i64, i64* @C_ERR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %9
  %27 = load i32, i32* @LL_WARNING, align 4
  %28 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %3, align 8
  %29 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @serverLog(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %9
  br label %6

34:                                               ; preds = %6
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @listNext(i32*) #1

declare dso_local i64 @moduleLoad(i32, i8**, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

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
