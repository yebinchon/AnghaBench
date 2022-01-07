; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_example.c_main.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"--multiline\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Multi-line mode enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--keycodes\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Usage: %s [--multiline] [--keycodes]\0A\00", align 1
@completion = common dso_local global i32 0, align 4
@hints = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"history.txt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"hello> \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"echo: '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"/historylen\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Unreconized command: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %5, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = call i32 @linenoiseSetMultiLine(i32 1)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %40

27:                                               ; preds = %15
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = call i32 (...) @linenoisePrintKeyCodes()
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %27
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %24
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* @completion, align 4
  %43 = call i32 @linenoiseSetCompletionCallback(i32 %42)
  %44 = load i32, i32* @hints, align 4
  %45 = call i32 @linenoiseSetHintsCallback(i32 %44)
  %46 = call i32 @linenoiseHistoryLoad(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %89, %41
  %48 = call i8* @linenoise(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %48, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %92

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @linenoiseHistoryAdd(i8* %65)
  %67 = call i32 @linenoiseHistorySave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %89

68:                                               ; preds = %56, %50
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 11
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @linenoiseHistorySetMaxLen(i32 %76)
  br label %88

78:                                               ; preds = %68
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %78
  br label %88

88:                                               ; preds = %87, %72
  br label %89

89:                                               ; preds = %88, %62
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  br label %47

92:                                               ; preds = %47
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @linenoiseSetMultiLine(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @linenoisePrintKeyCodes(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @linenoiseSetCompletionCallback(i32) #1

declare dso_local i32 @linenoiseSetHintsCallback(i32) #1

declare dso_local i32 @linenoiseHistoryLoad(i8*) #1

declare dso_local i8* @linenoise(i8*) #1

declare dso_local i32 @linenoiseHistoryAdd(i8*) #1

declare dso_local i32 @linenoiseHistorySave(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @linenoiseHistorySetMaxLen(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
