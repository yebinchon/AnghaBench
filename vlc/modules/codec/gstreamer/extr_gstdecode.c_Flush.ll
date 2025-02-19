; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_Flush.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_Flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@GST_FORMAT_BYTES = common dso_local global i32 0, align 4
@GST_SEEK_FLAG_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"new segment event : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @Flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Flush(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GST_FORMAT_BYTES, align 4
  %13 = load i32, i32* @GST_SEEK_FLAG_FLUSH, align 4
  %14 = call i32 @gst_element_seek_simple(i32 %11, i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @msg_Dbg(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %24, %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @gst_atomic_queue_pop(i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @gst_buffer_unref(i32* %25)
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  ret void
}

declare dso_local i32 @gst_element_seek_simple(i32, i32, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32* @gst_atomic_queue_pop(i32) #1

declare dso_local i32 @gst_buffer_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
