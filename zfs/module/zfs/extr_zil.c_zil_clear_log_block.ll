; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_clear_log_block.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_clear_log_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i64)* @zil_clear_log_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zil_clear_log_block(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %11 = call i32 @BP_IS_HOLE(%struct.TYPE_10__* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = call i64 @zil_bp_tree_add(%struct.TYPE_9__* %23, %struct.TYPE_10__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = call i32 @zio_free(i32 %31, i64 %32, %struct.TYPE_10__* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %27, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_HOLE(%struct.TYPE_10__*) #1

declare dso_local i64 @zil_bp_tree_add(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @zio_free(i32, i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
