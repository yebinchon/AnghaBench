; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_bsearch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_bsearch.arr = private unnamed_addr constant [7 x i32] [i32 1, i32 3, i32 4, i32 8, i32 16, i32 23, i32 42], align 16
@intcomparefunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"bsearch did not find %d entry in loopsize %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"bsearch did find 4242 entry in loopsize %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bsearch() #0 {
  %1 = alloca [7 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [7 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([7 x i32]* @__const.test_bsearch.arr to i8*), i64 28, i1 false)
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %0
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 7
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @intcomparefunc, align 4
  %24 = call i32* @p_bsearch(i32* %3, i32* %21, i32 %22, i32 4, i32 %23)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 %27
  %29 = icmp eq i32* %25, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %12

37:                                               ; preds = %12
  store i32 4242, i32* %3, align 4
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @intcomparefunc, align 4
  %41 = call i32* @p_bsearch(i32* %3, i32* %38, i32 %39, i32 4, i32 %40)
  store i32* %41, i32** %2, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @p_bsearch(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
