; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_parseerror.c_create_parseError.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_parseerror.c_create_parseError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32* }

@XMLDOMParseError2Vtbl = common dso_local global i32 0, align 4
@parseError_dispex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @create_parseError(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = call %struct.TYPE_5__* @heap_alloc(i32 80)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %57

21:                                               ; preds = %7
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* @XMLDOMParseError2Vtbl, i32** %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = bitcast %struct.TYPE_4__* %51 to i32*
  %53 = call i32 @init_dispex(i32* %49, i32* %52, i32* @parseError_dispex)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_4__* %55 to i32*
  store i32* %56, i32** %8, align 8
  br label %57

57:                                               ; preds = %21, %20
  %58 = load i32*, i32** %8, align 8
  ret i32* %58
}

declare dso_local %struct.TYPE_5__* @heap_alloc(i32) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
