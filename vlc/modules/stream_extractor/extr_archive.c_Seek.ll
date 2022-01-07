; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_Seek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, i64, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"intrinsic seek failed: '%s' (falling back to dumb seek)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reset libarchive handle\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to skip to seek position\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @Seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Seek(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %3, align 4
  br label %100

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @archive_entry_size_is_set(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @archive_entry_size(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %3, align 4
  br label %100

39:                                               ; preds = %28, %22
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i64 @archive_seek_data(i32 %54, i64 %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %51, %46, %39
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @archive_error_string(i32 %63)
  %65 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Dbg(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %59
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = call i64 @archive_extractor_reset(%struct.TYPE_8__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = call i32 @msg_Err(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %83, i32* %3, align 4
  br label %100

84:                                               ; preds = %76
  %85 = load i64, i64* %5, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %84, %59
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @archive_skip_decompressed(%struct.TYPE_8__* %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Dbg(%struct.TYPE_8__* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %80, %35, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @archive_entry_size_is_set(i32) #1

declare dso_local i64 @archive_entry_size(i32) #1

declare dso_local i64 @archive_seek_data(i32, i64, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @archive_error_string(i32) #1

declare dso_local i64 @archive_extractor_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @archive_skip_decompressed(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
