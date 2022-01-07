; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_PatBlt.c_Test_BrushOrigin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_PatBlt.c_Test_BrushOrigin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Test_BrushOrigin.aulBits = private unnamed_addr constant [2 x i32] [i32 1431677610, i32 0], align 4
@.str = private unnamed_addr constant [27 x i8] c"Couln not create a bitmap\0A\00", align 1
@hdcTarget = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to select pattern brush\0A\00", align 1
@PATCOPY = common dso_local global i32 0, align 4
@gpulTargetBits = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_BrushOrigin() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [2 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([2 x i32]* @__const.Test_BrushOrigin.aulBits to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %7 = call i32 @CreateBitmap(i32 2, i32 2, i32 1, i32 1, i32* %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %77

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @CreatePatternBrush(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %77

19:                                               ; preds = %12
  %20 = load i32, i32* @hdcTarget, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SelectObject(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %77

26:                                               ; preds = %19
  %27 = load i32, i32* @hdcTarget, align 4
  %28 = load i32, i32* @PATCOPY, align 4
  %29 = call i32 @PatBlt(i32 %27, i32 0, i32 0, i32 2, i32 2, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ok_long(i32 %30, i32 1)
  %32 = load i32*, i32** @gpulTargetBits, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ok_long(i32 %34, i32 16777215)
  %36 = load i32*, i32** @gpulTargetBits, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ok_long(i32 %38, i32 0)
  %40 = load i32*, i32** @gpulTargetBits, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok_long(i32 %42, i32 0)
  %44 = load i32*, i32** @gpulTargetBits, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 17
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ok_long(i32 %46, i32 16777215)
  %48 = load i32, i32* @hdcTarget, align 4
  %49 = load i32, i32* @PATCOPY, align 4
  %50 = call i32 @PatBlt(i32 %48, i32 1, i32 0, i32 2, i32 2, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ok_long(i32 %51, i32 1)
  %53 = load i32*, i32** @gpulTargetBits, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ok_long(i32 %55, i32 16777215)
  %57 = load i32*, i32** @gpulTargetBits, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ok_long(i32 %59, i32 0)
  %61 = load i32*, i32** @gpulTargetBits, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ok_long(i32 %63, i32 16777215)
  %65 = load i32*, i32** @gpulTargetBits, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 16
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ok_long(i32 %67, i32 0)
  %69 = load i32*, i32** @gpulTargetBits, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 17
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ok_long(i32 %71, i32 16777215)
  %73 = load i32*, i32** @gpulTargetBits, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 18
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ok_long(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %26, %24, %17, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CreateBitmap(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @CreatePatternBrush(i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @PatBlt(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ok_long(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
