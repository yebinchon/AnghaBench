; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_getpatt.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_getpatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@TTrue = common dso_local global i32 0, align 4
@TChar = common dso_local global i32 0, align 4
@TFalse = common dso_local global i32 0, align 4
@TRunTime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32, i32*)* @getpatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @getpatt(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lua_type(i32* %12, i32 %13)
  switch i32 %14, label %80 [
    i32 129, label %15
    i32 130, label %39
    i32 132, label %46
    i32 128, label %61
    i32 131, label %65
  ]

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @lua_tolstring(i32* %16, i32 %17, i64* %9)
  store i8* %18, i8** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @TTrue, align 4
  %24 = call %struct.TYPE_11__* @newleaf(i32* %22, i32 %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %8, align 8
  br label %38

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 1
  %29 = mul i64 2, %28
  %30 = add i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_11__* @newtree(i32* %26, i32 %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %8, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = load i32, i32* @TChar, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @fillseq(%struct.TYPE_11__* %33, i32 %34, i64 %35, i8* %36)
  br label %38

38:                                               ; preds = %25, %21
  br label %85

39:                                               ; preds = %3
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @lua_tointeger(i32* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.TYPE_11__* @numtree(i32* %43, i32 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %8, align 8
  br label %85

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @lua_toboolean(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @TTrue, align 4
  %54 = call %struct.TYPE_11__* @newleaf(i32* %52, i32 %53)
  br label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @TFalse, align 4
  %58 = call %struct.TYPE_11__* @newleaf(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi %struct.TYPE_11__* [ %54, %51 ], [ %58, %55 ]
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %8, align 8
  br label %85

61:                                               ; preds = %3
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.TYPE_11__* @newgrammar(i32* %62, i32 %63)
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %8, align 8
  br label %85

65:                                               ; preds = %3
  %66 = load i32*, i32** %5, align 8
  %67 = call %struct.TYPE_11__* @newtree(i32* %66, i32 2)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %8, align 8
  %68 = load i32, i32* @TRunTime, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @addtonewktable(i32* %71, i32 0, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @TTrue, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = call %struct.TYPE_12__* @sib1(%struct.TYPE_11__* %77)
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  br label %85

80:                                               ; preds = %3
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call %struct.TYPE_11__* @gettree(i32* %81, i32 %82, i32* %83)
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %4, align 8
  br label %98

85:                                               ; preds = %65, %61, %59, %39, %38
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @lua_replace(i32* %86, i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @getsize(i32* %92, i32 %93)
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %4, align 8
  br label %98

98:                                               ; preds = %96, %80
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %99
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_11__* @newleaf(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @newtree(i32*, i32) #1

declare dso_local i32 @fillseq(%struct.TYPE_11__*, i32, i64, i8*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @numtree(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @newgrammar(i32*, i32) #1

declare dso_local i32 @addtonewktable(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @sib1(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @gettree(i32*, i32, i32*) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @getsize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
