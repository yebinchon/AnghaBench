; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_serialize.c_open_serialization_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_serialize.c_open_serialization_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MFD_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/run/systemd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Serializing %s to %s.\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Serializing %s to memfd.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_serialization_fd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @MFD_CLOEXEC, align 4
  %8 = call i32 @memfd_create(i8* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = call i32 (...) @getpid_cached()
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = load i32, i32* @O_CLOEXEC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open_tmpfile_unlinkable(i8* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %11
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %27)
  br label %32

29:                                               ; preds = %1
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @memfd_create(i8*, i32) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @open_tmpfile_unlinkable(i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
