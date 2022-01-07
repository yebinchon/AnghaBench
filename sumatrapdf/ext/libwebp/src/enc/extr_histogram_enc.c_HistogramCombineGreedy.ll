; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCombineGreedy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCombineGreedy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*)* @HistogramCombineGreedy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HistogramCombineGreedy(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %18, align 8
  store %struct.TYPE_19__** %19, %struct.TYPE_19__*** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = call i32 @HistoQueueInit(%struct.TYPE_21__* %10, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %193

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %67, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %34, i64 %36
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = icmp eq %struct.TYPE_19__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %67

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %51, i64 %53
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = icmp eq %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %63

58:                                               ; preds = %48
  %59 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @HistoQueuePush(%struct.TYPE_21__* %10, %struct.TYPE_19__** %59, i32 %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %27

70:                                               ; preds = %27
  br label %71

71:                                               ; preds = %191, %70
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %192

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %86, i64 %88
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %91, i64 %93
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %96, i64 %98
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = call i32 @HistogramAdd(%struct.TYPE_19__* %90, %struct.TYPE_19__* %95, %struct.TYPE_19__* %100)
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %107, i64 %109
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @HistogramSetRemoveHistogram(%struct.TYPE_18__* %113, i32 %114, i32* %115)
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %159, %75
  %118 = load i32, i32* %7, align 4
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %160

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i64 %126
  store %struct.TYPE_20__* %127, %struct.TYPE_20__** %13, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %151, label %133

133:                                              ; preds = %122
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145, %139, %133, %122
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = call i32 @HistoQueuePopPair(%struct.TYPE_21__* %10, %struct.TYPE_20__* %152)
  br label %159

154:                                              ; preds = %145
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %156 = call i32 @HistoQueueUpdateHead(%struct.TYPE_21__* %10, %struct.TYPE_20__* %155)
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %154, %151
  br label %117

160:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %188, %160
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %174, i64 %176
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = icmp eq %struct.TYPE_19__* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %171, %167
  br label %188

181:                                              ; preds = %171
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @HistoQueuePush(%struct.TYPE_21__* %10, %struct.TYPE_19__** %184, i32 %185, i32 %186, i32 0)
  br label %188

188:                                              ; preds = %181, %180
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %161

191:                                              ; preds = %161
  br label %71

192:                                              ; preds = %71
  store i32 1, i32* %5, align 4
  br label %193

193:                                              ; preds = %192, %25
  %194 = call i32 @HistoQueueClear(%struct.TYPE_21__* %10)
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @HistoQueueInit(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @HistoQueuePush(%struct.TYPE_21__*, %struct.TYPE_19__**, i32, i32, i32) #1

declare dso_local i32 @HistogramAdd(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @HistogramSetRemoveHistogram(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @HistoQueuePopPair(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @HistoQueueUpdateHead(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @HistoQueueClear(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
