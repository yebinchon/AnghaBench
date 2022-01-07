; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_printerdrivers.c__LocalGetPrinterDriverLevel3.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_printerdrivers.c__LocalGetPrinterDriverLevel3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }

@wszCurrentEnvironment = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i32] [i32 99, i32 58, i32 92, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 51, i32 50, i32 92, i32 108, i32 111, i32 99, i32 97, i32 108, i32 115, i32 112, i32 108, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [32 x i32] [i32 99, i32 58, i32 92, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 51, i32 50, i32 92, i32 112, i32 114, i32 105, i32 110, i32 116, i32 117, i32 105, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [26 x i32] [i32 108, i32 111, i32 99, i32 97, i32 108, i32 115, i32 112, i32 108, i32 46, i32 100, i32 108, i32 108, i32 124, i32 112, i32 114, i32 105, i32 110, i32 116, i32 117, i32 105, i32 46, i32 100, i32 108, i32 108, i32 124, i32 0], align 4
@dwDriverInfo3Offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__**, i32*, i32*)* @_LocalGetPrinterDriverLevel3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_LocalGetPrinterDriverLevel3(%struct.TYPE_7__* %0, %struct.TYPE_8__** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [9 x i8*], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  store i8* %15, i8** %16, align 16
  %17 = load i8*, i8** @wszCurrentEnvironment, align 8
  %18 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 2
  store i8* bitcast ([33 x i32]* @.str to i8*), i8** %19, align 16
  %20 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 3
  store i8* bitcast ([33 x i32]* @.str to i8*), i8** %20, align 8
  %21 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 4
  store i8* bitcast ([32 x i32]* @.str.1 to i8*), i8** %21, align 16
  %22 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 5
  store i8* bitcast ([1 x i32]* @.str.2 to i8*), i8** %22, align 8
  %23 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 6
  store i8* bitcast ([26 x i32]* @.str.3 to i8*), i8** %23, align 16
  %24 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 7
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 8
  store i8* null, i8** %25, align 16
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %27 = icmp ne %struct.TYPE_8__** %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  %32 = call i64 @_countof(i8** %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @wcslen(i8* %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %46
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %39, %34
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %29

56:                                               ; preds = %29
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %83

62:                                               ; preds = %4
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 3, i32* %65, align 4
  %66 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 0
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = ptrtoint %struct.TYPE_8__* %68 to i32
  %70 = load i32, i32* @dwDriverInfo3Offsets, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PackStrings(i8** %66, i32 %69, i32 %70, i32 %72)
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ToMultiSz(i32 %78)
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 1
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %80, align 8
  br label %83

83:                                               ; preds = %62, %56
  ret void
}

declare dso_local i64 @_countof(i8**) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @PackStrings(i8**, i32, i32, i32) #1

declare dso_local i32 @ToMultiSz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
