; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_aggsum.c_aggsum_flush_bucket.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_aggsum.c_aggsum_flush_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.aggsum_bucket = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.aggsum_bucket*)* @aggsum_flush_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggsum_flush_bucket(%struct.TYPE_3__* %0, %struct.aggsum_bucket* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.aggsum_bucket*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.aggsum_bucket* %1, %struct.aggsum_bucket** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = call i32 @MUTEX_HELD(i32* %6)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %10 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %9, i32 0, i32 2
  %11 = call i32 @MUTEX_HELD(i32* %10)
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %16 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @atomic_add_64(i32* %14, i64 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %22 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @atomic_add_64(i32* %20, i64 %23)
  %25 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %26 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %30 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 0, %31
  %33 = call i32 @atomic_add_64(i32* %28, i64 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %37 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @atomic_add_64(i32* %35, i64 %38)
  %40 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %4, align 8
  %41 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @atomic_add_64(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
