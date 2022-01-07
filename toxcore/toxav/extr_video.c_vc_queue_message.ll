; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_queue_message.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RTPMessage = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@rtp_TypeVideo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Got dummy!\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid payload type!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_queue_message(i8* %0, %struct.RTPMessage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.RTPMessage*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.RTPMessage* %1, %struct.RTPMessage** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %12 = icmp ne %struct.RTPMessage* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %79

14:                                               ; preds = %10
  %15 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %16 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @rtp_TypeVideo, align 4
  %20 = add nsw i32 %19, 2
  %21 = srem i32 %20, 128
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %26 = call i32 @free(%struct.RTPMessage* %25)
  store i32 0, i32* %3, align 4
  br label %79

27:                                               ; preds = %14
  %28 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %29 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @rtp_TypeVideo, align 4
  %33 = srem i32 %32, 128
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %38 = call i32 @free(%struct.RTPMessage* %37)
  store i32 -1, i32* %3, align 4
  br label %79

39:                                               ; preds = %27
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %6, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pthread_mutex_lock(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %50 = call %struct.RTPMessage* @rb_write(i32 %48, %struct.RTPMessage* %49)
  %51 = call i32 @free(%struct.RTPMessage* %50)
  %52 = call i8* (...) @current_time_monotonic()
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %52 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 100
  br i1 %61, label %62, label %66

62:                                               ; preds = %39
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  br label %68

66:                                               ; preds = %39
  %67 = load i32, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %65, %62 ], [ %67, %66 ]
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = call i8* (...) @current_time_monotonic()
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pthread_mutex_unlock(i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %68, %35, %23, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i32 @free(%struct.RTPMessage*) #1

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local %struct.RTPMessage* @rb_write(i32, %struct.RTPMessage*) #1

declare dso_local i8* @current_time_monotonic(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
