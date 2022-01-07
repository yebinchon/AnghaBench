; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_motionlib.c_motion_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_motionlib.c_motion_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"/sys/devices/platform/hdaps/position\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"/sys/devices/platform/hdaps/calibrate\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@HDAPS_SENSOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"HDAPS motion detection correctly loaded\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"/sys/devices/ams/x\00", align 1
@AMS_SENSOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"AMS motion detection correctly loaded\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"/sys/devices/platform/applesmc.768/position\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"/sys/devices/platform/applesmc.768/calibrate\00", align 1
@APPLESMC_SENSOR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"Apple SMC motion detection correctly loaded\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"No motion sensor available\00", align 1
@UNIMOTION_SENSOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @motion_create(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call %struct.TYPE_5__* @malloc(i32 40)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %92

15:                                               ; preds = %1
  %16 = load i32, i32* @R_OK, align 4
  %17 = call i64 @access(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = call i32* @fopen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fscanf(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32* %6)
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i32, i32* @HDAPS_SENSOR, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @msg_Dbg(i32* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %82

40:                                               ; preds = %19, %15
  %41 = load i32, i32* @R_OK, align 4
  %42 = call i64 @access(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @AMS_SENSOR, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @msg_Dbg(i32* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %81

50:                                               ; preds = %40
  %51 = load i32, i32* @R_OK, align 4
  %52 = call i64 @access(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = call i32* @fopen(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %55, i32** %4, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fscanf(i32* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32* %6)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load i32, i32* @APPLESMC_SENSOR, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @msg_Dbg(i32* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  br label %80

75:                                               ; preds = %54, %50
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @msg_Err(i32* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = call i32 @free(%struct.TYPE_5__* %78)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %92

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %29
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memset(i32 %85, i32 0, i32 4)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %2, align 8
  br label %92

92:                                               ; preds = %82, %75, %14
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %93
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
