; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_image.c_CreateConverter.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_image.c_CreateConverter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"video converter\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no video converter found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32*, %struct.TYPE_12__*)* @CreateConverter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @CreateConverter(i32* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_13__* @vlc_custom_create(i32* %9, i32 56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %8, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @es_format_Copy(%struct.TYPE_15__* %12, i32* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @es_format_Copy(%struct.TYPE_15__* %16, i32* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = call i32 @video_format_Copy(%struct.TYPE_14__* %21, %struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = call i32 @module_need(%struct.TYPE_13__* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = call i32 @msg_Dbg(%struct.TYPE_13__* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = call i32 @DeleteConverter(%struct.TYPE_13__* %49)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %53

51:                                               ; preds = %3
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %4, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %54
}

declare dso_local %struct.TYPE_13__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @video_format_Copy(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @module_need(%struct.TYPE_13__*, i8*, i32*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @DeleteConverter(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
