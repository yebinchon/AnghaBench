; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_copy.c_copy_directory_full.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_copy.c_copy_directory_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@COPY_DEPTH_MAX = common dso_local global i32 0, align 4
@UID_INVALID = common dso_local global i32 0, align 4
@GID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_directory_full(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.stat, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @lstat(i8* %19, %struct.stat* %14)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %48

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISDIR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOTDIR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %48

33:                                               ; preds = %25
  %34 = load i32, i32* @AT_FDCWD, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @AT_FDCWD, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @COPY_DEPTH_MAX, align 4
  %41 = load i32, i32* @UID_INVALID, align 4
  %42 = load i32, i32* @GID_INVALID, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @fd_copy_directory(i32 %34, i8* %35, %struct.stat* %14, i32 %36, i8* %37, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32* null, i32 %44, i32 %45, i8* %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %33, %30, %22
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @fd_copy_directory(i32, i8*, %struct.stat*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
