; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_bpobj.c_space_range_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_bpobj.c_space_range_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.space_range_arg = type { i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*, i32, i32*)* @space_range_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @space_range_cb(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.space_range_arg*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.space_range_arg*
  store %struct.space_range_arg* %11, %struct.space_range_arg** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %16 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %24 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %22, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  %28 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %29 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @spa_get_dsl(i32 %30)
  %32 = call i64 @dsl_pool_sync_context(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %36 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i64 @bp_get_dsize_sync(i32 %37, %struct.TYPE_7__* %38)
  %40 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %41 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  br label %58

46:                                               ; preds = %27
  %47 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %48 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = call i64 @bp_get_dsize(i32 %49, %struct.TYPE_7__* %50)
  %52 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %53 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  br label %58

58:                                               ; preds = %46, %34
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = call i64 @BP_GET_PSIZE(%struct.TYPE_7__* %59)
  %61 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %62 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = call i64 @BP_GET_UCSIZE(%struct.TYPE_7__* %67)
  %69 = load %struct.space_range_arg*, %struct.space_range_arg** %9, align 8
  %70 = getelementptr inbounds %struct.space_range_arg, %struct.space_range_arg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  br label %75

75:                                               ; preds = %58, %19, %4
  ret i32 0
}

declare dso_local i64 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @spa_get_dsl(i32) #1

declare dso_local i64 @bp_get_dsize_sync(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @bp_get_dsize(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @BP_GET_UCSIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
