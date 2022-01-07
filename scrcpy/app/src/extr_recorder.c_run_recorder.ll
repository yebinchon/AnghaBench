; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_recorder.c_run_recorder.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_recorder.c_run_recorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recorder = type { i32, i32, i32, %struct.record_packet*, i64, i32 }
%struct.record_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Could not record last packet\00", align 1
@next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not record packet\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Recorder thread ended\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_recorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_recorder(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.recorder*, align 8
  %4 = alloca %struct.record_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.record_packet*, align 8
  %7 = alloca %struct.record_packet*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.recorder*
  store %struct.recorder* %10, %struct.recorder** %3, align 8
  br label %11

11:                                               ; preds = %126, %89, %1
  %12 = load %struct.recorder*, %struct.recorder** %3, align 8
  %13 = getelementptr inbounds %struct.recorder, %struct.recorder* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mutex_lock(i32 %14)
  br label %16

16:                                               ; preds = %28, %11
  %17 = load %struct.recorder*, %struct.recorder** %3, align 8
  %18 = getelementptr inbounds %struct.recorder, %struct.recorder* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.recorder*, %struct.recorder** %3, align 8
  %23 = getelementptr inbounds %struct.recorder, %struct.recorder* %22, i32 0, i32 2
  %24 = call i64 @queue_is_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load %struct.recorder*, %struct.recorder** %3, align 8
  %30 = getelementptr inbounds %struct.recorder, %struct.recorder* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.recorder*, %struct.recorder** %3, align 8
  %33 = getelementptr inbounds %struct.recorder, %struct.recorder* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cond_wait(i32 %31, i32 %34)
  br label %16

36:                                               ; preds = %26
  %37 = load %struct.recorder*, %struct.recorder** %3, align 8
  %38 = getelementptr inbounds %struct.recorder, %struct.recorder* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load %struct.recorder*, %struct.recorder** %3, align 8
  %43 = getelementptr inbounds %struct.recorder, %struct.recorder* %42, i32 0, i32 2
  %44 = call i64 @queue_is_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.recorder*, %struct.recorder** %3, align 8
  %48 = getelementptr inbounds %struct.recorder, %struct.recorder* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mutex_unlock(i32 %49)
  %51 = load %struct.recorder*, %struct.recorder** %3, align 8
  %52 = getelementptr inbounds %struct.recorder, %struct.recorder* %51, i32 0, i32 3
  %53 = load %struct.record_packet*, %struct.record_packet** %52, align 8
  store %struct.record_packet* %53, %struct.record_packet** %4, align 8
  %54 = load %struct.record_packet*, %struct.record_packet** %4, align 8
  %55 = icmp ne %struct.record_packet* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %46
  %57 = load %struct.record_packet*, %struct.record_packet** %4, align 8
  %58 = getelementptr inbounds %struct.record_packet, %struct.record_packet* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 100000, i32* %59, align 4
  %60 = load %struct.recorder*, %struct.recorder** %3, align 8
  %61 = load %struct.record_packet*, %struct.record_packet** %4, align 8
  %62 = getelementptr inbounds %struct.record_packet, %struct.record_packet* %61, i32 0, i32 0
  %63 = call i32 @recorder_write(%struct.recorder* %60, %struct.TYPE_2__* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = call i32 @LOGW(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %56
  %69 = load %struct.record_packet*, %struct.record_packet** %4, align 8
  %70 = call i32 @record_packet_delete(%struct.record_packet* %69)
  br label %71

71:                                               ; preds = %68, %46
  br label %127

72:                                               ; preds = %41, %36
  %73 = load %struct.recorder*, %struct.recorder** %3, align 8
  %74 = getelementptr inbounds %struct.recorder, %struct.recorder* %73, i32 0, i32 2
  %75 = load i32, i32* @next, align 4
  %76 = call i32 @queue_take(i32* %74, i32 %75, %struct.record_packet** %6)
  %77 = load %struct.recorder*, %struct.recorder** %3, align 8
  %78 = getelementptr inbounds %struct.recorder, %struct.recorder* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mutex_unlock(i32 %79)
  %81 = load %struct.recorder*, %struct.recorder** %3, align 8
  %82 = getelementptr inbounds %struct.recorder, %struct.recorder* %81, i32 0, i32 3
  %83 = load %struct.record_packet*, %struct.record_packet** %82, align 8
  store %struct.record_packet* %83, %struct.record_packet** %7, align 8
  %84 = load %struct.record_packet*, %struct.record_packet** %6, align 8
  %85 = load %struct.recorder*, %struct.recorder** %3, align 8
  %86 = getelementptr inbounds %struct.recorder, %struct.recorder* %85, i32 0, i32 3
  store %struct.record_packet* %84, %struct.record_packet** %86, align 8
  %87 = load %struct.record_packet*, %struct.record_packet** %7, align 8
  %88 = icmp ne %struct.record_packet* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %72
  br label %11

90:                                               ; preds = %72
  %91 = load %struct.record_packet*, %struct.record_packet** %6, align 8
  %92 = getelementptr inbounds %struct.record_packet, %struct.record_packet* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.record_packet*, %struct.record_packet** %7, align 8
  %96 = getelementptr inbounds %struct.record_packet, %struct.record_packet* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %94, %98
  %100 = load %struct.record_packet*, %struct.record_packet** %7, align 8
  %101 = getelementptr inbounds %struct.record_packet, %struct.record_packet* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.recorder*, %struct.recorder** %3, align 8
  %104 = load %struct.record_packet*, %struct.record_packet** %7, align 8
  %105 = getelementptr inbounds %struct.record_packet, %struct.record_packet* %104, i32 0, i32 0
  %106 = call i32 @recorder_write(%struct.recorder* %103, %struct.TYPE_2__* %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.record_packet*, %struct.record_packet** %7, align 8
  %108 = call i32 @record_packet_delete(%struct.record_packet* %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %90
  %112 = call i32 @LOGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.recorder*, %struct.recorder** %3, align 8
  %114 = getelementptr inbounds %struct.recorder, %struct.recorder* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @mutex_lock(i32 %115)
  %117 = load %struct.recorder*, %struct.recorder** %3, align 8
  %118 = getelementptr inbounds %struct.recorder, %struct.recorder* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.recorder*, %struct.recorder** %3, align 8
  %120 = getelementptr inbounds %struct.recorder, %struct.recorder* %119, i32 0, i32 2
  %121 = call i32 @recorder_queue_clear(i32* %120)
  %122 = load %struct.recorder*, %struct.recorder** %3, align 8
  %123 = getelementptr inbounds %struct.recorder, %struct.recorder* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mutex_unlock(i32 %124)
  br label %127

126:                                              ; preds = %90
  br label %11

127:                                              ; preds = %111, %71
  %128 = call i32 @LOGD(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i64 @queue_is_empty(i32*) #1

declare dso_local i32 @cond_wait(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @recorder_write(%struct.recorder*, %struct.TYPE_2__*) #1

declare dso_local i32 @LOGW(i8*) #1

declare dso_local i32 @record_packet_delete(%struct.record_packet*) #1

declare dso_local i32 @queue_take(i32*, i32, %struct.record_packet**) #1

declare dso_local i32 @LOGE(i8*) #1

declare dso_local i32 @recorder_queue_clear(i32*) #1

declare dso_local i32 @LOGD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
