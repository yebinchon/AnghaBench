; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_RTFInit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_RTFInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i64, i8*, i64, i32*, i8*, i64, i8*, i8*, i64, i64, i8*, i64 }
%struct.TYPE_9__ = type { i32 }

@rtfBufSiz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate text buffers.\0A\00", align 1
@rtfMaxClass = common dso_local global i32 0, align 4
@rtfMaxDestination = common dso_local global i32 0, align 4
@rtfFontTbl = common dso_local global i32 0, align 4
@ReadFontTbl = common dso_local global i32* null, align 8
@rtfColorTbl = common dso_local global i32 0, align 4
@ReadColorTbl = common dso_local global i32* null, align 8
@rtfStyleSheet = common dso_local global i32 0, align 4
@ReadStyleSheet = common dso_local global i32* null, align 8
@rtfInfo = common dso_local global i32 0, align 4
@ReadInfoGroup = common dso_local global i32* null, align 8
@rtfPict = common dso_local global i32 0, align 4
@ReadPictGroup = common dso_local global i32* null, align 8
@rtfObject = common dso_local global i32 0, align 4
@ReadObjGroup = common dso_local global i32* null, align 8
@EOF = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTFInit(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load i32, i32* @rtfBufSiz, align 4
  %10 = call i8* @heap_alloc(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @rtfBufSiz, align 4
  %14 = call i8* @heap_alloc(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %8
  %27 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %149

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %28, %1
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @rtfMaxClass, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @RTFSetClassCallback(%struct.TYPE_8__* %43, i32 %44, i32* null)
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %38

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @rtfMaxDestination, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %55, i32 %56, i32* null)
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %50

61:                                               ; preds = %50
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = load i32, i32* @rtfFontTbl, align 4
  %64 = load i32*, i32** @ReadFontTbl, align 8
  %65 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %62, i32 %63, i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = load i32, i32* @rtfColorTbl, align 4
  %68 = load i32*, i32** @ReadColorTbl, align 8
  %69 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %66, i32 %67, i32* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = load i32, i32* @rtfStyleSheet, align 4
  %72 = load i32*, i32** @ReadStyleSheet, align 8
  %73 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %70, i32 %71, i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = load i32, i32* @rtfInfo, align 4
  %76 = load i32*, i32** @ReadInfoGroup, align 8
  %77 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %74, i32 %75, i32* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = load i32, i32* @rtfPict, align 4
  %80 = load i32*, i32** @ReadPictGroup, align 8
  %81 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %78, i32 %79, i32* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = load i32, i32* @rtfObject, align 4
  %84 = load i32*, i32** @ReadObjGroup, align 8
  %85 = call i32 @RTFSetDestinationCallback(%struct.TYPE_8__* %82, i32 %83, i32* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = call i32 @RTFSetReadHook(%struct.TYPE_8__* %86, i32* null)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = call i32 @RTFDestroyAttrs(%struct.TYPE_8__* %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i32 1252, i32* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 20
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  store i32 -1, i32* %102, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 6
  store i32 -1, i32* %104, align 8
  %105 = load i8*, i8** @EOF, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 19
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 18
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 17
  store i64 0, i64* %111, align 8
  %112 = load i8*, i8** @EOF, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 16
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @FALSE, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 15
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 14
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 13
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %61
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 7
  store i32 4096, i32* %126, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @heap_alloc(i32 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 13
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %124, %61
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 12
  store i32* null, i32** %135, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 11
  store i64 0, i64* %137, align 8
  %138 = load i8*, i8** @FALSE, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 10
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 8
  %145 = call i32 @memset(%struct.TYPE_9__* %144, i32 0, i32 4)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32 4, i32* %148, align 8
  br label %149

149:                                              ; preds = %133, %26
  ret void
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @RTFSetClassCallback(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @RTFSetDestinationCallback(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @RTFSetReadHook(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @RTFDestroyAttrs(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
