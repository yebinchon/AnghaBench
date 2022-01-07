; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSetTreeDoc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSetTreeDoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, i32*, i8* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSetTreeDoc(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  br label %74

15:                                               ; preds = %8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %5, align 8
  br label %31

31:                                               ; preds = %46, %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XML_ATTRIBUTE_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = call i32 @xmlRemoveID(i8* %43, %struct.TYPE_9__* %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @xmlSetListDoc(i32* %52, i8* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %5, align 8
  br label %31

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58, %21
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @xmlSetListDoc(i32* %67, i8* %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %14, %70, %15
  ret void
}

declare dso_local i32 @xmlRemoveID(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @xmlSetListDoc(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
