; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_aggsum.c_aggsum_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_aggsum.c_aggsum_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.aggsum_bucket* }
%struct.aggsum_bucket = type { i32, i32, i64 }

@CPU_SEQID = common dso_local global i64 0, align 8
@aggsum_borrow_multiplier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aggsum_add(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aggsum_bucket*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @kpreempt_disable()
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %8, align 8
  %10 = load i64, i64* @CPU_SEQID, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = urem i64 %10, %13
  %15 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %9, i64 %14
  store %struct.aggsum_bucket* %15, %struct.aggsum_bucket** %5, align 8
  %16 = call i32 (...) @kpreempt_enable()
  br label %17

17:                                               ; preds = %52, %2
  %18 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %19 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %18, i32 0, i32 1
  %20 = call i32 @mutex_enter(i32* %19)
  %21 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %22 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %27 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp sle i32 %25, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %17
  %32 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %33 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %38 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = sub nsw i32 0, %40
  %42 = icmp sge i32 %36, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %46 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %50 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %49, i32 0, i32 1
  %51 = call i32 @mutex_exit(i32* %50)
  ret void

52:                                               ; preds = %31, %17
  %53 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %54 = getelementptr inbounds %struct.aggsum_bucket, %struct.aggsum_bucket* %53, i32 0, i32 1
  %55 = call i32 @mutex_exit(i32* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @aggsum_borrow_multiplier, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.aggsum_bucket*, %struct.aggsum_bucket** %5, align 8
  %61 = call i32 @aggsum_borrow(%struct.TYPE_4__* %56, i32 %59, %struct.aggsum_bucket* %60)
  br label %17
}

declare dso_local i32 @kpreempt_disable(...) #1

declare dso_local i32 @kpreempt_enable(...) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @aggsum_borrow(%struct.TYPE_4__*, i32, %struct.aggsum_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
