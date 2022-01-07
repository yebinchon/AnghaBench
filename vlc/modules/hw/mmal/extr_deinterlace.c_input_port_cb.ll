; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_deinterlace.c_input_port_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_deinterlace.c_input_port_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Got buffer without picture on input port - OOOPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @input_port_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_port_cb(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @picture_Release(i32* %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @msg_Warn(%struct.TYPE_9__* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call i32 @mmal_buffer_header_release(%struct.TYPE_12__* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = call i32 @atomic_fetch_sub(i32* %31, i32 1)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = call i32 @vlc_sem_post(i32* %34)
  ret void
}

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_12__*) #1

declare dso_local i32 @atomic_fetch_sub(i32*, i32) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
