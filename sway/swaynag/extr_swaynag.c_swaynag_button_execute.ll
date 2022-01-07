; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_swaynag_button_execute.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_swaynag_button_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.swaynag_button = type { i64, i32, i64, i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Executing [%s]: %s\00", align 1
@SWAYNAG_ACTION_DISMISS = common dso_local global i64 0, align 8
@SWAYNAG_ACTION_EXPAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Failed to fork\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TERMINAL\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Found $TERMINAL: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"$TERMINAL not found. Running directly\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"execl failed\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"waitpid failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaynag*, %struct.swaynag_button*)* @swaynag_button_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swaynag_button_execute(%struct.swaynag* %0, %struct.swaynag_button* %1) #0 {
  %3 = alloca %struct.swaynag*, align 8
  %4 = alloca %struct.swaynag_button*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.swaynag* %0, %struct.swaynag** %3, align 8
  store %struct.swaynag_button* %1, %struct.swaynag_button** %4, align 8
  %7 = load i32, i32* @SWAY_DEBUG, align 4
  %8 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %9 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %12 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, ...) @sway_log(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %16 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SWAYNAG_ACTION_DISMISS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.swaynag*, %struct.swaynag** %3, align 8
  %22 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %123

23:                                               ; preds = %2
  %24 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %25 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SWAYNAG_ACTION_EXPAND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.swaynag*, %struct.swaynag** %3, align 8
  %31 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.swaynag*, %struct.swaynag** %3, align 8
  %38 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.swaynag*, %struct.swaynag** %3, align 8
  %41 = call i32 @render_frame(%struct.swaynag* %40)
  br label %122

42:                                               ; preds = %23
  %43 = call i64 (...) @fork()
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @SWAY_DEBUG, align 4
  %48 = call i32 @sway_log_errno(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %123

49:                                               ; preds = %42
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %113

52:                                               ; preds = %49
  %53 = call i64 (...) @fork()
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @SWAY_DEBUG, align 4
  %58 = call i32 @sway_log_errno(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %123

59:                                               ; preds = %52
  %60 = load i64, i64* %5, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %59
  %63 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %63, i8** %6, align 8
  %64 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %65 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32, i32* @SWAY_DEBUG, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 (i32, i8*, ...) @sway_log(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %81 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @terminal_execute(i8* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %75
  %86 = load %struct.swaynag*, %struct.swaynag** %3, align 8
  %87 = call i32 @swaynag_destroy(%struct.swaynag* %86)
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  %89 = call i32 @_exit(i32 %88) #3
  unreachable

90:                                               ; preds = %75
  br label %108

91:                                               ; preds = %71, %68, %62
  %92 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %93 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @SWAY_DEBUG, align 4
  %98 = call i32 (i32, i8*, ...) @sway_log(i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.swaynag_button*, %struct.swaynag_button** %4, align 8
  %101 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32* null)
  %104 = load i32, i32* @SWAY_DEBUG, align 4
  %105 = call i32 @sway_log_errno(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* @EXIT_FAILURE, align 4
  %107 = call i32 @_exit(i32 %106) #3
  unreachable

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %59
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @EXIT_SUCCESS, align 4
  %112 = call i32 @_exit(i32 %111) #3
  unreachable

113:                                              ; preds = %49
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %5, align 8
  %116 = call i64 @waitpid(i64 %115, i32* null, i32 0)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @SWAY_DEBUG, align 4
  %120 = call i32 @sway_log_errno(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121, %29
  br label %123

123:                                              ; preds = %46, %56, %122, %20
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @render_frame(%struct.swaynag*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @terminal_execute(i8*, i32) #1

declare dso_local i32 @swaynag_destroy(%struct.swaynag*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @execl(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
