; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_archive_seek_subentry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_archive_seek_subentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64, i32, i32 }
%struct.archive_entry = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"libarchive: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"archive does not contain >>> %s <<<\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @archive_seek_subentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_seek_subentry(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @archive_read_next_header(i32* %14, %struct.archive_entry** %7)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %20 = call i8* @archive_entry_pathname(%struct.archive_entry* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %27 = call i32 @archive_entry_clone(%struct.archive_entry* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %25
  br label %44

41:                                               ; preds = %18
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @archive_read_data_skip(i32* %42)
  br label %13

44:                                               ; preds = %40, %13
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %58 [
    i32 128, label %46
    i32 131, label %53
    i32 130, label %53
    i32 129, label %53
  ]

46:                                               ; preds = %44
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @archive_error_string(i32* %50)
  %52 = call i32 @msg_Warn(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %44, %44, %44, %46
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @archive_set_error(i32* %54, i32 130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @SEEK_CUR, align 4
  %68 = call i64 @archive_seek_data(i32* %66, i32 0, i32 %67)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %53, %38
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @archive_read_next_header(i32*, %struct.archive_entry**) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @archive_read_data_skip(i32*) #1

declare dso_local i32 @msg_Warn(i32, i8*, i32) #1

declare dso_local i32 @archive_error_string(i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i8*) #1

declare dso_local i64 @archive_seek_data(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
