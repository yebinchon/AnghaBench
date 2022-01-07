; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_ac_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_ac_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32*, i64, i32* }
%struct.TYPE_6__ = type { i8*, i32* }

@.str = private unnamed_addr constant [48 x i8] c"Allocation failed! Application might misbehave!\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create recursive mutex!\00", align 1
@OPUS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error while starting audio decoder: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Jitter buffer creaton failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ac_new(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call %struct.TYPE_7__* @calloc(i32 96, i32 1)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %108

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @create_recursive_mutex(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = call i32 @free(%struct.TYPE_7__* %25)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %108

27:                                               ; preds = %17
  %28 = call i32 @opus_decoder_create(i32 48000, i32 2, i32* %11)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @OPUS_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @opus_strerror(i32 %35)
  %37 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %101

38:                                               ; preds = %27
  %39 = call i32 @jbuf_new(i32 3)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = icmp ne i32 %39, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @opus_decoder_destroy(i32 %47)
  br label %101

49:                                               ; preds = %38
  %50 = call i32* @create_audio_encoder(i32 48000, i32 48000, i32 2)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 15
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 15
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %92

58:                                               ; preds = %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 48000, i32* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 48000, i32* %62, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 2, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 2, i32* %66, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  store i32 48000, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 14
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  store i32 120, i32* %72, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  store i32 48000, i32* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 7
  store i32 1, i32* %76, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 13
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 12
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 11
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32* %83, i32** %86, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 11
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %5, align 8
  br label %108

92:                                               ; preds = %57
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @opus_decoder_destroy(i32 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @jbuf_free(i32 %99)
  br label %101

101:                                              ; preds = %92, %43, %34
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @pthread_mutex_destroy(i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = call i32 @free(%struct.TYPE_7__* %106)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %108

108:                                              ; preds = %101, %58, %23, %15
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %109
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i64 @create_recursive_mutex(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @opus_decoder_create(i32, i32, i32*) #1

declare dso_local i32 @LOGGER_ERROR(i8*, i32) #1

declare dso_local i32 @opus_strerror(i32) #1

declare dso_local i32 @jbuf_new(i32) #1

declare dso_local i32 @opus_decoder_destroy(i32) #1

declare dso_local i32* @create_audio_encoder(i32, i32, i32) #1

declare dso_local i32 @jbuf_free(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
