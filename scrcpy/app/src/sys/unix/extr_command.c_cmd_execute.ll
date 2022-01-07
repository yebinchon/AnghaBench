; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/sys/unix/extr_command.c_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/sys/unix/extr_command.c_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@PROCESS_ERROR_GENERIC = common dso_local global i32 0, align 4
@PROCESS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@PROCESS_ERROR_MISSING_BINARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_execute(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %11 = call i32 @pipe(i32* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %15, i32* %4, align 4
  br label %105

16:                                               ; preds = %3
  %17 = load i32, i32* @PROCESS_SUCCESS, align 4
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @fork()
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %25, i32* %9, align 4
  br label %87

26:                                               ; preds = %16
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 -1, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @read(i32 %36, i32* %9, i32 4)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %41, i32* %9, align 4
  br label %87

42:                                               ; preds = %30
  br label %86

43:                                               ; preds = %26
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @F_SETFD, align 4
  %54 = load i32, i32* @FD_CLOEXEC, align 4
  %55 = call i64 @fcntl(i32 %52, i32 %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = call i32 @execvp(i8* %58, i8** %59)
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @PROCESS_ERROR_MISSING_BINARY, align 4
  store i32 %65, i32* %9, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %73

70:                                               ; preds = %47
  %71 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @PROCESS_ERROR_GENERIC, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write(i32 %75, i32* %9, i32 4)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  %84 = call i32 @_exit(i32 1) #3
  unreachable

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %85, %42
  br label %87

87:                                               ; preds = %86, %39, %23
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %13
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @write(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
