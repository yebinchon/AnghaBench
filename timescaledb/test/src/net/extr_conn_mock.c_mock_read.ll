; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/net/extr_conn_mock.c_mock_read.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/net/extr_conn_mock.c_mock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64)* @mock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mock_read(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %66

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = icmp uge i64 %23, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %32, %22
  br label %41

41:                                               ; preds = %44, %40
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = call i64 (...) @rand()
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  %48 = urem i64 %45, %47
  store i64 %48, i64* %8, align 8
  br label %41

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @memcpy(i8* %50, i64 %57, i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %49, %21
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @rand(...) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
