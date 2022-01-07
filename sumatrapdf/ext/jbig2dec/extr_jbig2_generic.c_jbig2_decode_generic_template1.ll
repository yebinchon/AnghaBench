; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_template1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_template1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"failed to decode arithmetic code when handling generic template1 optimized\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32*, %struct.TYPE_6__*, i32*)* @jbig2_decode_generic_template1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_generic_template1(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, %struct.TYPE_6__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32* %5, i32** %13, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %211

47:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %207, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %210

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 7
  %55 = and i32 %54, -8
  store i32 %55, i32* %26, align 4
  %56 = load i32*, i32** %20, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32*, i32** %20, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ 0, %62 ]
  store i32 %64, i32* %24, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 5
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i32 [ %71, %67 ], [ 0, %72 ]
  store i32 %74, i32* %25, align 4
  %75 = load i32, i32* %24, align 4
  %76 = ashr i32 %75, 1
  %77 = and i32 %76, 504
  %78 = load i32, i32* %25, align 4
  %79 = ashr i32 %78, 1
  %80 = and i32 %79, 7680
  %81 = or i32 %77, %80
  store i32 %81, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %197, %73
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %26, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %200

86:                                               ; preds = %82
  store i32 0, i32* %27, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp sgt i32 %89, 8
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %96

92:                                               ; preds = %86
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 %93, %94
  br label %96

96:                                               ; preds = %92, %91
  %97 = phi i32 [ 8, %91 ], [ %95, %92 ]
  store i32 %97, i32* %29, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32, i32* %24, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32*, i32** %20, align 8
  %109 = load i32, i32* %17, align 4
  %110 = ashr i32 %109, 3
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  br label %116

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %107
  %117 = phi i32 [ %114, %107 ], [ 0, %115 ]
  %118 = or i32 %102, %117
  store i32 %118, i32* %24, align 4
  br label %119

119:                                              ; preds = %116, %96
  %120 = load i32*, i32** %19, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i32, i32* %25, align 4
  %124 = shl i32 %123, 8
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 8
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %17, align 4
  %132 = ashr i32 %131, 3
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 5
  br label %139

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138, %129
  %140 = phi i32 [ %137, %129 ], [ 0, %138 ]
  %141 = or i32 %124, %140
  store i32 %141, i32* %25, align 4
  br label %142

142:                                              ; preds = %139, %119
  store i32 0, i32* %28, align 4
  br label %143

143:                                              ; preds = %187, %142
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %29, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %190

147:                                              ; preds = %143
  %148 = load i32*, i32** %11, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @jbig2_arith_decode(i32* %148, i32* %152, i32* %22)
  store i32 %153, i32* %30, align 4
  %154 = load i32, i32* %22, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @jbig2_error(i32* %157, i32 %158, i32 %161, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  store i32 %162, i32* %7, align 4
  br label %211

163:                                              ; preds = %147
  %164 = load i32, i32* %30, align 4
  %165 = load i32, i32* %28, align 4
  %166 = sub nsw i32 7, %165
  %167 = shl i32 %164, %166
  %168 = load i32, i32* %27, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %27, align 4
  %170 = load i32, i32* %23, align 4
  %171 = and i32 %170, 3835
  %172 = shl i32 %171, 1
  %173 = load i32, i32* %30, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %28, align 4
  %177 = sub nsw i32 8, %176
  %178 = ashr i32 %175, %177
  %179 = and i32 %178, 8
  %180 = or i32 %174, %179
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %28, align 4
  %183 = sub nsw i32 8, %182
  %184 = ashr i32 %181, %183
  %185 = and i32 %184, 512
  %186 = or i32 %180, %185
  store i32 %186, i32* %23, align 4
  br label %187

187:                                              ; preds = %163
  %188 = load i32, i32* %28, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %28, align 4
  br label %143

190:                                              ; preds = %143
  %191 = load i32, i32* %27, align 4
  %192 = load i32*, i32** %21, align 8
  %193 = load i32, i32* %17, align 4
  %194 = ashr i32 %193, 3
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 8
  store i32 %199, i32* %17, align 4
  br label %82

200:                                              ; preds = %82
  %201 = load i32*, i32** %20, align 8
  store i32* %201, i32** %19, align 8
  %202 = load i32*, i32** %21, align 8
  store i32* %202, i32** %20, align 8
  %203 = load i32, i32* %16, align 4
  %204 = load i32*, i32** %21, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %21, align 8
  br label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %18, align 4
  br label %48

210:                                              ; preds = %48
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %210, %156, %46
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
