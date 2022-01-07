; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_regenerate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_regenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*)* @dsl_deadlist_regenerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_deadlist_regenerate(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @dmu_objset_pool(i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dsl_deadlist_open(%struct.TYPE_6__* %9, i32* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @dsl_deadlist_close(%struct.TYPE_6__* %9)
  br label %48

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_dataset_hold_obj(i32* %28, i32 %29, i32 %30, i32** %11)
  %32 = call i32 @VERIFY0(i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call %struct.TYPE_7__* @dsl_dataset_phys(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @dsl_deadlist_add_key(%struct.TYPE_6__* %9, i32 %36, i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call %struct.TYPE_7__* @dsl_dataset_phys(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @dsl_dataset_rele(i32* %43, i32 %44)
  br label %24

46:                                               ; preds = %24
  %47 = call i32 @dsl_deadlist_close(%struct.TYPE_6__* %9)
  br label %48

48:                                               ; preds = %46, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @dmu_objset_pool(i32*) #2

declare dso_local i32 @dsl_deadlist_open(%struct.TYPE_6__*, i32*, i32) #2

declare dso_local i32 @dsl_deadlist_close(%struct.TYPE_6__*) #2

declare dso_local i32 @VERIFY0(i32) #2

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, i32**) #2

declare dso_local i32 @dsl_deadlist_add_key(%struct.TYPE_6__*, i32, i32*) #2

declare dso_local %struct.TYPE_7__* @dsl_dataset_phys(i32*) #2

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
