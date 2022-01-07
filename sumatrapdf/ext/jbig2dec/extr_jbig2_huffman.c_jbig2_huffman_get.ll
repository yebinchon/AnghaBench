; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_huffman.c_jbig2_huffman_get.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_huffman.c_jbig2_huffman_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"end of Jbig2WordStream reached at offset %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"encountered unpopulated huffman table entry\00", align 1
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get next huffman word\00", align 1
@JBIG2_HUFFMAN_FLAGS_ISEXT = common dso_local global i32 0, align 4
@JBIG2_HUFFMAN_FLAGS_ISLOW = common dso_local global i32 0, align 4
@JBIG2_HUFFMAN_FLAGS_ISOOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_huffman_get(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  store i32 -1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i32, i32, i8*, ...) @jbig2_error(i32 %46, i32 %47, i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %50)
  store i32 %51, i32* %4, align 4
  br label %249

52:                                               ; preds = %30, %3
  br label %53

53:                                               ; preds = %159, %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 32, %64
  %66 = ashr i32 %63, %65
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32 [ %66, %62 ], [ 0, %67 ]
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %70
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %8, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %100

80:                                               ; preds = %68
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  store i32 -1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %99 = call i32 (i32, i32, i32, i8*, ...) @jbig2_error(i32 %97, i32 %98, i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 %99, i32* %4, align 4
  br label %249

100:                                              ; preds = %83, %80, %68
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 32
  br i1 %108, label %109, label %136

109:                                              ; preds = %100
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %11, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 4
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 4
  %120 = call i32 @huff_get_next_word(%struct.TYPE_10__* %115, i64 %119, i32* %12)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %109
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %128 = call i32 (i32, i32, i32, i8*, ...) @jbig2_error(i32 %126, i32 %127, i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 %128, i32* %4, align 4
  br label %249

129:                                              ; preds = %109
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 32
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %129, %100
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %16, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 32, %144
  %146 = ashr i32 %143, %145
  %147 = or i32 %142, %146
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %139, %136
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @JBIG2_HUFFMAN_FLAGS_ISEXT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %6, align 8
  br label %159

158:                                              ; preds = %148
  br label %160

159:                                              ; preds = %153
  br label %53

160:                                              ; preds = %158
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %14, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %233

170:                                              ; preds = %160
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 32, %172
  %174 = ashr i32 %171, %173
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @JBIG2_HUFFMAN_FLAGS_ISLOW, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %14, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %14, align 4
  br label %187

183:                                              ; preds = %170
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %183, %179
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp sge i32 %191, 32
  br i1 %192, label %193, label %220

193:                                              ; preds = %187
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %11, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 4
  store i64 %198, i64* %196, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 4
  %204 = call i32 @huff_get_next_word(%struct.TYPE_10__* %199, i64 %203, i32* %12)
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %19, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %193
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %212 = call i32 (i32, i32, i32, i8*, ...) @jbig2_error(i32 %210, i32 %211, i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 %212, i32* %4, align 4
  br label %249

213:                                              ; preds = %193
  %214 = load i32, i32* %10, align 4
  %215 = sub nsw i32 %214, 32
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %213, %187
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %13, align 4
  %226 = shl i32 %224, %225
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %10, align 4
  %229 = sub nsw i32 32, %228
  %230 = ashr i32 %227, %229
  %231 = or i32 %226, %230
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %223, %220
  br label %233

233:                                              ; preds = %232, %160
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %233
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @JBIG2_HUFFMAN_FLAGS_ISOOB, align 4
  %245 = and i32 %243, %244
  %246 = load i32*, i32** %7, align 8
  store i32 %245, i32* %246, align 4
  br label %247

247:                                              ; preds = %242, %233
  %248 = load i32, i32* %14, align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %247, %207, %123, %94, %43
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @jbig2_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @huff_get_next_word(%struct.TYPE_10__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
