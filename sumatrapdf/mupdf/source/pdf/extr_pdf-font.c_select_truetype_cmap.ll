; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_select_truetype_cmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_select_truetype_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i32)* @select_truetype_cmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @select_truetype_cmap(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %47, %9
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %46

27:                                               ; preds = %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %30, i64 %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %3, align 8
  br label %176

46:                                               ; preds = %27, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %10

50:                                               ; preds = %10
  br label %51

51:                                               ; preds = %50, %2
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %100, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %99

69:                                               ; preds = %58
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %99

80:                                               ; preds = %69
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = call i32 @FT_Get_CMap_Format(%struct.TYPE_7__* %87)
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %3, align 8
  br label %176

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %69, %58
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %52

103:                                              ; preds = %52
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %152, %103
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %155

110:                                              ; preds = %104
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %113, i64 %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %151

121:                                              ; preds = %110
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %124, i64 %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %121
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %135, i64 %137
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = call i32 @FT_Get_CMap_Format(%struct.TYPE_7__* %139)
  %141 = icmp ne i32 %140, -1
  br i1 %141, label %142, label %150

142:                                              ; preds = %132
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %145, i64 %147
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %3, align 8
  br label %176

150:                                              ; preds = %132
  br label %151

151:                                              ; preds = %150, %121, %110
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %104

155:                                              ; preds = %104
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %163, i64 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = call i32 @FT_Get_CMap_Format(%struct.TYPE_7__* %165)
  %167 = icmp ne i32 %166, -1
  br i1 %167, label %168, label %174

168:                                              ; preds = %160
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %171, i64 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  store %struct.TYPE_7__* %173, %struct.TYPE_7__** %3, align 8
  br label %176

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %155
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %176

176:                                              ; preds = %175, %168, %142, %90, %38
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %177
}

declare dso_local i32 @FT_Get_CMap_Format(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
