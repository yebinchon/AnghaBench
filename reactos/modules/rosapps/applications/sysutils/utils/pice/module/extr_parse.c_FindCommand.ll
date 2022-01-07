; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_FindCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_FindCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@tempCmd = common dso_local global i8* null, align 8
@CmdTable = common dso_local global %struct.TYPE_4__* null, align 8
@COMMAND_GROUP_HELP_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@COLOR_CAPTION = common dso_local global i32 0, align 4
@COLOR_TEXT = common dso_local global i32 0, align 4
@wWindow = common dso_local global %struct.TYPE_3__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FindCommand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** @tempCmd, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %8, align 1
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %54, %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CmdTable, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CmdTable, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @PICE_strlen(i8* %23)
  %25 = call i64 @PICE_strncmpi(i8* %21, i8* %22, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CmdTable, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @COMMAND_GROUP_HELP_ONLY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = load i8*, i8** @tempCmd, align 8
  %37 = call i32 @PICE_strlen(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** @tempCmd, align 8
  %41 = call i32 @PICE_strcat(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i8*, i8** @tempCmd, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CmdTable, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PICE_strcat(i8* %43, i8* %48)
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %42, %27, %16
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %9

57:                                               ; preds = %9
  %58 = load i8*, i8** @tempCmd, align 8
  %59 = call i32 @PICE_strlen(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %121

61:                                               ; preds = %57
  %62 = load i32, i32* @COLOR_CAPTION, align 4
  %63 = call i32 @SetBackgroundColor(i32 %62)
  %64 = load i32, i32* @COLOR_TEXT, align 4
  %65 = call i32 @SetForegroundColor(i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wWindow, align 8
  %67 = load i64, i64* @OUTPUT_WINDOW, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wWindow, align 8
  %72 = load i64, i64* @OUTPUT_WINDOW, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %70, %75
  %77 = call i32 @ClrLine(i64 %76)
  %78 = load i8*, i8** @tempCmd, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wWindow, align 8
  %80 = load i64, i64* @OUTPUT_WINDOW, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wWindow, align 8
  %85 = load i64, i64* @OUTPUT_WINDOW, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %83, %88
  %90 = call i32 @PutChar(i8* %78, i32 1, i64 %89)
  %91 = load i64, i64* %4, align 8
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %93, label %119

93:                                               ; preds = %61
  %94 = load i8*, i8** @tempCmd, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CmdTable, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PICE_sprintf(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** @tempCmd, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wWindow, align 8
  %103 = load i64, i64* @OUTPUT_WINDOW, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wWindow, align 8
  %108 = load i64, i64* @OUTPUT_WINDOW, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %106, %111
  %113 = call i32 @PutChar(i8* %101, i32 40, i64 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CmdTable, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %6, align 8
  br label %119

119:                                              ; preds = %93, %61
  %120 = call i32 (...) @ResetColor()
  br label %121

121:                                              ; preds = %119, %57
  %122 = load i8*, i8** %6, align 8
  ret i8* %122
}

declare dso_local i64 @PICE_strncmpi(i8*, i8*, i32) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @PICE_strcat(i8*, i8*) #1

declare dso_local i32 @SetBackgroundColor(i32) #1

declare dso_local i32 @SetForegroundColor(i32) #1

declare dso_local i32 @ClrLine(i64) #1

declare dso_local i32 @PutChar(i8*, i32, i64) #1

declare dso_local i32 @PICE_sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ResetColor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
