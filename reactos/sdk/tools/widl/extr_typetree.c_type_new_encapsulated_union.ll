; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_encapsulated_union.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_encapsulated_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@TYPE_ENCAPSULATED_UNION = common dso_local global i32 0, align 4
@tsUNION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tagged_union\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @type_new_encapsulated_union(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @TYPE_ENCAPSULATED_UNION, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @tsUNION, align 4
  %13 = call %struct.TYPE_13__* @get_type(i32 %10, i8* %11, i32* null, i32 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = call i32 @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = call %struct.TYPE_12__* @make_var(i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @type_new_nonencapsulated_union(i32* null, i32 %20, i32* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call %struct.TYPE_14__* @xmalloc(i32 8)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = call i8* @append_var(i32* null, %struct.TYPE_12__* %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i32* %31, i32** %36, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = call i8* @append_var(i32* %42, %struct.TYPE_12__* %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32* %45, i32** %50, align 8
  %51 = load i32, i32* @TRUE, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %54
}

declare dso_local %struct.TYPE_13__* @get_type(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @make_var(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @type_new_nonencapsulated_union(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @xmalloc(i32) #1

declare dso_local i8* @append_var(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
