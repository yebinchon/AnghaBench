; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_wrapping_key_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_wrapping_key_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WRAPPING_KEY_LEN = common dso_local global i32 0, align 4
@CRYPTO_KEY_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*, %struct.TYPE_6__**)* @dsl_wrapping_key_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_wrapping_key_create(i32* %0, i32 %1, i8* %2, i8* %3, %struct.TYPE_6__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %11, align 8
  %14 = load i32, i32* @KM_SLEEP, align 4
  %15 = call i8* @kmem_alloc(i32 40, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @SET_ERROR(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %72

22:                                               ; preds = %5
  %23 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %24 = load i32, i32* @KM_SLEEP, align 4
  %25 = call i8* @kmem_alloc(i32 %23, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %12, align 4
  br label %67

36:                                               ; preds = %22
  %37 = load i32, i32* @CRYPTO_KEY_RAW, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %42 = call i32 @CRYPTO_BYTES2BITS(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %52 = call i32 @bcopy(i32* %46, i8* %50, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = call i32 @zfs_refcount_create(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %66, align 8
  store i32 0, i32* %6, align 4
  br label %72

67:                                               ; preds = %34
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %69 = call i32 @dsl_wrapping_key_free(%struct.TYPE_6__* %68)
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %70, align 8
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %36, %19
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @CRYPTO_BYTES2BITS(i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @zfs_refcount_create(i32*) #1

declare dso_local i32 @dsl_wrapping_key_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
