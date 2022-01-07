; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_sha256.c_abd_checksum_SHA256.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_sha256.c_abd_checksum_SHA256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8** }

@ZIO_CHECKSUM_SHA256 = common dso_local global i32 0, align 4
@CPA_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SHA256 = common dso_local global i32 0, align 4
@sha_incremental = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abd_checksum_SHA256(i32* %0, i32 %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @qat_checksum_use_accel(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @abd_borrow_buf_copy(i32* %17, i32 %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32, i32* @ZIO_CHECKSUM_SHA256, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @qat_checksum(i32 %20, i32* %21, i32 %22, %struct.TYPE_5__* %11)
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @abd_return_buf(i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CPA_STATUS_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %41

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i32, i32* @SHA256, align 4
  %35 = call i32 @SHA2Init(i32 %34, i32* %10)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @sha_incremental, align 4
  %39 = call i32 @abd_iterate_func(i32* %36, i32 0, i32 %37, i32 %38, i32* %10)
  %40 = call i32 @SHA2Final(%struct.TYPE_5__* %11, i32* %10)
  br label %41

41:                                               ; preds = %33, %31
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @BE_64(i8* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @BE_64(i8* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* %55, i8** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @BE_64(i8* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  store i8* %64, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @BE_64(i8* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  store i8* %73, i8** %77, align 8
  ret void
}

declare dso_local i64 @qat_checksum_use_accel(i32) #1

declare dso_local i32* @abd_borrow_buf_copy(i32*, i32) #1

declare dso_local i32 @qat_checksum(i32, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @abd_return_buf(i32*, i32*, i32) #1

declare dso_local i32 @SHA2Init(i32, i32*) #1

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @SHA2Final(%struct.TYPE_5__*, i32*) #1

declare dso_local i8* @BE_64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
