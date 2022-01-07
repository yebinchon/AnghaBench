; ModuleID = '/home/carl/AnghaBench/tig/src/extr_parse.c_parse_timezone.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_parse.c_parse_timezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.time*, i8*)* @parse_timezone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_timezone(%struct.time* %0, i8* %1) #0 {
  %3 = alloca %struct.time*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.time* %0, %struct.time** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sub nsw i32 48, %9
  %11 = mul nsw i32 %10, 60
  %12 = mul nsw i32 %11, 60
  %13 = mul nsw i32 %12, 10
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 48, %18
  %20 = mul nsw i32 %19, 60
  %21 = mul nsw i32 %20, 60
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 48, %28
  %30 = mul nsw i32 %29, 60
  %31 = mul nsw i32 %30, 10
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 48, %38
  %40 = mul nsw i32 %39, 60
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %2
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.time*, %struct.time** %3, align 8
  %55 = getelementptr inbounds %struct.time, %struct.time* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.time*, %struct.time** %3, align 8
  %58 = getelementptr inbounds %struct.time, %struct.time* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
