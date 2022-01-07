; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_PrelinOpt16alloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_PrelinOpt16alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__**, i8**, i8*, %struct.TYPE_11__*, %struct.TYPE_11__**, i8** }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@Eval16nop1D = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32, %struct.TYPE_11__*, i64, %struct.TYPE_10__**, i64, %struct.TYPE_10__**)* @PrelinOpt16alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @PrelinOpt16alloc(i32 %0, %struct.TYPE_11__* %1, i64 %2, %struct.TYPE_10__** %3, i64 %4, %struct.TYPE_10__** %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_10__** %5, %struct.TYPE_10__*** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @_cmsMallocZero(i32 %16, i32 64)
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %15, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %20 = icmp eq %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %151

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %75, %22
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %35 = icmp eq %struct.TYPE_10__** %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %40
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %41, align 8
  %42 = load i8*, i8** @Eval16nop1D, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 7
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  br label %74

48:                                               ; preds = %33
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %56, align 8
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %57, i64 %58
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 7
  %71 = load i8**, i8*** %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  store i8* %68, i8** %73, align 8
  br label %74

74:                                               ; preds = %48, %36
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %14, align 8
  br label %29

78:                                               ; preds = %29
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 5
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @_cmsCalloc(i32 %88, i64 %89, i32 8)
  %91 = inttoptr i64 %90 to i8**
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  store i8** %91, i8*** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @_cmsCalloc(i32 %94, i64 %95, i32 8)
  %97 = inttoptr i64 %96 to %struct.TYPE_11__**
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  store %struct.TYPE_11__** %97, %struct.TYPE_11__*** %99, align 8
  store i64 0, i64* %14, align 8
  br label %100

100:                                              ; preds = %146, %78
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %149

104:                                              ; preds = %100
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %106 = icmp eq %struct.TYPE_10__** %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %110, i64 %111
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %112, align 8
  %113 = load i8*, i8** @Eval16nop1D, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8* %113, i8** %118, align 8
  br label %145

119:                                              ; preds = %104
  %120 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %120, i64 %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %128, i64 %129
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %132, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %133, i64 %134
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  %142 = load i8**, i8*** %141, align 8
  %143 = load i64, i64* %14, align 8
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  store i8* %139, i8** %144, align 8
  br label %145

145:                                              ; preds = %119, %107
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %14, align 8
  br label %100

149:                                              ; preds = %100
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %7, align 8
  br label %151

151:                                              ; preds = %149, %21
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %152
}

declare dso_local i64 @_cmsMallocZero(i32, i32) #1

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
