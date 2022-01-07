; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_rb.c_tree_iterate_cb.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_rb.c_tree_iterate_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@NODE_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Bad magic\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"tree_search() returned unexpected node\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"tree_nsearch() returned unexpected node\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"tree_psearch() returned unexpected node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, %struct.TYPE_12__*, i8*)* @tree_iterate_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @tree_iterate_cb(i32* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NODE_MAGIC, align 4
  %15 = call i32 @assert_u32_eq(i32 %13, i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = call %struct.TYPE_12__* @tree_search(i32* %16, %struct.TYPE_12__* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i32 @assert_ptr_eq(%struct.TYPE_12__* %19, %struct.TYPE_12__* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = call %struct.TYPE_12__* @tree_nsearch(i32* %22, %struct.TYPE_12__* %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = call i32 @assert_ptr_eq(%struct.TYPE_12__* %25, %struct.TYPE_12__* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call %struct.TYPE_12__* @tree_psearch(i32* %28, %struct.TYPE_12__* %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i32 @assert_ptr_eq(%struct.TYPE_12__* %31, %struct.TYPE_12__* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %34, align 4
  ret %struct.TYPE_12__* null
}

declare dso_local i32 @assert_u32_eq(i32, i32, i8*) #1

declare dso_local %struct.TYPE_12__* @tree_search(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert_ptr_eq(%struct.TYPE_12__*, %struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_12__* @tree_nsearch(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @tree_psearch(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
