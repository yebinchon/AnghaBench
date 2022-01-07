; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_LoadBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_LoadBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"found %p %s: %p\0A\00", align 1
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_CREATEDIBSECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"new %p %s: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSSTYLES_LoadBitmap(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = udiv i64 %14, 1
  %19 = trunc i64 %18 to i32
  %20 = call i32 @lstrcpynW(i8* %16, i32 %17, i32 %19)
  store i8* %16, i8** %10, align 8
  br label %21

21:                                               ; preds = %43, %3
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  store i8 95, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  store i8 95, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  store i8 95, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8, i8* %44, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %21, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %11, align 8
  br label %54

54:                                               ; preds = %80, %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @lstrcmpiW(i8* %16, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @debugstr_w(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %64, i32 %68, i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %132

80:                                               ; preds = %57
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %11, align 8
  br label %54

84:                                               ; preds = %54
  %85 = call i32 (...) @GetProcessHeap()
  %86 = call %struct.TYPE_8__* @HeapAlloc(i32 %85, i32 0, i32 4)
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %11, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IMAGE_BITMAP, align 4
  %91 = load i32, i32* @LR_CREATEDIBSECTION, align 4
  %92 = call i32 @LoadImageW(i32 %89, i8* %16, i32 %90, i32 0, i32 0, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @prepare_alpha(i32 %97, i32* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @lstrcpyW(i32 %106, i8* %16)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @debugstr_w(i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %120, i32 %124, i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %132

132:                                              ; preds = %84, %63
  %133 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #2

declare dso_local i64 @lstrcmpiW(i8*, i32) #2

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @LoadImageW(i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @prepare_alpha(i32, i32*) #2

declare dso_local i32 @lstrcpyW(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
