; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair_alloc_fixed.c_nv_fixed_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair_alloc_fixed.c_nv_fixed_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i64)* @nv_fixed_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nv_fixed_alloc(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  store i8* null, i8** %3, align 8
  br label %34

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %26, %27
  %29 = call i64 @P2ROUNDUP(i64 %28, i32 8)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %25, %24
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
