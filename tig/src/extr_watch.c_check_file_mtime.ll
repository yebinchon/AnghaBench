; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_check_file_mtime.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_check_file_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, ...)* @check_file_mtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_mtime(i64* %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @SIZEOF_STR, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = trunc i64 %13 to i32
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @FORMAT_BUFFER(i8* %15, i32 %22, i8* %23, i32 %24, i32 0)
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = call i64 @lstat(i8* %15, %struct.stat* %8)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %28, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %4, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FORMAT_BUFFER(i8*, i32, i8*, i32, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
