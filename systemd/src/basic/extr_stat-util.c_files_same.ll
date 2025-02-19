; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_stat-util.c_files_same.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_stat-util.c_files_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@AT_FDCWD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @files_same(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.stat, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i32, i32* @AT_FDCWD, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @fstatat(i32 %14, i8* %15, %struct.stat* %8, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @errno, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load i32, i32* @AT_FDCWD, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @fstatat(i32 %23, i8* %24, %struct.stat* %9, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i1 [ false, %31 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %28, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
