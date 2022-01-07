; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_getlock.c_isLocked.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_getlock.c_isLocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i32, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"fcntl(%d) failed: errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s lock held by %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i8*)* @isLocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLocked(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.flock, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = call i32 @memset(%struct.flock* %12, i32 0, i32 32)
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @F_GETLK, align 4
  %24 = call i32 @fcntl(i32 %22, i32 %23, %struct.flock* %12)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @F_UNLCK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %42)
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.flock*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
