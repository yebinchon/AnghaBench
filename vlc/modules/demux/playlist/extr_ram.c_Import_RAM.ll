; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ram.c_Import_RAM.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ram.c_Import_RAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".ram\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".rm\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c".ra\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".RMF\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"found valid RAM playlist\00", align 1
@ReadDir = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_RAM(i32* %0) #0 {
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
  %11 = call i32 @stream_HasExtension(%struct.TYPE_5__* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = call i32 @stream_HasExtension(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vlc_stream_Peek(i32 %22, i32** %5, i32 4)
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @memcmp(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @memcmp(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @msg_Dbg(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @ReadDir, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %37, %35, %25, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_5__*) #1

declare dso_local i32 @stream_HasExtension(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
