; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update.c_update_Download.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update.c_update_Download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [16 x i8] c"update download\00", align 1
@update_DownloadReal = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_Download(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = call i32 @atomic_store(i32* %16, i32 1)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vlc_join(i32 %22, i32* null)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = call i32 @vlc_object_delete(%struct.TYPE_9__* %26)
  br label %28

28:                                               ; preds = %12, %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_9__* @vlc_custom_create(i32 %31, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %62

36:                                               ; preds = %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %4, align 8
  %47 = call i32* @strdup(i8* %46)
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32* [ %47, %45 ], [ null, %48 ]
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = call i32 @atomic_store(i32* %54, i32 0)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* @update_DownloadReal, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %61 = call i32 @vlc_clone(i32* %57, i32 %58, %struct.TYPE_9__* %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %35
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @vlc_clone(i32*, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
