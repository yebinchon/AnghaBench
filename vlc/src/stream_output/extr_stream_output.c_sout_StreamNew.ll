; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_StreamNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_StreamNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32*, i32, i32*, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [11 x i8] c"stream out\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stream=`%s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sout stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_11__*)* @sout_StreamNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @sout_StreamNew(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = call %struct.TYPE_11__* @vlc_custom_create(%struct.TYPE_12__* %13, i32 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %71

18:                                               ; preds = %4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 7
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @msg_Dbg(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @module_need(%struct.TYPE_11__* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 1)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %18
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i8* null, i8** %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = call i32 @sout_StreamDelete(%struct.TYPE_11__* %60)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %71

62:                                               ; preds = %18
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %5, align 8
  br label %71

71:                                               ; preds = %62, %55, %17
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %72
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.TYPE_11__* @vlc_custom_create(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @module_need(%struct.TYPE_11__*, i8*, i8*, i32) #1

declare dso_local i32 @sout_StreamDelete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
