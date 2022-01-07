; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_grab_sa_handle.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_grab_sa_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@DMU_OT_SA = common dso_local global i64 0, align 8
@DMU_OT_ZNODE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@SA_HDL_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i32**, i8*)* @zfs_grab_sa_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_grab_sa_handle(i32* %0, i32 %1, i32** %2, i32** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = load i32**, i32*** %10, align 8
  %18 = call i32 @sa_buf_hold(i32* %14, i32 %15, i8* %16, i32** %17)
  store i32 %18, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %67

22:                                               ; preds = %5
  %23 = load i32**, i32*** %10, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dmu_object_info_from_db(i32* %24, %struct.TYPE_3__* %12)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMU_OT_SA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMU_OT_ZNODE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %30, %22
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMU_OT_ZNODE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %52

45:                                               ; preds = %40, %30
  %46 = load i32**, i32*** %10, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @sa_buf_rele(i32* %47, i8* %48)
  %50 = load i32, i32* @ENOTSUP, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %67

52:                                               ; preds = %40, %35
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SA_HDL_PRIVATE, align 4
  %56 = load i32**, i32*** %9, align 8
  %57 = call i32 @sa_handle_get(i32* %53, i32 %54, i32* null, i32 %55, i32** %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32**, i32*** %10, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @sa_buf_rele(i32* %62, i8* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %67

66:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %60, %45, %20
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @sa_buf_hold(i32*, i32, i8*, i32**) #1

declare dso_local i32 @dmu_object_info_from_db(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @sa_buf_rele(i32*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @sa_handle_get(i32*, i32, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
