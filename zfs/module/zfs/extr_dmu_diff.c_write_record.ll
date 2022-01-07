; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_write_record.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffarg = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@DDR_NONE = common dso_local global i64 0, align 8
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@FAPPEND = common dso_local global i32 0, align 4
@RLIM64_INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diffarg*)* @write_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_record(%struct.diffarg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diffarg*, align 8
  %4 = alloca i32, align 4
  store %struct.diffarg* %0, %struct.diffarg** %3, align 8
  %5 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %6 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DDR_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %13 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  store i32 0, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* @UIO_WRITE, align 4
  %16 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %17 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %20 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %19, i32 0, i32 2
  %21 = ptrtoint %struct.TYPE_2__* %20 to i32
  %22 = load i32, i32* @UIO_SYSSPACE, align 4
  %23 = load i32, i32* @FAPPEND, align 4
  %24 = load i32, i32* @RLIM64_INFINITY, align 4
  %25 = call i32 (...) @CRED()
  %26 = call i32 @vn_rdwr(i32 %15, i32 %18, i32 %21, i32 8, i32 0, i32 %22, i32 %23, i32 %24, i32 %25, i32* %4)
  %27 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %28 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %30 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.diffarg*, %struct.diffarg** %3, align 8
  %37 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %14, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @vn_rdwr(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CRED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
