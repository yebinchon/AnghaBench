; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_AWindowHandler_new.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_AWindowHandler_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__, i32, %struct.TYPE_19__, i32*, i32* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__**, i32)*, i32 (%struct.TYPE_21__**, i8*)*, i32 (%struct.TYPE_21__**, i8*)*, i32 (%struct.TYPE_21__**)*, i64 (%struct.TYPE_21__**)*, i8* (%struct.TYPE_21__**, i32)* }

@.str = private unnamed_addr constant [12 x i8] c"android-jvm\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"drawable-androidwindow\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"libvlc_media_player options not set\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"AWindowHandler\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"can't get JNIEnv\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"InitJNIFields failed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"InitJNIFields success\00", align 1
@CallIntMethod = common dso_local global i32 0, align 4
@registerNative = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"AWindow already registered\00", align 1
@AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER = common dso_local global i32 0, align 4
@AWINDOW_REGISTER_FLAGS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @AWindowHandler_new(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @var_InheritAddress(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @var_InheritAddress(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @msg_Err(i32* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %156

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.TYPE_21__** @android_getEnvCommon(i32* null, i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_21__** %27, %struct.TYPE_21__*** %7, align 8
  %28 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %29 = icmp ne %struct.TYPE_21__** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @msg_Err(i32* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %156

33:                                               ; preds = %25
  %34 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @VLC_OBJECT(i32* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @InitJNIFields(%struct.TYPE_21__** %34, i32 %36, i8* %37)
  %39 = load i64, i64* @VLC_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @msg_Err(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %156

44:                                               ; preds = %33
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @msg_Dbg(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %47 = call %struct.TYPE_22__* @calloc(i32 1, i32 48)
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %6, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = icmp ne %struct.TYPE_22__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %156

51:                                               ; preds = %44
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_21__**, i8*)*, i32 (%struct.TYPE_21__**, i8*)** %57, align 8
  %59 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 %58(%struct.TYPE_21__** %59, i8* %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 5
  %75 = load i8* (%struct.TYPE_21__**, i32)*, i8* (%struct.TYPE_21__**, i32)** %74, align 8
  %76 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %77 = call i8* %75(%struct.TYPE_21__** %76, i32 16)
  store i8* %77, i8** %10, align 8
  %78 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 4
  %81 = load i64 (%struct.TYPE_21__**)*, i64 (%struct.TYPE_21__**)** %80, align 8
  %82 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %83 = call i64 %81(%struct.TYPE_21__** %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %51
  %86 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load i32 (%struct.TYPE_21__**)*, i32 (%struct.TYPE_21__**)** %88, align 8
  %90 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %91 = call i32 %89(%struct.TYPE_21__** %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %93 = call i32 @free(%struct.TYPE_22__* %92)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %156

94:                                               ; preds = %51
  %95 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i32 (%struct.TYPE_21__**, i8*)*, i32 (%struct.TYPE_21__**, i8*)** %97, align 8
  %99 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 %98(%struct.TYPE_21__** %99, i8* %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_21__**, i8*)*, i32 (%struct.TYPE_21__**, i8*)** %107, align 8
  %109 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 %108(%struct.TYPE_21__** %109, i8* %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load i32, i32* @CallIntMethod, align 4
  %116 = load i32, i32* @registerNative, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = ptrtoint %struct.TYPE_22__* %117 to i64
  %119 = trunc i64 %118 to i32
  %120 = call i32 @JNI_ANWCALL(i32 %115, i32 %116, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %94
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @msg_Err(i32* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %127 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_21__**, i32)*, i32 (%struct.TYPE_21__**, i32)** %129, align 8
  %131 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %130(%struct.TYPE_21__** %131, i32 %134)
  %136 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_21__**, i32)*, i32 (%struct.TYPE_21__**, i32)** %138, align 8
  %140 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %139(%struct.TYPE_21__** %140, i32 %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %147 = call i32 @free(%struct.TYPE_22__* %146)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %156

148:                                              ; preds = %94
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = call i32 @LoadNativeWindowAPI(%struct.TYPE_22__* %149)
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, 2
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %155, %struct.TYPE_22__** %3, align 8
  br label %156

156:                                              ; preds = %148, %124, %85, %50, %41, %30, %22
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %157
}

declare dso_local i8* @var_InheritAddress(i32*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local %struct.TYPE_21__** @android_getEnvCommon(i32*, i32*, i8*) #1

declare dso_local i64 @InitJNIFields(%struct.TYPE_21__**, i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local i32 @JNI_ANWCALL(i32, i32, i32) #1

declare dso_local i32 @LoadNativeWindowAPI(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
