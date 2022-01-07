; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_space_upgrade.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_space_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@EINTR = common dso_local global i32 0, align 4
@JUSTLOOKING = common dso_local global i32 0, align 4
@FORREAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @dmu_objset_space_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_space_upgrade(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %76, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @mutex_enter(i32* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EINTR, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @mutex_exit(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %23
  %32 = load i32, i32* @JUSTLOOKING, align 4
  %33 = call i64 @issig(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @FORREAL, align 4
  %37 = call i64 @issig(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINTR, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %81

42:                                               ; preds = %35, %31
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @FTAG, align 4
  %46 = call i32 @dmu_bonus_hold(%struct.TYPE_6__* %43, i64 %44, i32 %45, i32** %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %76

50:                                               ; preds = %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = call i32* @dmu_tx_create(%struct.TYPE_6__* %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @dmu_tx_hold_bonus(i32* %53, i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @TXG_WAIT, align 4
  %58 = call i32 @dmu_tx_assign(i32* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dmu_buf_rele(i32* %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @dmu_tx_abort(i32* %65)
  br label %76

67:                                               ; preds = %50
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @dmu_buf_will_dirty(i32* %68, i32* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dmu_buf_rele(i32* %71, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @dmu_tx_commit(i32* %74)
  br label %76

76:                                               ; preds = %67, %61, %49
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @dmu_object_next(%struct.TYPE_6__* %77, i64* %4, i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  br label %9

80:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %39, %29
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @issig(i32) #1

declare dso_local i32 @dmu_bonus_hold(%struct.TYPE_6__*, i64, i32, i32**) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_6__*) #1

declare dso_local i32 @dmu_tx_hold_bonus(i32*, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_buf_rele(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @dmu_object_next(%struct.TYPE_6__*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
