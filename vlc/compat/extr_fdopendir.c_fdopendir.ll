; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_fdopendir.c_fdopendir.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_fdopendir.c_fdopendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%u\00", align 1
@EIO = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fdopendir(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = alloca [27 x i8], align 16
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @fstat(i32 %7, %struct.stat* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %35

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @S_ISDIR(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOTDIR, align 4
  store i32 %17, i32* @errno, align 4
  store i32* null, i32** %2, align 8
  br label %35

18:                                               ; preds = %11
  %19 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %23 = call i32* @opendir(i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %2, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load i32, i32* @errno, align 4
  switch i32 %31, label %34 [
    i32 133, label %32
    i32 132, label %32
    i32 130, label %32
    i32 128, label %32
    i32 131, label %32
    i32 129, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30, %30
  %33 = load i32, i32* @EIO, align 4
  store i32 %33, i32* @errno, align 4
  br label %34

34:                                               ; preds = %32, %30
  store i32* null, i32** %2, align 8
  br label %35

35:                                               ; preds = %34, %26, %16, %10
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
