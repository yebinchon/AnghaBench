; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_lib.c_crypto_put_output_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_lib.c_crypto_put_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@COPY_TO_DATA = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_put_output_data(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %42 [
    i32 129, label %11
    i32 128, label %36
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %11
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @bcopy(i32* %24, i32* %33, i32 %34)
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @COPY_TO_DATA, align 4
  %41 = call i32 @crypto_uio_data(%struct.TYPE_6__* %37, i32* %38, i32 %39, i32 %40, i32* null, i32* null)
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %23
  %45 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %42, %36, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_uio_data(%struct.TYPE_6__*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
