; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i32, i64 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__**, i32)*, i32 (%struct.TYPE_22__**, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"audiotrack-session-id\00", align 1
@jfields = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"AudioTrack<init>\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"AudioTrack Init failed\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"AudioTrack getState failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__**, %struct.TYPE_20__*, i32, i32, i32, i32)* @AudioTrack_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AudioTrack_New(%struct.TYPE_22__** %0, %struct.TYPE_20__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__**, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__** %0, %struct.TYPE_22__*** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %14, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = call i32 @var_InheritInteger(%struct.TYPE_20__* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 3), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @AudioTrack_New21(%struct.TYPE_22__** %25, %struct.TYPE_20__* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %16, align 4
  br label %42

33:                                               ; preds = %6
  %34 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @AudioTrack_NewLegacy(%struct.TYPE_22__** %34, %struct.TYPE_20__* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %33, %24
  %43 = call i64 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %50 = call i32 @msg_Warn(%struct.TYPE_20__* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %93

51:                                               ; preds = %45
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 2), align 4
  %54 = call i64 @JNI_CALL_INT(i32 %52, i32 %53)
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 0), align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 1), align 8
  %60 = call i32 @JNI_CALL_VOID(i32 %58, i32 %59)
  %61 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_22__**, i32)*, i32 (%struct.TYPE_22__**, i32)** %63, align 8
  %65 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i32 %64(%struct.TYPE_22__** %65, i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %69 = call i32 @msg_Err(%struct.TYPE_20__* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %93

70:                                               ; preds = %51
  %71 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_22__**, i32)*, i32 (%struct.TYPE_22__**, i32)** %73, align 8
  %75 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 %74(%struct.TYPE_22__** %75, i32 %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_22__**, i32)*, i32 (%struct.TYPE_22__**, i32)** %82, align 8
  %84 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 %83(%struct.TYPE_22__** %84, i32 %85)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %70
  store i32 -1, i32* %7, align 4
  br label %93

92:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %91, %57, %48
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @var_InheritInteger(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @AudioTrack_New21(%struct.TYPE_22__**, %struct.TYPE_20__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AudioTrack_NewLegacy(%struct.TYPE_22__**, %struct.TYPE_20__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @CHECK_AT_EXCEPTION(i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @JNI_CALL_INT(i32, i32) #1

declare dso_local i32 @JNI_CALL_VOID(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
