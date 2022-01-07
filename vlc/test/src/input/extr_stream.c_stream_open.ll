; ModuleID = '/home/carl/AnghaBench/vlc/test/src/input/extr_stream.c_stream_open.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/input/extr_stream.c_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reader = type { i8*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"--ignore-config\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"--no-media-library\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"--vout=dummy\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"--aout=dummy\00", align 1
@__const.stream_open.argv = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)], align 16
@stream_close = common dso_local global i32 0, align 4
@stream_getsize = common dso_local global i32 0, align 4
@stream_read = common dso_local global i32 0, align 4
@stream_peek = common dso_local global i32 0, align 4
@stream_tell = common dso_local global i32 0, align 4
@stream_seek = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reader* (i8*)* @stream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reader* @stream_open(i8* %0) #0 {
  %2 = alloca %struct.reader*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.reader*, align 8
  %6 = alloca [7 x i8*], align 16
  store i8* %0, i8** %3, align 8
  %7 = bitcast [7 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x i8*]* @__const.stream_open.argv to i8*), i64 56, i1 false)
  %8 = call %struct.reader* @calloc(i32 1, i32 48)
  store %struct.reader* %8, %struct.reader** %5, align 8
  %9 = load %struct.reader*, %struct.reader** %5, align 8
  %10 = call i32 @assert(%struct.reader* %9)
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %12 = call %struct.TYPE_6__* @libvlc_new(i32 7, i8** %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.reader*
  %18 = call i32 @assert(%struct.reader* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @vlc_stream_NewURL(i32 %21, i8* %22)
  %24 = load %struct.reader*, %struct.reader** %5, align 8
  %25 = getelementptr inbounds %struct.reader, %struct.reader* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.reader*, %struct.reader** %5, align 8
  %28 = getelementptr inbounds %struct.reader, %struct.reader* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32 @libvlc_release(%struct.TYPE_6__* %33)
  %35 = load %struct.reader*, %struct.reader** %5, align 8
  %36 = call i32 @free(%struct.reader* %35)
  store %struct.reader* null, %struct.reader** %2, align 8
  br label %62

37:                                               ; preds = %1
  %38 = load i32, i32* @stream_close, align 4
  %39 = load %struct.reader*, %struct.reader** %5, align 8
  %40 = getelementptr inbounds %struct.reader, %struct.reader* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @stream_getsize, align 4
  %42 = load %struct.reader*, %struct.reader** %5, align 8
  %43 = getelementptr inbounds %struct.reader, %struct.reader* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @stream_read, align 4
  %45 = load %struct.reader*, %struct.reader** %5, align 8
  %46 = getelementptr inbounds %struct.reader, %struct.reader* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @stream_peek, align 4
  %48 = load %struct.reader*, %struct.reader** %5, align 8
  %49 = getelementptr inbounds %struct.reader, %struct.reader* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @stream_tell, align 4
  %51 = load %struct.reader*, %struct.reader** %5, align 8
  %52 = getelementptr inbounds %struct.reader, %struct.reader* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @stream_seek, align 4
  %54 = load %struct.reader*, %struct.reader** %5, align 8
  %55 = getelementptr inbounds %struct.reader, %struct.reader* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load %struct.reader*, %struct.reader** %5, align 8
  %58 = getelementptr inbounds %struct.reader, %struct.reader* %57, i32 0, i32 1
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.reader*, %struct.reader** %5, align 8
  %60 = getelementptr inbounds %struct.reader, %struct.reader* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.reader*, %struct.reader** %5, align 8
  store %struct.reader* %61, %struct.reader** %2, align 8
  br label %62

62:                                               ; preds = %37, %32
  %63 = load %struct.reader*, %struct.reader** %2, align 8
  ret %struct.reader* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.reader* @calloc(i32, i32) #2

declare dso_local i32 @assert(%struct.reader*) #2

declare dso_local %struct.TYPE_6__* @libvlc_new(i32, i8**) #2

declare dso_local i32 @vlc_stream_NewURL(i32, i8*) #2

declare dso_local i32 @libvlc_release(%struct.TYPE_6__*) #2

declare dso_local i32 @free(%struct.reader*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
