; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_create_textfont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_create_textfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i8*, i8*, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@textfontvtbl = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FONT_NAME = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__**)* @create_textfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_textfont(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %9 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %10 = call %struct.TYPE_9__* @heap_alloc(i32 48)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %4, align 4
  br label %80

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32* @textfontvtbl, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load i8*, i8** @TRUE, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = call i32 @memcpy(%struct.TYPE_11__** %33, %struct.TYPE_11__** %35, i32 8)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load i64, i64* @FONT_NAME, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %23
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i64, i64* @FONT_NAME, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @SysAllocString(i64 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i64, i64* @FONT_NAME, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i64 %53, i64* %59, align 8
  br label %60

60:                                               ; preds = %45, %23
  br label %75

61:                                               ; preds = %15
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @ITextRange_AddRef(i32* %65)
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @FALSE, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = call i32 @textfont_cache_range_props(%struct.TYPE_9__* %73)
  br label %75

75:                                               ; preds = %61, %60
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %78, align 8
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_9__* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__**, %struct.TYPE_11__**, i32) #1

declare dso_local i64 @SysAllocString(i64) #1

declare dso_local i32 @ITextRange_AddRef(i32*) #1

declare dso_local i32 @textfont_cache_range_props(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
