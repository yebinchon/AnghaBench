; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hmput_default.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hmput_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stbds_hmput_default(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @STBDS_HASH_TO_ARR(i8* %8, i64 %9)
  %11 = call %struct.TYPE_2__* @stbds_header(i8* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %7, %2
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @STBDS_HASH_TO_ARR(i8* %19, i64 %20)
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ null, %22 ]
  %25 = load i64, i64* %4, align 8
  %26 = call i8* @stbds_arrgrowf(i8* %24, i64 %25, i32 0, i32 1)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call %struct.TYPE_2__* @stbds_header(i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i8* @STBDS_ARR_TO_HASH(i8* %35, i64 %36)
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %23, %7
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local %struct.TYPE_2__* @stbds_header(i8*) #1

declare dso_local i8* @STBDS_HASH_TO_ARR(i8*, i64) #1

declare dso_local i8* @stbds_arrgrowf(i8*, i64, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @STBDS_ARR_TO_HASH(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
