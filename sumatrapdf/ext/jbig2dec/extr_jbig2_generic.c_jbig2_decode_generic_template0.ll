; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_template0.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_generic.c_jbig2_decode_generic_template0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"failed to decode arithmetic code when handling generic template0 optimized\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32*, %struct.TYPE_6__*, i32*)* @jbig2_decode_generic_template0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_generic_template0(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, %struct.TYPE_6__* %4, i32* %5) #0 {
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
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %209

47:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %205, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %208

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 7
  %55 = and i32 %54, -8
  store i32 %55, i32* %25, align 4
  store i32 0, i32* %26, align 4
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
  store i32 %64, i32* %23, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 6
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i32 [ %71, %67 ], [ 0, %72 ]
  store i32 %74, i32* %24, align 4
  %75 = load i32, i32* %23, align 4
  %76 = and i32 %75, 2032
  %77 = load i32, i32* %24, align 4
  %78 = and i32 %77, 63488
  %79 = or i32 %76, %78
  store i32 %79, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %195, %73
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %25, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %198

84:                                               ; preds = %80
  store i32 0, i32* %27, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = sub nsw i32 %85, %86
  %88 = icmp sgt i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %91, %92
  br label %94

94:                                               ; preds = %90, %89
  %95 = phi i32 [ 8, %89 ], [ %93, %90 ]
  store i32 %95, i32* %29, align 4
  %96 = load i32*, i32** %20, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load i32, i32* %23, align 4
  %100 = shl i32 %99, 8
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 8
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load i32*, i32** %20, align 8
  %107 = load i32, i32* %17, align 4
  %108 = ashr i32 %107, 3
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  br label %114

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %105
  %115 = phi i32 [ %112, %105 ], [ 0, %113 ]
  %116 = or i32 %100, %115
  store i32 %116, i32* %23, align 4
  br label %117

117:                                              ; preds = %114, %94
  %118 = load i32*, i32** %19, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i32, i32* %24, align 4
  %122 = shl i32 %121, 8
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 8
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load i32*, i32** %19, align 8
  %129 = load i32, i32* %17, align 4
  %130 = ashr i32 %129, 3
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 6
  br label %137

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %127
  %138 = phi i32 [ %135, %127 ], [ 0, %136 ]
  %139 = or i32 %122, %138
  store i32 %139, i32* %24, align 4
  br label %140

140:                                              ; preds = %137, %117
  store i32 0, i32* %28, align 4
  br label %141

141:                                              ; preds = %185, %140
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %29, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %188

145:                                              ; preds = %141
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @jbig2_arith_decode(i32* %146, i32* %150, i32* %26)
  store i32 %151, i32* %30, align 4
  %152 = load i32, i32* %26, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @jbig2_error(i32* %155, i32 %156, i32 %159, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  store i32 %160, i32* %7, align 4
  br label %209

161:                                              ; preds = %145
  %162 = load i32, i32* %30, align 4
  %163 = load i32, i32* %28, align 4
  %164 = sub nsw i32 7, %163
  %165 = shl i32 %162, %164
  %166 = load i32, i32* %27, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %27, align 4
  %168 = load i32, i32* %22, align 4
  %169 = and i32 %168, 31735
  %170 = shl i32 %169, 1
  %171 = load i32, i32* %30, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %28, align 4
  %175 = sub nsw i32 7, %174
  %176 = ashr i32 %173, %175
  %177 = and i32 %176, 16
  %178 = or i32 %172, %177
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %28, align 4
  %181 = sub nsw i32 7, %180
  %182 = ashr i32 %179, %181
  %183 = and i32 %182, 2048
  %184 = or i32 %178, %183
  store i32 %184, i32* %22, align 4
  br label %185

185:                                              ; preds = %161
  %186 = load i32, i32* %28, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %28, align 4
  br label %141

188:                                              ; preds = %141
  %189 = load i32, i32* %27, align 4
  %190 = load i32*, i32** %21, align 8
  %191 = load i32, i32* %17, align 4
  %192 = ashr i32 %191, 3
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 8
  store i32 %197, i32* %17, align 4
  br label %80

198:                                              ; preds = %80
  %199 = load i32*, i32** %20, align 8
  store i32* %199, i32** %19, align 8
  %200 = load i32*, i32** %21, align 8
  store i32* %200, i32** %20, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32*, i32** %21, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %21, align 8
  br label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %48

208:                                              ; preds = %48
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %208, %154, %46
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
