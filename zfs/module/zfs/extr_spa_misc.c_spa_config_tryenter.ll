; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_config_tryenter.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_config_tryenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i64 }

@SCL_LOCKS = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i64 0, align 8
@curthread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_config_tryenter(%struct.TYPE_5__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %95, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @SCL_LOCKS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %98

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %95

29:                                               ; preds = %16
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call i32 @mutex_enter(i32* %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @RW_READER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41, %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = call i32 @mutex_exit(i32* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %51, %54
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @spa_config_exit(%struct.TYPE_5__* %50, i32 %55, i8* %56)
  store i32 0, i32* %5, align 4
  br label %99

58:                                               ; preds = %41
  br label %87

59:                                               ; preds = %29
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @curthread, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = call i32 @zfs_refcount_is_zero(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = call i32 @mutex_exit(i32* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 1, %77
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %76, %79
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @spa_config_exit(%struct.TYPE_5__* %75, i32 %80, i8* %81)
  store i32 0, i32* %5, align 4
  br label %99

83:                                               ; preds = %59
  %84 = load i64, i64* @curthread, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %58
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @zfs_refcount_add(i32* %89, i8* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = call i32 @mutex_exit(i32* %93)
  br label %95

95:                                               ; preds = %87, %28
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %12

98:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %71, %46
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @zfs_refcount_add(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
