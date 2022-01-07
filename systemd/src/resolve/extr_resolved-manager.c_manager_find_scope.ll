; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_find_scope.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_find_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @manager_find_scope(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @INT_TO_PTR(i32 %16)
  %18 = call %struct.TYPE_9__* @hashmap_get(i32 %13, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %72

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %70 [
    i32 129, label %26
    i32 128, label %48
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AF_INET, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %3, align 8
  br label %72

36:                                               ; preds = %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %3, align 8
  br label %72

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  br label %71

48:                                               ; preds = %22
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AF_INET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %3, align 8
  br label %72

58:                                               ; preds = %48
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %3, align 8
  br label %72

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  br label %71

70:                                               ; preds = %22
  br label %71

71:                                               ; preds = %70, %69, %47
  store i32* null, i32** %3, align 8
  br label %72

72:                                               ; preds = %71, %64, %54, %42, %32, %21
  %73 = load i32*, i32** %3, align 8
  ret i32* %73
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @hashmap_get(i32, i32) #1

declare dso_local i32 @INT_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
