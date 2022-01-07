; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaTruncate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaTruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64)* @quotaTruncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quotaTruncate(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = bitcast %struct.TYPE_11__* %10 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call %struct.TYPE_11__* @quotaSubOpen(%struct.TYPE_11__* %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_11__*, i64)**
  %19 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 %19(%struct.TYPE_11__* %20, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %2
  %30 = call i32 (...) @quotaEnter()
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %9, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = call i32 (...) @quotaLeave()
  br label %54

54:                                               ; preds = %29, %2
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_11__* @quotaSubOpen(%struct.TYPE_11__*) #1

declare dso_local i32 @quotaEnter(...) #1

declare dso_local i32 @quotaLeave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
