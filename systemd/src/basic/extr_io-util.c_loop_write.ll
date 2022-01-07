; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_loop_write.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_loop_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loop_write(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @SSIZE_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @_unlikely_(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %88

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %84, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @write(i32 %32, i32* %33, i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %31
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EINTR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %84

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @POLLOUT, align 4
  %53 = load i32, i32* @USEC_INFINITY, align 4
  %54 = call i32 @fd_wait_for_event(i32 %51, i32 %52, i32 %53)
  br label %84

55:                                               ; preds = %47, %43
  %56 = load i32, i32* @errno, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %88

58:                                               ; preds = %31
  %59 = load i64, i64* %8, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @_unlikely_(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %88

72:                                               ; preds = %64
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ule i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i64, i64* %11, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %72, %50, %42
  %85 = load i64, i64* %8, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %31, label %87

87:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %69, %55, %27
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_unlikely_(i32) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i32 @fd_wait_for_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
