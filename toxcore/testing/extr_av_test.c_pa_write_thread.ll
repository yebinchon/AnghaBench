; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_pa_write_thread.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_pa_write_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@adout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pa_write_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* @adout, align 4
  %10 = call i64 @Pa_IsStreamActive(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pthread_mutex_lock(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %struct.TYPE_4__** %5 to i8**
  %21 = call i64 @rb_read(i32 %19, i8** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pthread_mutex_unlock(i32 %26)
  %28 = load i32, i32* @adout, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @Pa_WriteStream(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = call i32 @free(%struct.TYPE_4__* %36)
  br label %44

38:                                               ; preds = %12
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pthread_mutex_unlock(i32 %41)
  %43 = call i32 @c_sleep(i32 10)
  br label %44

44:                                               ; preds = %38, %23
  br label %8

45:                                               ; preds = %8
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i64 @Pa_IsStreamActive(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i64 @rb_read(i32, i8**) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32 @Pa_WriteStream(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @c_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
