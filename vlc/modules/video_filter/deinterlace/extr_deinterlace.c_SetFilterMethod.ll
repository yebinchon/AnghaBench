; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_deinterlace.c_SetFilterMethod.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_deinterlace.c_SetFilterMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@filter_mode = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"unknown or incompatible deinterlace mode \22%s\22 for packed format\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"unknown or incompatible deinterlace mode \22%s\22 for high depth format\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"using %s deinterlace method\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unknown deinterlace mode \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i32)* @SetFilterMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetFilterMethod(%struct.TYPE_12__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %18, %14
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %91, %19
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @filter_mode, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.TYPE_14__* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @filter_mode, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %26, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %90, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @filter_mode, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @msg_Err(%struct.TYPE_12__* %45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = load i32, i32* %6, align 4
  call void @SetFilterMethod(%struct.TYPE_12__* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %98

50:                                               ; preds = %37, %34
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** @filter_mode, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @msg_Err(%struct.TYPE_12__* %65, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load i32, i32* %6, align 4
  call void @SetFilterMethod(%struct.TYPE_12__* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %98

70:                                               ; preds = %57, %50
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @msg_Dbg(%struct.TYPE_12__* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** @filter_mode, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** @filter_mode, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  br label %98

90:                                               ; preds = %25
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %20

94:                                               ; preds = %20
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @msg_Err(%struct.TYPE_12__* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %70, %64, %44
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
