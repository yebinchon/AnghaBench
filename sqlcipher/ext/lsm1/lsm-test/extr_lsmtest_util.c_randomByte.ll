; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_randomByte.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_randomByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8 }

@sqlite3Prng = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @randomByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @randomByte() #0 {
  %1 = alloca i8, align 1
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %3 = add i64 %2, 1
  store i64 %3, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 1), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i8, i8* %4, i64 %5
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %1, align 1
  %8 = load i8, i8* %1, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 2), align 8
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 2), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 1), align 8
  %15 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 2), align 8
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 1), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %18, i8* %21, align 1
  %22 = load i8, i8* %1, align 1
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 1), align 8
  %24 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 2), align 8
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %22, i8* %26, align 1
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %1, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %1, align 1
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 1), align 8
  %37 = load i8, i8* %1, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  ret i8 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
