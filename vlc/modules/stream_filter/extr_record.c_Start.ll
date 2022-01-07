; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_record.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_record.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"dat\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"input-record-path\00", align 1
@VLC_DOWNLOAD_DIR = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@INPUT_RECORD_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"record-file\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Recording into %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i8* @var_CreateGetNonEmptyString(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @VLC_DOWNLOAD_DIR, align 4
  %23 = call i8* @config_GetUserDir(i32 %22)
  store i8* %23, i8** %9, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @INPUT_RECORD_PREFIX, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @input_item_CreateFilename(i32 %32, i8* %33, i32 %34, i8* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %42, i32* %3, align 4
  br label %68

43:                                               ; preds = %29
  %44 = load i8*, i8** %7, align 8
  %45 = call i32* @vlc_fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %51, i32* %3, align 4
  br label %68

52:                                               ; preds = %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = call i32 @vlc_object_instance(%struct.TYPE_7__* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @var_SetString(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @msg_Dbg(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %52, %48, %41, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @var_CreateGetNonEmptyString(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @config_GetUserDir(i32) #1

declare dso_local i8* @input_item_CreateFilename(i32, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i32 @var_SetString(i32, i8*, i8*) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_7__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
