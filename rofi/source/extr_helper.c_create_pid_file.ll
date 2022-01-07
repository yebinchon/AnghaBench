; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_create_pid_file.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_create_pid_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create pid file: '%s'.\00", align 1
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set CLOEXEC on pidfile.\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to set lock on pidfile: Rofi already running?\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Got error: %d %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_pid_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @S_IRUSR, align 4
  %19 = load i32, i32* @S_IWUSR, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @g_open(i8* %14, i32 %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %2, align 4
  br label %88

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @F_GETFD, align 4
  %30 = call i64 (i32, i32, i32, ...) @fcntl(i32 %28, i32 %29, i32 0)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @FD_CLOEXEC, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @F_SETFD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 (i32, i32, i32, ...) @fcntl(i32 %35, i32 %36, i32 %37, i8* null)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @remove_pid_file(i32 %42)
  store i32 -1, i32* %2, align 4
  br label %88

44:                                               ; preds = %27
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @LOCK_EX, align 4
  %47 = load i32, i32* @LOCK_NB, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @flock(i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @g_strerror(i32 %55)
  %57 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @remove_pid_file(i32 %58)
  store i32 -1, i32* %2, align 4
  br label %88

60:                                               ; preds = %44
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @ftruncate(i32 %61, i32 0)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %66 = call i32 (...) @getpid()
  %67 = call i32 @snprintf(i8* %65, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %72, %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i64 @write(i32 %73, i8* %76, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %68

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %52, %40, %24, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @g_open(i8*, i32, i32) #1

declare dso_local i32 @g_warning(i8*, ...) #1

declare dso_local i64 @fcntl(i32, i32, i32, ...) #1

declare dso_local i32 @remove_pid_file(i32) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @g_strerror(i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
