; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_printerdrivers.c__LocalGetPrinterDriverLevel2.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_printerdrivers.c__LocalGetPrinterDriverLevel2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

@wszCurrentEnvironment = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i32] [i32 99, i32 58, i32 92, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 51, i32 50, i32 92, i32 108, i32 111, i32 99, i32 97, i32 108, i32 115, i32 112, i32 108, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@dwDriverInfo2Offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__**, i32*, i32*)* @_LocalGetPrinterDriverLevel2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_LocalGetPrinterDriverLevel2(%struct.TYPE_7__* %0, %struct.TYPE_8__** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [5 x i8*], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  store i8* %15, i8** %16, align 16
  %17 = load i8*, i8** @wszCurrentEnvironment, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 2
  store i8* bitcast ([33 x i32]* @.str to i8*), i8** %19, align 16
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 3
  store i8* bitcast ([33 x i32]* @.str to i8*), i8** %20, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 4
  store i8* bitcast ([33 x i32]* @.str to i8*), i8** %21, align 16
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %23 = icmp ne %struct.TYPE_8__** %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %28 = call i64 @_countof(i8** %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @wcslen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %37
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %25

46:                                               ; preds = %25
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %68

52:                                               ; preds = %4
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 3, i32* %55, align 4
  %56 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = ptrtoint %struct.TYPE_8__* %58 to i32
  %60 = load i32, i32* @dwDriverInfo2Offsets, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PackStrings(i8** %56, i32 %59, i32 %60, i32 %62)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 1
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %65, align 8
  br label %68

68:                                               ; preds = %52, %46
  ret void
}

declare dso_local i64 @_countof(i8**) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @PackStrings(i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
