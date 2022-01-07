; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lapi.c_aux_upvalue.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lapi.c_aux_upvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__**, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(*no name)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32**, %struct.TYPE_14__**, %struct.TYPE_11__**)* @aux_upvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aux_upvalue(i32 %0, i32 %1, i32** %2, %struct.TYPE_14__** %3, %struct.TYPE_11__** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ttype(i32 %16)
  switch i32 %17, label %102 [
    i32 129, label %18
    i32 128, label %45
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_14__* @clCvalue(i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 1, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %18
  store i8* null, i8** %6, align 8
  br label %103

30:                                               ; preds = %23
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32**, i32*** %9, align 8
  store i32* %37, i32** %38, align 8
  %39 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %40 = icmp ne %struct.TYPE_14__** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %43, align 8
  br label %44

44:                                               ; preds = %41, %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %103

45:                                               ; preds = %5
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.TYPE_13__* @clLvalue(i32 %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %13, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %15, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 1, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %45
  store i8* null, i8** %6, align 8
  br label %103

60:                                               ; preds = %53
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %63, i64 %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %9, align 8
  store i32* %70, i32** %71, align 8
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %73 = icmp ne %struct.TYPE_11__** %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %77, i64 %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %83, align 8
  br label %84

84:                                               ; preds = %74, %60
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %100

97:                                               ; preds = %84
  %98 = load i32*, i32** %14, align 8
  %99 = call i8* @getstr(i32* %98)
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %96 ], [ %99, %97 ]
  store i8* %101, i8** %6, align 8
  br label %103

102:                                              ; preds = %5
  store i8* null, i8** %6, align 8
  br label %103

103:                                              ; preds = %102, %100, %59, %44, %29
  %104 = load i8*, i8** %6, align 8
  ret i8* %104
}

declare dso_local i32 @ttype(i32) #1

declare dso_local %struct.TYPE_14__* @clCvalue(i32) #1

declare dso_local %struct.TYPE_13__* @clLvalue(i32) #1

declare dso_local i8* @getstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
