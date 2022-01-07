; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb.c_tdb_scan.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb.c_tdb_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tdb_scan(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, void (i8*, i8*, i32, i8*, i32)* %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (i8*, i8*, i32, i8*, i32)*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store void (i8*, i8*, i32, i8*, i32)* %7, void (i8*, i8*, i32, i8*, i32)** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32, i8*, i32, void (i8*, i8*, i32, i8*, i32)*)**
  %22 = load i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32, i8*, i32, void (i8*, i8*, i32, i8*, i32)*)*, i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32, i8*, i32, void (i8*, i8*, i32, i8*, i32)*)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load void (i8*, i8*, i32, i8*, i32)*, void (i8*, i8*, i32, i8*, i32)** %16, align 8
  %31 = call i32 %22(%struct.TYPE_6__* %23, i8* %24, i32 %25, i8* %26, i32 %27, i8* %28, i32 %29, void (i8*, i8*, i32, i8*, i32)* %30)
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
