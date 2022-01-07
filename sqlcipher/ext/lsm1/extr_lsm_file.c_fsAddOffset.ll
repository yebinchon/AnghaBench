; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsAddOffset.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsAddOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i64, i32, i64*)* @fsAddOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsAddOffset(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @fsLastPageOnPagesBlock(%struct.TYPE_7__* %19, i64 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i64, i64* %12, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i64*, i64** %11, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @LSM_OK, align 4
  store i32 %34, i32* %6, align 4
  br label %55

35:                                               ; preds = %5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @fsPageToBlock(%struct.TYPE_7__* %38, i64 %39)
  %41 = call i32 @fsBlockNext(%struct.TYPE_7__* %36, i32* %37, i32 %40, i32* %13)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @fsFirstPageOnBlock(%struct.TYPE_7__* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %48, %49
  %51 = add nsw i64 %50, 1
  %52 = sub nsw i64 %47, %51
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %35, %28
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsLastPageOnPagesBlock(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @fsBlockNext(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @fsPageToBlock(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @fsFirstPageOnBlock(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
