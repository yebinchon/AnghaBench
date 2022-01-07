; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_copy_dnode_bonus.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_copy_dnode_bonus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64 }

@DNODE_SHIFT = common dso_local global i64 0, align 8
@DMU_OT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_crypt_copy_dnode_bonus(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @DNODE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @abd_borrow_buf_copy(i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %12, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %58, %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DMU_OT_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @DMU_OT_IS_ENCRYPTED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = call i32 @DN_BONUS(%struct.TYPE_4__* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = call i32 @DN_BONUS(%struct.TYPE_4__* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = call i32 @DN_MAX_BONUS_LEN(%struct.TYPE_4__* %54)
  %56 = call i32 @bcopy(i32 %49, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %47, %42, %36, %27
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %23

67:                                               ; preds = %23
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @abd_return_buf(i32* %68, i32* %69, i64 %70)
  ret void
}

declare dso_local i32* @abd_borrow_buf_copy(i32*, i64) #1

declare dso_local i64 @DMU_OT_IS_ENCRYPTED(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @DN_BONUS(%struct.TYPE_4__*) #1

declare dso_local i32 @DN_MAX_BONUS_LEN(%struct.TYPE_4__*) #1

declare dso_local i32 @abd_return_buf(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
