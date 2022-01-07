; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_WarnConfiguration.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_WarnConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"auhal-warned-devices\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"You should configure your speaker layout with Audio Midi Setup in /Applications/Utilities. VLC will output Stereo only.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Audio device is not configured\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [122 x i8] c"You should configure your speaker layout with \22Audio Midi Setup\22 in /Applications/Utilities. VLC will output Stereo only.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%u%s%s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @WarnConfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WarnConfiguration(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i8* @var_CreateGetNonEmptyString(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strtok_r(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %52, %25
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %54

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %54

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51
  %53 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %53, i8** %9, align 8
  br label %28

54:                                               ; preds = %50, %35
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %54, %20
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = call i32 @msg_Warn(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @_(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.5, i64 0, i64 0))
  %67 = call i32 @vlc_dialog_display_error(%struct.TYPE_8__* %64, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp uge i32 %68, 10
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load i8*, i8** %4, align 8
  %72 = call i8* @strrchr(i8* %71, i8 signext 59)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %61
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = icmp ne i8* %82, null
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %86 = load i8*, i8** %4, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i8*, i8** %4, align 8
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i8* [ %89, %88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %90 ]
  %93 = call i32 @asprintf(i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %81, i8* %85, i8* %92)
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @config_PutPsz(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @var_SetString(%struct.TYPE_8__* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %95, %91
  br label %104

104:                                              ; preds = %103, %58
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @free(i8* %105)
  ret void
}

declare dso_local i8* @var_CreateGetNonEmptyString(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, i8*) #1

declare dso_local i32 @config_PutPsz(i8*, i8*) #1

declare dso_local i32 @var_SetString(%struct.TYPE_8__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
