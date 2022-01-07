; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_valid.c_xmlRemoveRef.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_valid.c_xmlRemoveRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32* }

@xmlWalkRemoveRef = common dso_local global i32 0, align 4
@xmlFreeRefTableEntry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlRemoveRef(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %62

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %62

25:                                               ; preds = %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @xmlNodeListGetString(%struct.TYPE_9__* %26, i32 %29, i32 1)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %62

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @xmlHashLookup(i32* %35, i32* %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @xmlFree(i32* %41)
  store i32 -1, i32* %3, align 4
  br label %62

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @xmlWalkRemoveRef, align 4
  %50 = call i32 @xmlListWalk(i32* %48, i32 %49, %struct.TYPE_8__* %9)
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @xmlListEmpty(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @xmlFreeRefTableEntry, align 4
  %58 = call i32 @xmlHashUpdateEntry(i32* %55, i32* %56, i32* null, i32 %57)
  br label %59

59:                                               ; preds = %54, %43
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @xmlFree(i32* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %40, %33, %24, %16, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32* @xmlNodeListGetString(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @xmlHashLookup(i32*, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlListWalk(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @xmlListEmpty(i32*) #1

declare dso_local i32 @xmlHashUpdateEntry(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
