; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_II_select_table.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_II_select_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_table = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, %struct.al_table* }

@__const.II_select_table.translate = private unnamed_addr constant <{ [2 x [16 x i32]], <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, [13 x i32] }> }>, [2 x [16 x i32]] }> <{ [2 x [16 x i32]] [[16 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [16 x i32] [i32 0, i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0]], <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, [13 x i32] }> }> <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 2, i32 2, [13 x i32] zeroinitializer }> }>, [2 x [16 x i32]] [[16 x i32] [i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [16 x i32] [i32 0, i32 3, i32 3, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0]] }>, align 16
@alloc_0 = common dso_local global %struct.al_table* null, align 8
@alloc_1 = common dso_local global %struct.al_table* null, align 8
@alloc_2 = common dso_local global %struct.al_table* null, align 8
@alloc_3 = common dso_local global %struct.al_table* null, align 8
@alloc_4 = common dso_local global %struct.al_table* null, align 8
@__const.II_select_table.sblims = private unnamed_addr constant [5 x i32] [i32 27, i32 30, i32 8, i32 12, i32 30], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @II_select_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @II_select_table(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [3 x [2 x [16 x i32]]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x %struct.al_table*], align 16
  %7 = alloca [5 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = bitcast [3 x [2 x [16 x i32]]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast (<{ [2 x [16 x i32]], <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, [13 x i32] }> }>, [2 x [16 x i32]] }>* @__const.II_select_table.translate to i8*), i64 384, i1 false)
  %9 = getelementptr inbounds [5 x %struct.al_table*], [5 x %struct.al_table*]* %6, i64 0, i64 0
  %10 = load %struct.al_table*, %struct.al_table** @alloc_0, align 8
  store %struct.al_table* %10, %struct.al_table** %9, align 8
  %11 = getelementptr inbounds %struct.al_table*, %struct.al_table** %9, i64 1
  %12 = load %struct.al_table*, %struct.al_table** @alloc_1, align 8
  store %struct.al_table* %12, %struct.al_table** %11, align 8
  %13 = getelementptr inbounds %struct.al_table*, %struct.al_table** %11, i64 1
  %14 = load %struct.al_table*, %struct.al_table** @alloc_2, align 8
  store %struct.al_table* %14, %struct.al_table** %13, align 8
  %15 = getelementptr inbounds %struct.al_table*, %struct.al_table** %13, i64 1
  %16 = load %struct.al_table*, %struct.al_table** @alloc_3, align 8
  store %struct.al_table* %16, %struct.al_table** %15, align 8
  %17 = getelementptr inbounds %struct.al_table*, %struct.al_table** %15, i64 1
  %18 = load %struct.al_table*, %struct.al_table** @alloc_4, align 8
  store %struct.al_table* %18, %struct.al_table** %17, align 8
  %19 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([5 x i32]* @__const.II_select_table.sblims to i8*), i64 20, i1 false)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x [2 x [16 x i32]]], [3 x [2 x [16 x i32]]]* %3, i64 0, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* %30, i64 0, i64 %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %25, %24
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x %struct.al_table*], [5 x %struct.al_table*]* %6, i64 0, i64 %48
  %50 = load %struct.al_table*, %struct.al_table** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  store %struct.al_table* %50, %struct.al_table** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
