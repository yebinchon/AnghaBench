; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_NOMEM = common dso_local global i32 0, align 4
@LSM_OPEN_READONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LSM_IOERR_NOENT = common dso_local global i32 0, align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32**)* @lsmPosixOsOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsOpen(i32* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %13 = load i32, i32* @LSM_OK, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_5__* @lsm_malloc(i32* %14, i32 24)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @LSM_NOMEM, align 4
  store i32 %19, i32* %9, align 4
  br label %65

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LSM_OPEN_READONLY, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @O_RDONLY, align 4
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @O_RDWR, align 4
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = call i32 @memset(%struct.TYPE_5__* %34, i32 0, i32 24)
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @open(i8* %42, i32 %43, i32 420)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %32
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = call i32 @lsm_free(i32* %52, %struct.TYPE_5__* %53)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @ENOENT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @LSM_IOERR_NOENT, align 4
  %60 = call i32 @lsmErrorBkpt(i32 %59)
  store i32 %60, i32* %9, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %18
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = bitcast %struct.TYPE_5__* %66 to i32*
  %68 = load i32**, i32*** %8, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @lsm_malloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @lsm_free(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @lsmErrorBkpt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
