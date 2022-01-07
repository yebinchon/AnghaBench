; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_find.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }

@PDF_FLAGS_SORTED = common dso_local global i32 0, align 4
@PDF_LIMIT = common dso_local global %struct.TYPE_11__* null, align 8
@PDF_NAME_LIST = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @pdf_dict_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_dict_find(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = call %struct.TYPE_13__* @DICT(%struct.TYPE_11__* %16)
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PDF_FLAGS_SORTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %128

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %128

29:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = call %struct.TYPE_13__* @DICT(%struct.TYPE_11__* %32)
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %11, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = icmp eq %struct.TYPE_11__* %41, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %29
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PDF_LIMIT, align 8
  %47 = icmp uge %struct.TYPE_11__* %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = call %struct.TYPE_12__* @NAME(%struct.TYPE_11__* %49)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @PDF_NAME_LIST, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = ptrtoint %struct.TYPE_11__* %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcmp(i32 %52, i32 %57)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48, %29
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = sub nsw i32 -1, %62
  store i32 %63, i32* %4, align 4
  br label %175

64:                                               ; preds = %48, %44
  br label %65

65:                                               ; preds = %124, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = call %struct.TYPE_13__* @DICT(%struct.TYPE_11__* %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %11, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PDF_LIMIT, align 8
  %85 = icmp ult %struct.TYPE_11__* %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %69
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = bitcast %struct.TYPE_11__* %87 to i8*
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %90 = bitcast %struct.TYPE_11__* %89 to i8*
  %91 = ptrtoint i8* %88 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  br label %107

94:                                               ; preds = %69
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = call %struct.TYPE_12__* @NAME(%struct.TYPE_11__* %95)
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @PDF_NAME_LIST, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = ptrtoint %struct.TYPE_11__* %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strcmp(i32 %98, i32 %103)
  %105 = sub nsw i32 0, %104
  %106 = sext i32 %105 to i64
  br label %107

107:                                              ; preds = %94, %86
  %108 = phi i64 [ %93, %86 ], [ %106, %94 ]
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %124

115:                                              ; preds = %107
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %175

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %112
  br label %65

125:                                              ; preds = %65
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 -1, %126
  store i32 %127, i32* %4, align 4
  br label %175

128:                                              ; preds = %26, %3
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %169, %128
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %129
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = call %struct.TYPE_13__* @DICT(%struct.TYPE_11__* %134)
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %15, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PDF_LIMIT, align 8
  %145 = icmp ult %struct.TYPE_11__* %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %133
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = icmp eq %struct.TYPE_11__* %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %175

152:                                              ; preds = %146
  br label %168

153:                                              ; preds = %133
  %154 = load i32*, i32** @PDF_NAME_LIST, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = ptrtoint %struct.TYPE_11__* %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %160 = call %struct.TYPE_12__* @NAME(%struct.TYPE_11__* %159)
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strcmp(i32 %158, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %4, align 4
  br label %175

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %152
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %129

172:                                              ; preds = %129
  %173 = load i32, i32* %8, align 4
  %174 = sub nsw i32 -1, %173
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %172, %165, %150, %125, %121, %60
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_13__* @DICT(%struct.TYPE_11__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_12__* @NAME(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
