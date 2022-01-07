; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_lookup_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_lookup_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@MT_NORMALIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_bookmark_lookup_impl(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ESRCH, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @MT_NORMALIZE, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @bzero(i32* %38, i32 4)
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @zap_lookup_norm(i32* %40, i64 %41, i8* %42, i32 8, i32 0, i32* %43, i32 %44, i32* null, i32 0, i32* null)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @ESRCH, align 4
  br label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %24
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_10__* @dsl_dataset_phys(%struct.TYPE_9__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @zap_lookup_norm(i32*, i64, i8*, i32, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
