; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_sizeof_matchState.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_sizeof_matchState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }

@ZSTD_fast = common dso_local global i64 0, align 8
@ZSTD_HASHLOG3_MAX = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@Litbits = common dso_local global i32 0, align 4
@ZSTD_OPT_NUM = common dso_local global i32 0, align 4
@ZSTD_btopt = common dso_local global i64 0, align 8
@ZSTD_btultra = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"chainSize: %u - hSize: %u - h3Size: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64)* @ZSTD_sizeof_matchState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_sizeof_matchState(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZSTD_fast, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = shl i64 1, %21
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i64 [ 0, %17 ], [ %22, %18 ]
  store i64 %24, i64* %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 1, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @ZSTD_HASHLOG3_MAX, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @MIN(i32 %37, i32 %40)
  br label %43

42:                                               ; preds = %31, %23
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i64 [ %41, %36 ], [ 0, %42 ]
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = shl i64 1, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %49, %50
  %52 = mul i64 %51, 8
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* @MaxML, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @MaxLL, align 4
  %56 = add nsw i32 %55, 1
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* @MaxOff, align 4
  %59 = add nsw i32 %58, 1
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* @Litbits, align 4
  %62 = shl i32 1, %61
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = load i32, i32* @ZSTD_OPT_NUM, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = add i64 %65, %69
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %43
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ZSTD_btopt, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZSTD_btultra, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %73
  %86 = load i64, i64* %10, align 8
  br label %88

87:                                               ; preds = %79, %43
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i64 [ %86, %85 ], [ 0, %87 ]
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %94, %95
  ret i64 %96
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
