; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_9__, %struct.namespace* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.namespace = type { i32 }

@tsENUM = common dso_local global i32 0, align 4
@TYPE_ENUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @type_new_enum(i8* %0, %struct.namespace* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.namespace* %1, %struct.namespace** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.namespace*, %struct.namespace** %6, align 8
  %16 = load i32, i32* @tsENUM, align 4
  %17 = call %struct.TYPE_10__* @find_type(i8* %14, %struct.namespace* %15, i32 %16)
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi %struct.TYPE_10__* [ %17, %13 ], [ null, %18 ]
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load i32, i32* @TYPE_ENUM, align 4
  %22 = call %struct.TYPE_10__* @make_type(i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.namespace*, %struct.namespace** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store %struct.namespace* %26, %struct.namespace** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %19
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %44, align 8
  br label %63

45:                                               ; preds = %31, %19
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = call %struct.TYPE_11__* @xmalloc(i32 8)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %52, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32* %53, i32** %58, align 8
  %59 = load i32, i32* @TRUE, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %48, %45
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.namespace*, %struct.namespace** %6, align 8
  %73 = load i32, i32* @tsENUM, align 4
  %74 = call i32 @reg_type(%struct.TYPE_10__* %70, i8* %71, %struct.namespace* %72, i32 %73)
  br label %78

75:                                               ; preds = %66
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = call i32 @add_incomplete(%struct.TYPE_10__* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  ret %struct.TYPE_10__* %80
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
