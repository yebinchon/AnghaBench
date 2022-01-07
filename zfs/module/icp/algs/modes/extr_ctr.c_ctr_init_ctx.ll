; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ctr.c_ctr_init_ctx.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ctr.c_ctr_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i8*, i8* }

@CRYPTO_MECHANISM_PARAM_INVALID = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@CTR_MODE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctr_init_ctx(%struct.TYPE_3__* %0, i32 %1, i32* %2, void (i32*, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca void (i32*, i32*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store void (i32*, i32*)* %3, void (i32*, i32*)** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 128
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %18, i32* %5, align 4
  br label %68

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 64
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 64
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 64
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @UINT64_MAX, align 8
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = sub i64 %32, 1
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i64 [ %28, %27 ], [ %33, %29 ]
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* @UINT64_MAX, align 8
  store i64 %36, i64* %11, align 8
  br label %42

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  %41 = sub i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i64, i64* %11, align 8
  %44 = call i8* @htonll(i64 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i8* @htonll(i64 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load void (i32*, i32*)*, void (i32*, i32*)** %9, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  call void %51(i32* %52, i32* %55)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* @CTR_MODE, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %42, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @htonll(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
