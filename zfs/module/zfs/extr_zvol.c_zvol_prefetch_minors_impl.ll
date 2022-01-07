; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_prefetch_minors_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_prefetch_minors_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zvol_prefetch_minors_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_prefetch_minors_impl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @DMU_OST_ZVOL, align 4
  %13 = load i32, i32* @B_TRUE, align 4
  %14 = load i32, i32* @B_TRUE, align 4
  %15 = load i32, i32* @FTAG, align 4
  %16 = call i64 @dmu_objset_own(i8* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32** %5)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ZVOL_OBJ, align 4
  %26 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %27 = call i32 @dmu_prefetch(i32* %24, i32 %25, i32 0, i32 0, i32 0, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @B_TRUE, align 4
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dmu_objset_disown(i32* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  ret void
}

declare dso_local i64 @dmu_objset_own(i8*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @dmu_prefetch(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
