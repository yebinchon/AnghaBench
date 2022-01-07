; ModuleID = '/home/carl/AnghaBench/redis/src/extr_adlist.c_listDup.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_adlist.c_listDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* (i8*)*, i32, i32 }
%struct.TYPE_10__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @listDup(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = call %struct.TYPE_11__* (...) @listCreate()
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = icmp eq %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i8* (i8*)*, i8* (i8*)** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i8* (i8*)* %14, i8* (i8*)** %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i32 @listRewind(%struct.TYPE_11__* %27, i32* %5)
  br label %29

29:                                               ; preds = %63, %11
  %30 = call %struct.TYPE_10__* @listNext(i32* %5)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %6, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i8* (i8*)*, i8* (i8*)** %34, align 8
  %36 = icmp ne i8* (i8*)* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i8* (i8*)*, i8* (i8*)** %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* %40(i8* %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @listRelease(%struct.TYPE_11__* %48)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %66

50:                                               ; preds = %37
  br label %55

51:                                               ; preds = %32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32* @listAddNodeTail(%struct.TYPE_11__* %56, i8* %57)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = call i32 @listRelease(%struct.TYPE_11__* %61)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %66

63:                                               ; preds = %55
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %2, align 8
  br label %66

66:                                               ; preds = %64, %60, %47, %10
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %67
}

declare dso_local %struct.TYPE_11__* @listCreate(...) #1

declare dso_local i32 @listRewind(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_10__* @listNext(i32*) #1

declare dso_local i32 @listRelease(%struct.TYPE_11__*) #1

declare dso_local i32* @listAddNodeTail(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
