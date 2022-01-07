; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_intf.c_VoutSaveSnapshot.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_intf.c_VoutSaveSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"snapshot-path\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"snapshot-format\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"snapshot-prefix\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"no path specified for snapshots\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"snapshot-sequential\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"snapshot-num\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"snapshot-file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @VoutSaveSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VoutSaveSnapshot(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @var_InheritString(i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @var_InheritString(i32* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @var_InheritString(i32* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @VLC_TICK_FROM_MS(i32 500)
  %20 = call i64 @vout_GetSnapshot(i32* %17, i32** %7, i32** %6, i32* null, i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %73

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = call i8* (...) @vout_snapshot_GetDirectory()
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @msg_Err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %73

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %23
  %35 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 40)
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @var_InheritBool(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i64 %37, i64* %38, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @var_GetInteger(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @vout_snapshot_SaveImage(i8** %9, i32* %10, i32* %48, i32* %49, %struct.TYPE_4__* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %73

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @var_SetInteger(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32*, i32** %2, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @VoutOsdSnapshot(i32* %63, i32* %64, i8* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @vlc_object_instance(i32* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @var_SetString(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %62, %52, %30, %22
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @block_Release(i32* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @picture_Release(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @free(i8* %90)
  ret void
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i64 @vout_GetSnapshot(i32*, i32**, i32**, i32*, i8*, i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i8* @vout_snapshot_GetDirectory(...) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i64 @vout_snapshot_SaveImage(i8**, i32*, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @var_SetInteger(i32*, i8*, i32) #1

declare dso_local i32 @VoutOsdSnapshot(i32*, i32*, i8*) #1

declare dso_local i32 @var_SetString(i32, i8*, i8*) #1

declare dso_local i32 @vlc_object_instance(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @block_Release(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
