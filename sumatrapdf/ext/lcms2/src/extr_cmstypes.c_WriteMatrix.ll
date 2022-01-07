; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteMatrix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, %struct.TYPE_4__*)* @WriteMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteMatrix(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._cms_typehandler_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_cmsWrite15Fixed16Number(i32 %15, i32* %16, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %188

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @_cmsWrite15Fixed16Number(i32 %27, i32* %28, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %188

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @_cmsWrite15Fixed16Number(i32 %39, i32* %40, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %188

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @_cmsWrite15Fixed16Number(i32 %51, i32* %52, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %5, align 4
  br label %188

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_cmsWrite15Fixed16Number(i32 %63, i32* %64, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %5, align 4
  br label %188

74:                                               ; preds = %62
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @_cmsWrite15Fixed16Number(i32 %75, i32* %76, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %5, align 4
  br label %188

86:                                               ; preds = %74
  %87 = load i32, i32* %6, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @_cmsWrite15Fixed16Number(i32 %87, i32* %88, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %188

98:                                               ; preds = %86
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @_cmsWrite15Fixed16Number(i32 %99, i32* %100, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %5, align 4
  br label %188

110:                                              ; preds = %98
  %111 = load i32, i32* %6, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @_cmsWrite15Fixed16Number(i32 %111, i32* %112, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %110
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %5, align 4
  br label %188

122:                                              ; preds = %110
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %164

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @_cmsWrite15Fixed16Number(i32 %128, i32* %129, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %5, align 4
  br label %188

139:                                              ; preds = %127
  %140 = load i32, i32* %6, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @_cmsWrite15Fixed16Number(i32 %140, i32* %141, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %5, align 4
  br label %188

151:                                              ; preds = %139
  %152 = load i32, i32* %6, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @_cmsWrite15Fixed16Number(i32 %152, i32* %153, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %151
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %5, align 4
  br label %188

163:                                              ; preds = %151
  br label %186

164:                                              ; preds = %122
  %165 = load i32, i32* %6, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @_cmsWrite15Fixed16Number(i32 %165, i32* %166, i32 0)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %5, align 4
  br label %188

171:                                              ; preds = %164
  %172 = load i32, i32* %6, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @_cmsWrite15Fixed16Number(i32 %172, i32* %173, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @FALSE, align 4
  store i32 %177, i32* %5, align 4
  br label %188

178:                                              ; preds = %171
  %179 = load i32, i32* %6, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = call i32 @_cmsWrite15Fixed16Number(i32 %179, i32* %180, i32 0)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* @FALSE, align 4
  store i32 %184, i32* %5, align 4
  br label %188

185:                                              ; preds = %178
  br label %186

186:                                              ; preds = %185, %163
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %183, %176, %169, %161, %149, %137, %120, %108, %96, %84, %72, %60, %48, %36, %24
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @_cmsWrite15Fixed16Number(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
