; ModuleID = '/home/carl/AnghaBench/streem/src/extr_random.c_iter_sample.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_random.c_iter_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.sample_data* }
%struct.sample_data = type { i64, i64, i8**, i32 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @iter_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_sample(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sample_data*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.sample_data*, %struct.sample_data** %9, align 8
  store %struct.sample_data* %10, %struct.sample_data** %6, align 8
  %11 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %12 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %15 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %21 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %20, i32 0, i32 2
  %22 = load i8**, i8*** %21, align 8
  %23 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %24 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds i8*, i8** %22, i64 %25
  store i8* %19, i8** %27, align 8
  %28 = load i32, i32* @STRM_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %2
  %30 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %31 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @xorshift128(i32 %32)
  %34 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %35 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = urem i64 %33, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %40 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %46 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %44, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %29
  %51 = load %struct.sample_data*, %struct.sample_data** %6, align 8
  %52 = getelementptr inbounds %struct.sample_data, %struct.sample_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load i32, i32* @STRM_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @xorshift128(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
