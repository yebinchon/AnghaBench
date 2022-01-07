; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_misc.c_test_filter_mapper_aggregations.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_misc.c_test_filter_mapper_aggregations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IFilterMapper2 = common dso_local global i32 0, align 4
@IID_IFilterMapper = common dso_local global i32 0, align 4
@__const.test_filter_mapper_aggregations.iids = private unnamed_addr constant [2 x i32*] [i32* @IID_IFilterMapper2, i32* @IID_IFilterMapper], align 16
@CLSID_SystemClock = common dso_local global i32 0, align 4
@CLSID_FilterMapper2 = common dso_local global i32 0, align 4
@IID_IReferenceClock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filter_mapper_aggregations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filter_mapper_aggregations() #0 {
  %1 = alloca [2 x i32*], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [2 x i32*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([2 x i32*]* @__const.test_filter_mapper_aggregations.iids to i8*), i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* @CLSID_SystemClock, align 4
  %10 = load i32, i32* @CLSID_FilterMapper2, align 4
  %11 = load i32, i32* @IID_IReferenceClock, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1, i64 0, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @test_aggregation(i32 %9, i32 %10, i32 %11, i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %4

21:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_aggregation(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
