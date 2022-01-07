; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_first_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_first_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_first_open(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = call i32 @RW_READ_HELD(i32* %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = call i32 @MUTEX_HELD(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = call i32 @mutex_owned(i32* @spa_namespace_lock)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = call i32 @mutex_tryenter(i32* @spa_namespace_lock)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINTR, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @strchr(i32 %34, i8 signext 64)
  %36 = icmp ne i32* %35, null
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ true, %28 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMU_OST_ZVOL, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @B_TRUE, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @dmu_objset_own(i32 %42, i32 %43, i32 %44, i32 %45, %struct.TYPE_6__* %46, i32** %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %66

51:                                               ; preds = %37
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i32 @zvol_setup_zv(%struct.TYPE_6__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @dmu_objset_disown(i32* %60, i32 1, %struct.TYPE_6__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %59, %51
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @SET_ERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_READ_HELD(i32*) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @mutex_owned(i32*) #1

declare dso_local i32 @mutex_tryenter(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @dmu_objset_own(i32, i32, i32, i32, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @zvol_setup_zv(%struct.TYPE_6__*) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
