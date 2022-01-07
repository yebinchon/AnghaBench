; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_android_getEnvCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_android_getEnvCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__**, i8**, i32)*, i64 (%struct.TYPE_10__**, i32**, %struct.TYPE_9__*)*, i32 (%struct.TYPE_10__**)* }
%struct.TYPE_9__ = type { i8*, i32*, i32 }

@jni_env_key_once = common dso_local global i32 0, align 4
@jni_env_key_create = common dso_local global i32 0, align 4
@jni_env_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"android-jvm\00", align 1
@JNI_VERSION_1_2 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_10__**, i8*)* @android_getEnvCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @android_getEnvCommon(i32* %0, %struct.TYPE_10__** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %14 = icmp ne %struct.TYPE_10__** %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %20 = icmp ne %struct.TYPE_10__** %19, null
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i1 [ true, %12 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @jni_env_key_create, align 4
  %28 = call i32 @pthread_once(i32* @jni_env_key_once, i32 %27)
  %29 = load i32, i32* @jni_env_key, align 4
  %30 = call i32* @pthread_getspecific(i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %23
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %35 = icmp ne %struct.TYPE_10__** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = call %struct.TYPE_10__** @var_InheritAddress(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__** %38, %struct.TYPE_10__*** %6, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %41 = icmp ne %struct.TYPE_10__** %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32* null, i32** %4, align 8
  br label %85

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64 (%struct.TYPE_10__**, i8**, i32)*, i64 (%struct.TYPE_10__**, i8**, i32)** %46, align 8
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %49 = bitcast i32** %8 to i8**
  %50 = load i32, i32* @JNI_VERSION_1_2, align 4
  %51 = call i64 %47(%struct.TYPE_10__** %48, i8** %49, i32 %50)
  %52 = load i64, i64* @JNI_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %43
  %55 = load i32, i32* @JNI_VERSION_1_2, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64 (%struct.TYPE_10__**, i32**, %struct.TYPE_9__*)*, i64 (%struct.TYPE_10__**, i32**, %struct.TYPE_9__*)** %62, align 8
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %65 = call i64 %63(%struct.TYPE_10__** %64, i32** %8, %struct.TYPE_9__* %9)
  %66 = load i64, i64* @JNI_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32* null, i32** %4, align 8
  br label %85

69:                                               ; preds = %54
  %70 = load i32, i32* @jni_env_key, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @pthread_setspecific(i32 %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**)** %77, align 8
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %80 = call i32 %78(%struct.TYPE_10__** %79)
  store i32* null, i32** %4, align 8
  br label %85

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %23
  %84 = load i32*, i32** %8, align 8
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %83, %74, %68, %42
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i32* @pthread_getspecific(i32) #1

declare dso_local %struct.TYPE_10__** @var_InheritAddress(i32*, i8*) #1

declare dso_local i64 @pthread_setspecific(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
