; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_pls.c_Import_PLS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_pls.c_Import_PLS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"not enough data\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"[playlist]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".pls\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"found valid PLS playlist file\00", align 1
@ReadDir = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_PLS(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @CHECK_FILE(%struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vlc_stream_Peek(i32 %12, i32** %5, i32 10)
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = call i32 @msg_Dbg(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = call i64 @strncasecmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call i32 @stream_HasExtension(%struct.TYPE_5__* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %24, %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i32 @msg_Dbg(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @ReadDir, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %28, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @stream_HasExtension(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
