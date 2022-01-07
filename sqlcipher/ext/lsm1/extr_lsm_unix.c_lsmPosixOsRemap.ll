; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsRemap.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsRemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.stat = type { i32 }

@__const.lsmPosixOsRemap.aIncrSz = private unnamed_addr constant [2 x i32] [i32 262144, i32 1048576], align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32*)* @lsmPosixOsRemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsRemap(i32* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %12, align 8
  %18 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([2 x i32]* @__const.lsmPosixOsRemap.aIncrSz to i8*), i64 8, i1 false)
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 2097152
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @munmap(i8* %32, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* null, i8** %38, align 8
  %39 = load i8**, i8*** %8, align 8
  store i8* null, i8** %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %29, %4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %43
  %47 = call i32 @memset(%struct.stat* %13, i32 0, i32 4)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @fstat(i32 %50, %struct.stat* %13)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %55, i32* %5, align 4
  br label %106

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %15, align 4
  %68 = sdiv i32 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ftruncate(i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %79, i32* %5, align 4
  br label %106

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @PROT_READ, align 4
  %84 = load i32, i32* @PROT_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MAP_SHARED, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @mmap(i32 0, i32 %82, i32 %85, i32 %86, i32 %89, i32 0)
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %81, %43
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %8, align 8
  store i8* %99, i8** %100, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @LSM_OK, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %96, %78, %54
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @munmap(i8*, i32) #2

declare dso_local i32 @memset(%struct.stat*, i32, i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @ftruncate(i32, i32) #2

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
