; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_check_ioerr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_check_ioerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DB_RF_CANFAIL = common dso_local global i32 0, align 4
@DB_RF_NOPREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32)* @dmu_tx_check_ioerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_tx_check_ioerr(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* @RW_READER, align 4
  %15 = call i32 @rw_enter(i32* %13, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32* @dbuf_hold_level(%struct.TYPE_4__* %16, i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @rw_exit(i32* %22)
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EIO, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @DB_RF_CANFAIL, align 4
  %33 = load i32, i32* @DB_RF_NOPREFETCH, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @dbuf_read(i32* %30, i32* %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i32 @dbuf_rele(i32* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32* @dbuf_hold_level(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dbuf_read(i32*, i32*, i32) #1

declare dso_local i32 @dbuf_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
