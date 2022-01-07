; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_memory.c_vlc_stream_AttachmentNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_memory.c_vlc_stream_AttachmentNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.vlc_stream_attachment_private = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@stream_AttachmentDelete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"attachment\00", align 1
@Read = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vlc_stream_AttachmentNew(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.vlc_stream_attachment_private*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @stream_AttachmentDelete, align 4
  %10 = call %struct.TYPE_10__* @vlc_stream_CustomNew(i32* %8, i32 %9, i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %62

17:                                               ; preds = %2
  %18 = call i32* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = call i32 @stream_CommonDelete(%struct.TYPE_10__* %29)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %62

31:                                               ; preds = %17
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = call %struct.vlc_stream_attachment_private* @vlc_stream_Private(%struct.TYPE_10__* %32)
  store %struct.vlc_stream_attachment_private* %33, %struct.vlc_stream_attachment_private** %6, align 8
  %34 = load %struct.vlc_stream_attachment_private*, %struct.vlc_stream_attachment_private** %6, align 8
  %35 = getelementptr inbounds %struct.vlc_stream_attachment_private, %struct.vlc_stream_attachment_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vlc_stream_attachment_private*, %struct.vlc_stream_attachment_private** %6, align 8
  %41 = getelementptr inbounds %struct.vlc_stream_attachment_private, %struct.vlc_stream_attachment_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vlc_stream_attachment_private*, %struct.vlc_stream_attachment_private** %6, align 8
  %47 = getelementptr inbounds %struct.vlc_stream_attachment_private, %struct.vlc_stream_attachment_private* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load %struct.vlc_stream_attachment_private*, %struct.vlc_stream_attachment_private** %6, align 8
  %51 = getelementptr inbounds %struct.vlc_stream_attachment_private, %struct.vlc_stream_attachment_private* %50, i32 0, i32 0
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %51, align 8
  %52 = load i32, i32* @Read, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @Seek, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @Control, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %3, align 8
  br label %62

62:                                               ; preds = %31, %28, %16
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %63
}

declare dso_local %struct.TYPE_10__* @vlc_stream_CustomNew(i32*, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @stream_CommonDelete(%struct.TYPE_10__*) #1

declare dso_local %struct.vlc_stream_attachment_private* @vlc_stream_Private(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
