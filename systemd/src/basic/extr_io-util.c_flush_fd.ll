; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_flush_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_flush_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@LINE_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  %14 = load i32, i32* @POLLIN, align 4
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %71, %68, %1
  %16 = load i32, i32* @LINE_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = call i32 @poll(%struct.pollfd* %4, i32 1, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load i32, i32* @errno, align 4
  %25 = load i32, i32* @EINTR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 3, i32* %10, align 4
  br label %68

28:                                               ; preds = %23
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %68

31:                                               ; preds = %15
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %68

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = trunc i64 %17 to i32
  %40 = call i64 @read(i32 %38, i8* %19, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @EINTR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 3, i32* %10, align 4
  br label %68

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %68

54:                                               ; preds = %48
  %55 = load i32, i32* @errno, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %68

57:                                               ; preds = %37
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %68

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %60, %54, %52, %47, %34, %28, %27
  %69 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %74 [
    i32 0, label %71
    i32 3, label %15
    i32 1, label %72
  ]

71:                                               ; preds = %68
  br label %15

72:                                               ; preds = %68
  %73 = load i32, i32* %2, align 4
  ret i32 %73

74:                                               ; preds = %68
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
