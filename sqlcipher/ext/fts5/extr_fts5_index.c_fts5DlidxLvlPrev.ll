; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DlidxLvlPrev.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DlidxLvlPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @fts5DlidxLvlPrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5DlidxLvlPrev(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %167

28:                                               ; preds = %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 9
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 9
  br label %40

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %59, %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %3, align 4
  br label %44

62:                                               ; preds = %57, %44
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = bitcast i64* %5 to i32*
  %68 = call i32 @fts5GetVarint(i32* %66, i32* %67)
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %100, %62
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %88, %82
  %96 = phi i1 [ false, %82 ], [ %94, %88 ]
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  br label %82

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %155

109:                                              ; preds = %103
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 128
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i32, i32* %10, align 4
  %127 = icmp sle i32 %126, 8
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 128
  %137 = icmp ne i32 %136, 0
  br label %138

138:                                              ; preds = %128, %125
  %139 = phi i1 [ false, %125 ], [ %137, %128 ]
  br i1 %139, label %140, label %144

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %125

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = icmp sgt i32 %145, 8
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %144, %117
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %109, %103
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %155, %25
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  ret i32 %170
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5GetVarint(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
