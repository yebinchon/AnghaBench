; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_assert_delete_ranges_match.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_assert_delete_ranges_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @assert_delete_ranges_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_delete_ranges_match(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @treeCursorInit(i32* %9, i32 0, %struct.TYPE_13__* %5)
  %11 = call i32 @lsmTreeCursorEnd(%struct.TYPE_13__* %5, i32 0)
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @LSM_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i64 @lsmTreeCursorValid(%struct.TYPE_13__* %5)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %48

21:                                               ; preds = %19
  %22 = call %struct.TYPE_12__* @csrGetKey(%struct.TYPE_13__* %5, %struct.TYPE_14__* %4, i32* %6)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LSM_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %48

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @LSM_START_DELETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LSM_END_DELETE, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %32, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %27
  %47 = call i32 @lsmTreeCursorNext(%struct.TYPE_13__* %5)
  store i32 %47, i32* %6, align 4
  br label %12

48:                                               ; preds = %26, %19
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %52 = call i32 @tblobFree(i32 %50, %struct.TYPE_14__* %51)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tblobFree(i32 %54, %struct.TYPE_14__* %4)
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @treeCursorInit(i32*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @lsmTreeCursorEnd(%struct.TYPE_13__*, i32) #2

declare dso_local i64 @lsmTreeCursorValid(%struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_12__* @csrGetKey(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @lsmTreeCursorNext(%struct.TYPE_13__*) #2

declare dso_local i32 @tblobFree(i32, %struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
