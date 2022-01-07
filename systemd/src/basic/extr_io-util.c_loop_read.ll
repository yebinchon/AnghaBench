; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_loop_read.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_loop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @loop_read(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @SSIZE_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %88

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %83, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @read(i32 %30, i32* %31, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %83

41:                                               ; preds = %36
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @POLLIN, align 4
  %51 = load i32, i32* @USEC_INFINITY, align 4
  %52 = call i32 @fd_wait_for_event(i32 %49, i32 %50, i32 %51)
  br label %83

53:                                               ; preds = %45, %41
  %54 = load i64, i64* %11, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  br label %61

58:                                               ; preds = %53
  %59 = load i64, i64* @errno, align 8
  %60 = sub nsw i64 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i64 [ %57, %56 ], [ %60, %58 ]
  store i64 %62, i64* %5, align 8
  br label %88

63:                                               ; preds = %29
  %64 = load i64, i64* %12, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %5, align 8
  br label %88

68:                                               ; preds = %63
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ule i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i64, i64* %12, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %68, %48, %40
  %84 = load i64, i64* %8, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %29, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %86, %66, %61, %25
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @fd_wait_for_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
