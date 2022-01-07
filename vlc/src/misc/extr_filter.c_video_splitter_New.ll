; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_filter.c_video_splitter_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_filter.c_video_splitter_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"video splitter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @video_splitter_New(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_6__* @vlc_custom_create(i32* %9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @video_format_Copy(i32* %16, i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @module_need(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20, i32 1)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = call i32 @video_splitter_Delete(%struct.TYPE_6__* %29)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %33

31:                                               ; preds = %14
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %4, align 8
  br label %33

33:                                               ; preds = %31, %28, %13
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %34
}

declare dso_local %struct.TYPE_6__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @video_format_Copy(i32*, i32*) #1

declare dso_local i32 @module_need(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @video_splitter_Delete(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
