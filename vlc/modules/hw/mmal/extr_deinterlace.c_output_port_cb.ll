; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_deinterlace.c_output_port_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_deinterlace.c_output_port_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"MMAL_EVENT_FORMAT_CHANGED seen but not handled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @output_port_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_port_cb(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = call i32 @atomic_store(i32* %26, i32 1)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = call i32 @mmal_queue_put(i32 %30, %struct.TYPE_13__* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %7, align 8
  br label %44

37:                                               ; preds = %19
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @picture_Release(i32* %42)
  br label %44

44:                                               ; preds = %37, %24
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = call i32 @atomic_fetch_sub(i32* %46, i32 1)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = call i32 @vlc_sem_post(i32* %49)
  br label %66

51:                                               ; preds = %2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = call i32 @msg_Warn(%struct.TYPE_10__* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = call i32 @mmal_buffer_header_release(%struct.TYPE_13__* %60)
  br label %65

62:                                               ; preds = %51
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i32 @mmal_buffer_header_release(%struct.TYPE_13__* %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %44
  ret void
}

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @mmal_queue_put(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @atomic_fetch_sub(i32*, i32) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
