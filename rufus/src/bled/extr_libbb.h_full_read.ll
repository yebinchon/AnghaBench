; ModuleID = '/home/carl/AnghaBench/rufus/src/bled/extr_libbb.h_full_read.c'
source_filename = "/home/carl/AnghaBench/rufus/src/bled/extr_libbb.h_full_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@bled_cancel_request = common dso_local global i64* null, align 8
@EINTR = common dso_local global i32 0, align 4
@bb_virtual_fd = common dso_local global i32 0, align 4
@bb_virtual_pos = common dso_local global i64 0, align 8
@bb_virtual_len = common dso_local global i64 0, align 8
@bb_virtual_buf = common dso_local global i32* null, align 8
@bb_total_rb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @full_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @full_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EBADF, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %70

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EFAULT, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %70

18:                                               ; preds = %13
  %19 = load i64*, i64** @bled_cancel_request, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64*, i64** @bled_cancel_request, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EINTR, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %70

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @bb_virtual_fd, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i64, i64* @bb_virtual_pos, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* @bb_virtual_len, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @bb_virtual_len, align 8
  %39 = load i64, i64* @bb_virtual_pos, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** @bb_virtual_buf, align 8
  %44 = load i64, i64* @bb_virtual_pos, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @memcpy(i8* %42, i32* %45, i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @bb_virtual_pos, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* @bb_virtual_pos, align 8
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %59

53:                                               ; preds = %27
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @_read(i32 %54, i8* %55, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %53, %41
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @bb_total_rb, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* @bb_total_rb, align 4
  %66 = load i32, i32* @bb_total_rb, align 4
  %67 = call i32 @bled_progress(i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %25, %16, %11
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @_read(i32, i8*, i32) #1

declare dso_local i32 @bled_progress(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
