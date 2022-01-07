; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ParseHelpTopic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_ParseHelpTopic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@CMD_MATCH_NONE = common dso_local global i32 0, align 4
@HelpMsg = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_MATCH_MULTI = common dso_local global i32 0, align 4
@MSG_AMBIGUOUS_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"> %s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@MSG_UNKNOWN_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseHelpTopic(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CMD_MATCH_NONE, align 4
  store i32 %12, i32* %2, align 4
  br label %97

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @CMD_MATCH_NONE, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %77, %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HelpMsg, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HelpMsg, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i64, i64* %4, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %25
  %36 = load i8*, i8** %3, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HelpMsg, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @_strnicmp(i8* %36, i8* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CMD_MATCH_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %6, align 4
  br label %76

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CMD_MATCH_MULTI, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @MSG_AMBIGUOUS_COMMAND, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @PrintMessage(i32 %57, i8* %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HelpMsg, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @CMD_MATCH_MULTI, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %56, %52
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HelpMsg, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %68, %50
  br label %77

77:                                               ; preds = %76, %35, %25
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %17

80:                                               ; preds = %17
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @CMD_MATCH_NONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @MSG_UNKNOWN_COMMAND, align 4
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @PrintMessage(i32 %85, i8* %86)
  br label %95

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @CMD_MATCH_MULTI, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %11
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_strnicmp(i8*, i8*, i64) #1

declare dso_local i32 @PrintMessage(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
