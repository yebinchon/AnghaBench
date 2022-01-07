; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointRecover.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointRecover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmCheckpointRecover(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* @LSM_OK, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %10 = bitcast [2 x i32*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %15 = call i32 @lsmFsMetaPageGet(i32 %13, i32 0, i32 1, i32** %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @LSM_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %24 = call i32 @lsmFsMetaPageGet(i32 %22, i32 0, i32 2, i32** %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %27 = load i32*, i32** %26, align 16
  %28 = call i64 @ckptLoadId(i32* %27)
  store i64 %28, i64* %4, align 8
  %29 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @ckptLoadId(i32* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  %48 = call i32 @ckptTryLoad(%struct.TYPE_5__* %36, i32* %43, i32 %47, i32* %3)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %25
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 2
  %64 = call i32 @ckptTryLoad(%struct.TYPE_5__* %52, i32* %59, i32 %63, i32* %3)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %51, %25
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = call i32 @ckptLoadEmpty(%struct.TYPE_5__* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %73 = load i32*, i32** %72, align 16
  %74 = call i32 @lsmFsMetaPageRelease(i32* %73)
  %75 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @lsmFsMetaPageRelease(i32* %76)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lsmFsMetaPageGet(i32, i32, i32, i32**) #2

declare dso_local i64 @ckptLoadId(i32*) #2

declare dso_local i32 @ckptTryLoad(%struct.TYPE_5__*, i32*, i32, i32*) #2

declare dso_local i32 @ckptLoadEmpty(%struct.TYPE_5__*) #2

declare dso_local i32 @lsmFsMetaPageRelease(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
