; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_avio.c_OutOpenAvio.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_avio.c_OutOpenAvio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"sout-avio-\00", align 1
@ppsz_sout_options = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sout-avio-options\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown option \22%s\22\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Failed to open %s\00", align 1
@Write = common dso_local global i32 0, align 4
@OutControl = common dso_local global i32 0, align 4
@OutSeek = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OutOpenAvio(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i32, i32* @ppsz_sout_options, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @config_ChainParse(%struct.TYPE_10__* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_11__* @vlc_obj_malloc(i32* %18, i32 8)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %92

24:                                               ; preds = %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @vlc_init_avformat(i32* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %2, align 4
  br label %92

35:                                               ; preds = %24
  store i32* null, i32** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = call i8* @var_InheritString(%struct.TYPE_10__* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @vlc_av_get_options(i8* %41, i32** %7)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %52 = call i32 @avio_open2(i32** %47, i32 %50, i32 %51, i32* null, i32** %7)
  store i32 %52, i32* %6, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  br label %53

53:                                               ; preds = %59, %45
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %57 = call %struct.TYPE_12__* @av_dict_get(i32* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %55, i32 %56)
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %9, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msg_Err(%struct.TYPE_10__* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %53

65:                                               ; preds = %53
  %66 = call i32 @av_dict_free(i32** %7)
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @AVUNERROR(i32 %70)
  store i32 %71, i32* @errno, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @msg_Err(%struct.TYPE_10__* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %77, i32* %2, align 4
  br label %92

78:                                               ; preds = %65
  %79 = load i32, i32* @Write, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @OutControl, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @OutSeek, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %90, align 8
  %91 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %78, %69, %33, %22
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @config_ChainParse(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i32 @vlc_init_avformat(i32*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @vlc_av_get_options(i8*, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @avio_open2(i32**, i32, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_12__* @av_dict_get(i32*, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @AVUNERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
