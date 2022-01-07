; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_msi_kill.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_msi_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32 }
%struct.Messenger = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Tried to terminate non-existing session\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to aquire lock on msi mutex\00", align 1
@requ_pop = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Terminated session: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_kill(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.Messenger*
  %16 = call i32 @m_callback_msi_packet(%struct.Messenger* %15, i32* null, i32* null)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @pthread_mutex_trylock(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

24:                                               ; preds = %11
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i32, i32* @requ_pop, align 4
  %31 = call i32 @msg_init(i32* %4, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_10__* @get_call(%struct.TYPE_9__* %32, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %5, align 8
  br label %37

37:                                               ; preds = %40, %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @send_message(i64 %43, i32 %46, i32* %4)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i32 @kill_call(%struct.TYPE_10__* %52)
  br label %37

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pthread_mutex_unlock(i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pthread_mutex_destroy(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = call i32 @free(%struct.TYPE_9__* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %55, %22, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @LOGGER_ERROR(i8*) #1

declare dso_local i32 @m_callback_msi_packet(%struct.Messenger*, i32*, i32*) #1

declare dso_local i64 @pthread_mutex_trylock(i32) #1

declare dso_local i32 @msg_init(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @get_call(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @send_message(i64, i32, i32*) #1

declare dso_local i32 @kill_call(%struct.TYPE_10__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32) #1

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
