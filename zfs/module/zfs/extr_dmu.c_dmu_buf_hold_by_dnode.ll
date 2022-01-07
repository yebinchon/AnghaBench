; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_buf_hold_by_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_buf_hold_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_RF_CANFAIL = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@DB_RF_NOPREFETCH = common dso_local global i32 0, align 4
@DMU_READ_NO_DECRYPT = common dso_local global i32 0, align 4
@DB_RF_NO_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_buf_hold_by_dnode(i32* %0, i32 %1, i8* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @DB_RF_CANFAIL, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @DB_RF_NOPREFETCH, align 4
  %21 = load i32, i32* %12, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %19, %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @DMU_READ_NO_DECRYPT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @DB_RF_NO_DECRYPT, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = call i32 @dmu_buf_hold_noread_by_dnode(i32* %33, i32 %34, i8* %35, i32** %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dbuf_read(i32* %43, i32* null, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %13, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @dbuf_rele(i32* %49, i8* %50)
  %52 = load i32**, i32*** %9, align 8
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %40
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i32 @dmu_buf_hold_noread_by_dnode(i32*, i32, i8*, i32**) #1

declare dso_local i32 @dbuf_read(i32*, i32*, i32) #1

declare dso_local i32 @dbuf_rele(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
