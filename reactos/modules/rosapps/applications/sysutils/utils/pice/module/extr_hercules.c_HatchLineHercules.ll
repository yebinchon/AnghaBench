; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_HatchLineHercules.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_HatchLineHercules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.HatchLineHercules.mask_odd = private unnamed_addr constant [2 x i32] [i32 34952, i32 8738], align 4
@__const.HatchLineHercules.mask_even = private unnamed_addr constant [2 x i32] [i32 43690, i32 21845], align 4
@pVgaOffset = common dso_local global i64* null, align 8
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HatchLineHercules(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 3
  store i32 %12, i32* %6, align 4
  %13 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.HatchLineHercules.mask_odd to i8*), i64 8, i1 false)
  %14 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x i32]* @__const.HatchLineHercules.mask_even to i8*), i64 8, i1 false)
  %15 = call i32 (...) @ENTER_FUNC()
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  br label %23

21:                                               ; preds = %1
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32* [ %20, %19 ], [ %22, %21 ]
  store i32* %24, i32** %10, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %76, %23
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = load i64*, i64** @pVgaOffset, align 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 2
  %37 = mul nsw i32 90, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %72, %28
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %58, %64
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %65, %66
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %48
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %41

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %25

81:                                               ; preds = %25
  %82 = call i32 (...) @LEAVE_FUNC()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ENTER_FUNC(...) #2

declare dso_local i32 @LEAVE_FUNC(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
