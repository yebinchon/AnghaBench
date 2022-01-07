; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_bluraySetTitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_bluraySetTitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Playing TopMenu Title\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Playing FirstPlay Title\00", align 1
@BLURAY_TITLE_FIRST_PLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Playing Title %i\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot play bd title '%d'\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Selecting Title %i\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot select bd title '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @bluraySetTitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluraySetTitle(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bd_menu_call(i32 %23, i32 -1)
  store i32 %24, i32* %7, align 4
  br label %50

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = icmp sge i32 %26, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BLURAY_TITLE_FIRST_PLAY, align 4
  %39 = call i32 @bd_play_title(i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @bd_play_title(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %32
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @msg_Err(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %3, align 4
  br label %93

58:                                               ; preds = %50
  %59 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %93

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ugt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %3, align 4
  br label %93

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %63
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @bd_select_title(i32 %82, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @msg_Err(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %76
  %92 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %86, %73, %58, %53
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @bd_menu_call(i32, i32) #1

declare dso_local i32 @bd_play_title(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @bd_select_title(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
