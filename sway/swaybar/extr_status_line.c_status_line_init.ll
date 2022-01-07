; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_status_line.c_status_line_init.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_status_line.c_status_line_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_line = type { i32, i64, i32, i32, i8*, i8*, i32, i32, i32 }

@SIGSTOP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to create pipes for status_command fork\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.status_line* @status_line_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.status_line*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [4 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %7 = call %struct.status_line* @calloc(i32 1, i32 56)
  store %struct.status_line* %7, %struct.status_line** %3, align 8
  %8 = load i32, i32* @SIGSTOP, align 4
  %9 = load %struct.status_line*, %struct.status_line** %3, align 8
  %10 = getelementptr inbounds %struct.status_line, %struct.status_line* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @SIGCONT, align 4
  %12 = load %struct.status_line*, %struct.status_line** %3, align 8
  %13 = getelementptr inbounds %struct.status_line, %struct.status_line* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.status_line*, %struct.status_line** %3, align 8
  %15 = getelementptr inbounds %struct.status_line, %struct.status_line* %14, i32 0, i32 0
  store i32 8192, i32* %15, align 8
  %16 = load %struct.status_line*, %struct.status_line** %3, align 8
  %17 = getelementptr inbounds %struct.status_line, %struct.status_line* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @malloc(i32 %18)
  %20 = load %struct.status_line*, %struct.status_line** %3, align 8
  %21 = getelementptr inbounds %struct.status_line, %struct.status_line* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %23 = call i64 @pipe(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %27 = call i64 @pipe(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %1
  %30 = load i32, i32* @SWAY_ERROR, align 4
  %31 = call i32 @sway_log(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %25
  %34 = call i64 (...) @fork()
  %35 = load %struct.status_line*, %struct.status_line** %3, align 8
  %36 = getelementptr inbounds %struct.status_line, %struct.status_line* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.status_line*, %struct.status_line** %3, align 8
  %38 = getelementptr inbounds %struct.status_line, %struct.status_line* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %33
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STDOUT_FILENO, align 4
  %45 = call i32 @dup2(i32 %43, i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STDIN_FILENO, align 4
  %55 = call i32 @dup2(i32 %53, i32 %54)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %2, align 8
  store i8* %65, i8** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* null, i8** %66, align 8
  %67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %68 = load i8*, i8** %67, align 16
  %69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %70 = call i32 @execvp(i8* %68, i8** %69)
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %33
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @close(i32 %74)
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.status_line*, %struct.status_line** %3, align 8
  %79 = getelementptr inbounds %struct.status_line, %struct.status_line* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.status_line*, %struct.status_line** %3, align 8
  %81 = getelementptr inbounds %struct.status_line, %struct.status_line* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @F_SETFL, align 4
  %84 = load i32, i32* @O_NONBLOCK, align 4
  %85 = call i32 @fcntl(i32 %82, i32 %83, i32 %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @close(i32 %87)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.status_line*, %struct.status_line** %3, align 8
  %92 = getelementptr inbounds %struct.status_line, %struct.status_line* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.status_line*, %struct.status_line** %3, align 8
  %94 = getelementptr inbounds %struct.status_line, %struct.status_line* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @F_SETFL, align 4
  %97 = load i32, i32* @O_NONBLOCK, align 4
  %98 = call i32 @fcntl(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.status_line*, %struct.status_line** %3, align 8
  %100 = getelementptr inbounds %struct.status_line, %struct.status_line* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @fdopen(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.status_line*, %struct.status_line** %3, align 8
  %104 = getelementptr inbounds %struct.status_line, %struct.status_line* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load %struct.status_line*, %struct.status_line** %3, align 8
  %106 = getelementptr inbounds %struct.status_line, %struct.status_line* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @fdopen(i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.status_line*, %struct.status_line** %3, align 8
  %110 = getelementptr inbounds %struct.status_line, %struct.status_line* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.status_line*, %struct.status_line** %3, align 8
  ret %struct.status_line* %111
}

declare dso_local %struct.status_line* @calloc(i32, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i8* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
