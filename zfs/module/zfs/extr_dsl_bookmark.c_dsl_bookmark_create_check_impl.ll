; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_create_check_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_create_check_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*)* @dsl_bookmark_create_check_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_bookmark_create_check_impl(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @dmu_tx_pool(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @dsl_bookmark_hold_ds(i32* %24, i8* %25, %struct.TYPE_11__** %9, i32 %26, i8** %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %23
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call i32 @dsl_dataset_is_before(%struct.TYPE_11__* %33, %struct.TYPE_11__* %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @dsl_bookmark_lookup_impl(%struct.TYPE_11__* %44, i8* %45, %struct.TYPE_10__* %12)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EEXIST, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ESRCH, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %59, %52, %37, %30, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_bookmark_hold_ds(i32*, i8*, %struct.TYPE_11__**, i32, i8**) #1

declare dso_local i32 @dsl_dataset_is_before(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dsl_bookmark_lookup_impl(%struct.TYPE_11__*, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
