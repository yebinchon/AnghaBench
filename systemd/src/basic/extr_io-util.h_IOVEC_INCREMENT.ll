; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.h_IOVEC_INCREMENT.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.h_IOVEC_INCREMENT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iovec*, i64, i64)* @IOVEC_INCREMENT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IOVEC_INCREMENT(%struct.iovec* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %49, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i64, i64* %6, align 8
  %15 = icmp ule i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @_unlikely_(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %52

20:                                               ; preds = %13
  %21 = load %struct.iovec*, %struct.iovec** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %22
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @MIN(i64 %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.iovec*, %struct.iovec** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i64 %30
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, %28
  store i64 %34, i64* %32, align 8
  %35 = load %struct.iovec*, %struct.iovec** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load %struct.iovec*, %struct.iovec** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %43
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 1
  store i32* %41, i32** %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %20
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %9

52:                                               ; preds = %19, %9
  %53 = load i64, i64* %6, align 8
  ret i64 %53
}

declare dso_local i64 @_unlikely_(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
