; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.vlc_readdir_helper = type { i32 }
%struct.archive_entry = type { i32 }

@AE_IFDIR = common dso_local global i64 0, align 8
@ITEM_TYPE_FILE = common dso_local global i32 0, align 4
@ITEM_LOCAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlc_readdir_helper, align 4
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper* %7, %struct.TYPE_6__* %18, i32* %19)
  br label %21

21:                                               ; preds = %70, %31, %2
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @archive_read_next_header(i32* %22, %struct.archive_entry** %8)
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %71

26:                                               ; preds = %21
  %27 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %28 = call i64 @archive_entry_filetype(%struct.archive_entry* %27)
  %29 = load i64, i64* @AE_IFDIR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %21

32:                                               ; preds = %26
  %33 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %34 = call i8* @archive_entry_pathname(%struct.archive_entry* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %71

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @vlc_stream_extractor_CreateMRL(%struct.TYPE_6__* %43, i8* %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %71

53:                                               ; preds = %42
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @ITEM_TYPE_FILE, align 4
  %57 = load i32, i32* @ITEM_LOCAL, align 4
  %58 = call i64 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %7, i8* %54, i8* %55, i32* null, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @free(i8* %61)
  br label %71

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @archive_read_data_skip(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %71

70:                                               ; preds = %63
  br label %21

71:                                               ; preds = %69, %60, %52, %41, %21
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ARCHIVE_EOF, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper* %7, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ARCHIVE_EOF, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @VLC_SUCCESS, align 4
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @VLC_EGENERIC, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  ret i32 %85
}

declare dso_local i32 @vlc_readdir_helper_init(%struct.vlc_readdir_helper*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @archive_read_next_header(i32*, %struct.archive_entry**) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @vlc_stream_extractor_CreateMRL(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @archive_read_data_skip(i32*) #1

declare dso_local i32 @vlc_readdir_helper_finish(%struct.vlc_readdir_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
