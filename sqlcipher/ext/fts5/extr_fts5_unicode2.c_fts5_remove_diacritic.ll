; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_fts5_remove_diacritic.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_fts5_remove_diacritic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.fts5_remove_diacritic.aDia = private unnamed_addr constant [126 x i16] [i16 0, i16 1797, i16 1848, i16 1859, i16 1891, i16 1928, i16 1940, i16 1995, i16 2024, i16 2040, i16 2060, i16 2110, i16 2168, i16 2206, i16 2264, i16 2286, i16 2344, i16 2383, i16 2472, i16 2488, i16 2516, i16 2596, i16 2668, i16 2732, i16 2782, i16 2842, i16 2894, i16 2954, i16 2984, i16 3000, i16 3028, i16 3336, i16 3456, i16 3696, i16 3712, i16 3728, i16 3744, i16 3766, i16 3832, i16 3896, i16 3912, i16 3928, i16 3944, i16 3968, i16 4008, i16 4040, i16 4056, i16 4106, i16 4138, i16 4170, i16 4202, i16 4234, i16 4266, i16 4296, i16 4312, i16 4344, i16 4408, i16 4424, i16 4442, i16 4472, i16 4488, i16 4504, i16 6148, i16 6198, i16 6264, i16 6280, i16 6360, i16 6429, i16 6505, i16 6529, i16 -4088, i16 -4068, i16 -4024, i16 -4002, i16 -3944, i16 -3926, i16 -3894, i16 -3864, i16 -3848, i16 -3832, i16 -3810, i16 -3752, i16 -3736, i16 -3720, i16 -3700, i16 -3656, i16 -3640, i16 -3622, i16 -3588, i16 -3538, i16 -3474, i16 -3414, i16 -3382, i16 -3352, i16 -3336, i16 -3318, i16 -3284, i16 -3234, i16 -3172, i16 -3126, i16 -3094, i16 -3058, i16 -3000, i16 -2982, i16 -2952, i16 -2932, i16 -2896, i16 -2888, i16 -2880, i16 -2872, i16 -2806, i16 -2770, i16 -2706, i16 -2646, i16 -2612, i16 -2562, i16 -2504, i16 -2486, i16 -2454, i16 -2418, i16 -2354, i16 -2294, i16 -2262, i16 -2226, i16 -2168, i16 -2146], align 16
@__const.fts5_remove_diacritic.aChar = private unnamed_addr constant [126 x i8] c"\00aceinouyyacdeeghijklnorstuuwyzouaiou\F5\E1gko\EFjgn\E1aeiorusthae\EFo\EFy\00\00\00\00\00\00\00\00ab\E3dd\E5e\E5fghhi\E9kl\EClmn\EFpr\F2rs\F3tu\F5vwwxyzhtwya\E1\E1\E1e\E5\E5io\EF\EF\EFu\F5\F5y", align 16
@HIBIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fts5_remove_diacritic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5_remove_diacritic(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [126 x i16], align 16
  %7 = alloca [126 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = bitcast [126 x i16]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([126 x i16]* @__const.fts5_remove_diacritic.aDia to i8*), i64 252, i1 false)
  %14 = bitcast [126 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([126 x i8], [126 x i8]* @__const.fts5_remove_diacritic.aChar, i32 0, i32 0), i64 126, i1 false)
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 3
  %17 = or i32 %16, 7
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 125, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %41, %2
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [126 x i16], [126 x i16]* %6, i64 0, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp uge i32 %27, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %41

38:                                               ; preds = %22
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %34
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [126 x i16], [126 x i16]* %6, i64 0, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp uge i32 %43, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [126 x i8], [126 x i8]* %7, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %3, align 4
  br label %91

64:                                               ; preds = %54, %42
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [126 x i16], [126 x i16]* %6, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = ashr i32 %70, 3
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [126 x i16], [126 x i16]* %6, i64 0, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 7
  %78 = add nsw i32 %71, %77
  %79 = icmp sgt i32 %65, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %4, align 4
  br label %89

82:                                               ; preds = %64
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [126 x i8], [126 x i8]* %7, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 127
  br label %89

89:                                               ; preds = %82, %80
  %90 = phi i32 [ %81, %80 ], [ %88, %82 ]
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %62
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
