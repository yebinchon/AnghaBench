; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_arith_int.c_jbig2_arith_int_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_arith_int.c_jbig2_arith_int_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to decode IAx S\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to decode IAx decision bit 0\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to decode IAx decision bit 1\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to decode IAx decision bit 2\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to decode IAx decision bit 3\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to decode IAx decision bit 4\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to decode IAx V bit %d\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_arith_int_decode(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @jbig2_arith_decode(i32* %22, i32* %26, i32* %18)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %33 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %31, i32 %32, i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %5, align 4
  br label %218

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 1
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @jbig2_arith_decode(i32* %39, i32* %43, i32* %18)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %50 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %48, i32 %49, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  br label %218

51:                                               ; preds = %34
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %147

58:                                               ; preds = %51
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @jbig2_arith_decode(i32* %59, i32* %63, i32* %18)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %70 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %68, i32 %69, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %5, align 4
  br label %218

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 %72, 1
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %145

78:                                               ; preds = %71
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @jbig2_arith_decode(i32* %79, i32* %83, i32* %18)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %90 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %88, i32 %89, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 %90, i32* %5, align 4
  br label %218

91:                                               ; preds = %78
  %92 = load i32, i32* %11, align 4
  %93 = shl i32 %92, 1
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %91
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @jbig2_arith_decode(i32* %99, i32* %103, i32* %18)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %110 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %108, i32 %109, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 %110, i32* %5, align 4
  br label %218

111:                                              ; preds = %98
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, 1
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %111
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @jbig2_arith_decode(i32* %119, i32* %123, i32* %18)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %130 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %128, i32 %129, i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 %130, i32* %5, align 4
  br label %218

131:                                              ; preds = %118
  %132 = load i32, i32* %11, align 4
  %133 = shl i32 %132, 1
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 32, i32* %15, align 4
  store i32 4436, i32* %16, align 4
  br label %140

139:                                              ; preds = %131
  store i32 12, i32* %15, align 4
  store i32 340, i32* %16, align 4
  br label %140

140:                                              ; preds = %139, %138
  br label %142

141:                                              ; preds = %111
  store i32 8, i32* %15, align 4
  store i32 84, i32* %16, align 4
  br label %142

142:                                              ; preds = %141, %140
  br label %144

143:                                              ; preds = %91
  store i32 6, i32* %15, align 4
  store i32 20, i32* %16, align 4
  br label %144

144:                                              ; preds = %143, %142
  br label %146

145:                                              ; preds = %71
  store i32 4, i32* %15, align 4
  store i32 4, i32* %16, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %148

147:                                              ; preds = %51
  store i32 2, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %148

148:                                              ; preds = %147, %146
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %180, %148
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %149
  %154 = load i32*, i32** %8, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @jbig2_arith_decode(i32* %154, i32* %158, i32* %18)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %165 = load i32, i32* %17, align 4
  %166 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %163, i32 %164, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  store i32 %166, i32* %5, align 4
  br label %218

167:                                              ; preds = %153
  %168 = load i32, i32* %11, align 4
  %169 = shl i32 %168, 1
  %170 = and i32 %169, 511
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %171, 256
  %173 = or i32 %170, %172
  %174 = load i32, i32* %14, align 4
  %175 = or i32 %173, %174
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %13, align 4
  %177 = shl i32 %176, 1
  %178 = load i32, i32* %14, align 4
  %179 = or i32 %177, %178
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %167
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %149

183:                                              ; preds = %149
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @INT32_MAX, align 4
  %186 = sub nsw i32 %185, 4436
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @INT32_MIN, align 4
  %191 = add nsw i32 %190, 4436
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %188, %183
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %193, %188
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %13, align 4
  %202 = sub nsw i32 0, %201
  br label %205

203:                                              ; preds = %197
  %204 = load i32, i32* %13, align 4
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi i32 [ %202, %200 ], [ %204, %203 ]
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32*, i32** %9, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %212, 0
  br label %214

214:                                              ; preds = %211, %205
  %215 = phi i1 [ false, %205 ], [ %213, %211 ]
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1, i32 0
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %214, %162, %127, %107, %87, %67, %47, %30
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
