; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_daemon.c_write_pid.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_daemon.c_write_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't create pidfile [%s].\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't open pidfile [%s].\0A\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Can't lock and read pidfile.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Can't lock pidfile, lock is held by pid %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Can't write pid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @write_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @open(i8* %8, i32 %11, i32 420)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %2, align 4
  br label %66

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32* @fdopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  store i32 0, i32* %2, align 4
  br label %66

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LOCK_EX, align 4
  %31 = load i32, i32* @LOCK_NB, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @flock(i32 %29, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fscanf(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  store i32 0, i32* %2, align 4
  br label %66

50:                                               ; preds = %28
  %51 = call i32 (...) @getpid()
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = ptrtoint i32* %52 to i32
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @close(i32 %60)
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %50
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @fflush(i32* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %57, %49, %24, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
