; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbcjisjms.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbcjisjms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_mbcjisjms.jisjms = private unnamed_addr constant [15 x [2 x i32]] [[2 x i32] [i32 8224, i32 0], [2 x i32] [i32 8225, i32 0], [2 x i32] [i32 8480, i32 0], [2 x i32] [i32 8481, i32 33088], [2 x i32] [i32 32639, i32 0], [2 x i32] [i32 32638, i32 0], [2 x i32] [i32 32383, i32 0], [2 x i32] [i32 32382, i32 61436], [2 x i32] [i32 9567, i32 33662], [2 x i32] [i32 9568, i32 33664], [2 x i32] [i32 9569, i32 33665], [2 x i32] [i32 555876351, i32 0], [2 x i32] [i32 8739, i32 33185], [2 x i32] [i32 9086, i32 33438], [2 x i32] zeroinitializer], align 16
@_MB_CP_SBCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Expected 0x%x, got 0x%x (0x%x, codepage=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mbcjisjms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mbcjisjms() #0 {
  %1 = alloca [15 x [2 x i32]], align 16
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [15 x [2 x i32]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([15 x [2 x i32]]* @__const.test_mbcjisjms.jisjms to i8*), i64 120, i1 false)
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  store i32 932, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 936, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 939, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 950, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 1361, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* @_MB_CP_SBCS, align 4
  store i32 %15, i32* %14, align 4
  %16 = call i32 (...) @_getmbcp()
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %81, %0
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @_setmbcp(i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %77, %22
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* %1, i64 0, i64 %30
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* %1, i64 0, i64 %37
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @_mbcjistojms(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 932
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* %1, i64 0, i64 %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  br label %59

53:                                               ; preds = %35
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* %1, i64 0, i64 %55
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 0, i64 0
  %58 = load i32, i32* %57, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %52, %47 ], [ %58, %53 ]
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* %1, i64 0, i64 %68
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %28

80:                                               ; preds = %28
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %17

84:                                               ; preds = %17
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @_setmbcp(i32 %85)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_getmbcp(...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @_setmbcp(i32) #2

declare dso_local i32 @_mbcjistojms(i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
