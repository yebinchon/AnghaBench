; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_output_device_list_get.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_output_device_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [16 x i8] c"%s-audio-device\00", align 1
@VLC_VAR_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @libvlc_audio_output_device_list_get(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @snprintf(i8* %14, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp uge i64 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %68

19:                                               ; preds = %2
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %21 = call i64 @config_GetType(i8* %20)
  %22 = load i64, i64* @VLC_VAR_STRING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %68

25:                                               ; preds = %19
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__** %7, %struct.TYPE_4__*** %8, align 8
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %27 = call i64 @config_GetPszChoices(i8* %26, i8*** %9, i8*** %10)
  store i64 %27, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %57, %25
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = call %struct.TYPE_4__* @malloc(i32 24)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %13, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %60

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store %struct.TYPE_4__** %44, %struct.TYPE_4__*** %8, align 8
  %45 = load i8**, i8*** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %40
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %28

60:                                               ; preds = %39, %28
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %61, align 8
  %62 = load i8**, i8*** %10, align 8
  %63 = call i32 @free(i8** %62)
  %64 = load i8**, i8*** %9, align 8
  %65 = call i32 @free(i8** %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %3, align 8
  br label %68

68:                                               ; preds = %60, %24, %18
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %69
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @config_GetType(i8*) #1

declare dso_local i64 @config_GetPszChoices(i8*, i8***, i8***) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
