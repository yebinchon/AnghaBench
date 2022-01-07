; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_write.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_write(%struct.io* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.io*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.io* %0, %struct.io** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %56, %42, %3
  %12 = load %struct.io*, %struct.io** %4, align 8
  %13 = call i32 @io_error(%struct.io* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %57

21:                                               ; preds = %19
  %22 = load %struct.io*, %struct.io** %4, align 8
  %23 = getelementptr inbounds %struct.io, %struct.io* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %28, %29
  %31 = call i32 @write(i32 %24, i8* %27, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EAGAIN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %11

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @errno, align 8
  %48 = load %struct.io*, %struct.io** %4, align 8
  %49 = getelementptr inbounds %struct.io, %struct.io* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55
  br label %11

57:                                               ; preds = %19
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @io_error(%struct.io*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
