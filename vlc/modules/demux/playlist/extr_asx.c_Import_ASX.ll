; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_Import_ASX.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_Import_ASX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".asx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".wax\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".wvx\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"video/x-ms-asf\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"audio/x-ms-wax\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"found valid ASX playlist\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@ReadDir = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_ASX(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @CHECK_FILE(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @stream_MimeType(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call i64 @stream_HasExtension(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i64 @stream_HasExtension(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i64 @stream_HasExtension(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32, %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = call i64 @PeekASX(%struct.TYPE_6__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %21, %17, %1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32 @msg_Dbg(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  br label %49

45:                                               ; preds = %36, %32, %25
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %40
  %50 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ReadDir, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_6__*) #1

declare dso_local i8* @stream_MimeType(i32) #1

declare dso_local i64 @stream_HasExtension(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @PeekASX(%struct.TYPE_6__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
