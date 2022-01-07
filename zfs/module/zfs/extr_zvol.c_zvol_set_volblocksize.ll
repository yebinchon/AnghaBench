; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volblocksize.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@RW_READER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ZVOL_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_set_volblocksize(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @RW_READER, align 4
  %11 = call %struct.TYPE_3__* @zvol_find_by_name(i8* %9, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  %16 = call i32 @SET_ERROR(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = call i32 @MUTEX_HELD(i32* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @RW_READ_HELD(i32* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ZVOL_RDONLY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %17
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = call i32 @mutex_exit(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i32 @rw_exit(i32* %37)
  %39 = load i32, i32* @EROFS, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %90

41:                                               ; preds = %17
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @dmu_tx_create(i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @ZVOL_OBJ, align 4
  %48 = call i32 @dmu_tx_hold_bonus(i32* %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @TXG_WAIT, align 4
  %51 = call i32 @dmu_tx_assign(i32* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @dmu_tx_abort(i32* %55)
  br label %81

57:                                               ; preds = %41
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ZVOL_OBJ, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @dmu_object_set_blocksize(i32 %60, i32 %61, i32 %62, i32 0, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ENOTSUP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EBUSY, align 4
  %70 = call i32 @SET_ERROR(i32 %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @dmu_tx_commit(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %71
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = call i32 @mutex_exit(i32* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = call i32 @rw_exit(i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @SET_ERROR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %81, %32, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_3__* @zvol_find_by_name(i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @RW_READ_HELD(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_bonus(i32*, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_object_set_blocksize(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
