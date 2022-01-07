; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_interlacing.c_DeinterlaceCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_interlacing.c_DeinterlaceCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"deinterlace-needed\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"sout-deinterlace-mode\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"deinterlace %d, mode %s, is_needed %d\00", align 1
@VOUT_CONTROL_CHANGE_INTERLACE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*)* @DeinterlaceCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeinterlaceCallback(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @VLC_UNUSED(i8* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @VLC_UNUSED(i8* %19)
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @VLC_UNUSED(i8* %21)
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @VLC_UNUSED(i8* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %12, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = call i32 @var_GetInteger(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %30 = call i8* @var_GetString(%struct.TYPE_10__* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %14, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %32 = call i32 @var_GetBool(%struct.TYPE_10__* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %15, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @DeinterlaceIsModeValid(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %5
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %6, align 4
  br label %82

43:                                               ; preds = %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = call i8* @var_CreateGetString(%struct.TYPE_10__* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %16, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @var_SetString(%struct.TYPE_10__* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @msg_Dbg(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59, %43
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* @VOUT_CONTROL_CHANGE_INTERLACE, align 4
  %68 = call i32 @vout_control_PushBool(i32* %66, i32 %67, i32 0)
  br label %76

69:                                               ; preds = %59, %56
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* @VOUT_CONTROL_CHANGE_INTERLACE, align 4
  %75 = call i32 @vout_control_PushBool(i32* %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %69, %62
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %76, %39
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @var_GetInteger(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @var_GetString(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @var_GetBool(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @DeinterlaceIsModeValid(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @var_CreateGetString(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @var_SetString(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @vout_control_PushBool(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
