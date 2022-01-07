; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_struct.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_9__, %struct.namespace* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.namespace = type { i32 }

@tsSTRUCT = common dso_local global i32 0, align 4
@do_typelib = common dso_local global i64 0, align 8
@TYPE_STRUCT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @type_new_struct(i8* %0, %struct.namespace* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.namespace* %1, %struct.namespace** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.namespace*, %struct.namespace** %7, align 8
  %17 = load i32, i32* @tsSTRUCT, align 4
  %18 = call %struct.TYPE_10__* @find_type(i8* %15, %struct.namespace* %16, i32 %17)
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi %struct.TYPE_10__* [ %18, %14 ], [ null, %19 ]
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* @do_typelib, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %5, align 8
  br label %90

29:                                               ; preds = %24, %20
  %30 = load i32, i32* @TYPE_STRUCT, align 4
  %31 = call %struct.TYPE_10__* @make_type(i32 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %11, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.namespace*, %struct.namespace** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store %struct.namespace* %35, %struct.namespace** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %53, align 8
  br label %72

54:                                               ; preds = %40, %29
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = call %struct.TYPE_11__* @xmalloc(i32 8)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32* %62, i32** %67, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %57, %54
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.namespace*, %struct.namespace** %7, align 8
  %82 = load i32, i32* @tsSTRUCT, align 4
  %83 = call i32 @reg_type(%struct.TYPE_10__* %79, i8* %80, %struct.namespace* %81, i32 %82)
  br label %87

84:                                               ; preds = %75
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = call i32 @add_incomplete(%struct.TYPE_10__* %85)
  br label %87

87:                                               ; preds = %84, %78
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %5, align 8
  br label %90

90:                                               ; preds = %88, %27
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %91
}

declare dso_local %struct.TYPE_10__* @find_type(i8*, %struct.namespace*, i32) #1

declare dso_local %struct.TYPE_10__* @make_type(i32) #1

declare dso_local %struct.TYPE_11__* @xmalloc(i32) #1

declare dso_local i32 @reg_type(%struct.TYPE_10__*, i8*, %struct.namespace*, i32) #1

declare dso_local i32 @add_incomplete(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
