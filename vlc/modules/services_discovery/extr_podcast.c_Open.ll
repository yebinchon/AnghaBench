; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_podcast.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_podcast.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"playlist\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@UPDATE_URLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Podcasts\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"podcast-urls\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@UrlsChange = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"podcast-request\00", align 1
@Request = common dso_local global i32 0, align 4
@Run = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = call %struct.TYPE_16__* @vlc_object_parent(%struct.TYPE_16__* %7)
  %9 = call i32 @vlc_object_typename(%struct.TYPE_16__* %8)
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %13, i32* %2, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %4, align 8
  %16 = call %struct.TYPE_17__* @malloc(i32 64)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %14
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 10
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 9
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 8
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = call i32 @vlc_mutex_init(i32* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = call i32 @vlc_cond_init(i32* %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @UPDATE_URLS, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %47, align 8
  %48 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = call %struct.TYPE_16__* @vlc_object_parent(%struct.TYPE_16__* %51)
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %6, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = load i32, i32* @VLC_VAR_STRING, align 4
  %55 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @var_Create(%struct.TYPE_16__* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = load i32, i32* @UrlsChange, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = call i32 @var_AddCallback(%struct.TYPE_16__* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %59, %struct.TYPE_17__* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = load i32, i32* @VLC_VAR_STRING, align 4
  %64 = call i32 @var_Create(%struct.TYPE_16__* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = load i32, i32* @Request, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = call i32 @var_AddCallback(%struct.TYPE_16__* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %66, %struct.TYPE_17__* %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 4
  %71 = load i32, i32* @Run, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %74 = call i64 @vlc_clone(i32* %70, i32 %71, %struct.TYPE_16__* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %21
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = load i32, i32* @Request, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = call i32 @var_DelCallback(%struct.TYPE_16__* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %78, %struct.TYPE_17__* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = load i32, i32* @UrlsChange, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = call i32 @var_DelCallback(%struct.TYPE_16__* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %82, %struct.TYPE_17__* %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = call i32 @vlc_cond_destroy(i32* %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = call i32 @vlc_mutex_destroy(i32* %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = call i32 @free(%struct.TYPE_17__* %91)
  %93 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %21
  %95 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %76, %19, %12
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @vlc_object_typename(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @vlc_object_parent(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @var_AddCallback(%struct.TYPE_16__*, i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @var_DelCallback(%struct.TYPE_16__*, i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
