; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_enough.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_enough.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i32* null, align 8
@num = common dso_local global i32* null, align 8
@done = common dso_local global i32* null, align 8
@root = common dso_local global i32 0, align 4
@max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"invalid arguments, need: [sym >= 2 [root >= 1 [max >= 1]]]\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"abort: code length too long for internal types\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%d symbols cannot be coded in %d bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"abort: unable to allocate enough memory\0A\00", align 1
@size = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"abort: can't count that high!\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%llu %d-codes\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%llu total codes for 2 to %d symbols\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" (%d-bit length limit)\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c" (no length limit)\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"cannot handle minimum code lengths > root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** @code, align 8
  store i32* null, i32** @num, align 8
  store i32* null, i32** @done, align 8
  store i32 286, i32* %6, align 4
  store i32 9, i32* @root, align 4
  store i32 15, i32* @max, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @atoi(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* @root, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* @max, align 4
  br label %32

32:                                               ; preds = %27, %20
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @root, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @max, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40, %37, %34
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fputs(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 1, i32* %3, align 4
  br label %226

49:                                               ; preds = %43
  %50 = load i32, i32* @max, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* @max, align 4
  br label %57

57:                                               ; preds = %54, %49
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %58

67:                                               ; preds = %58
  %68 = load i32, i32* @max, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 2
  %74 = load i32, i32* @max, align 4
  %75 = sub nsw i32 %74, 1
  %76 = ashr i32 -1, %75
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71, %67
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 1, i32* %3, align 4
  br label %226

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @max, align 4
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @max, align 4
  %92 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  store i32 1, i32* %3, align 4
  br label %226

93:                                               ; preds = %81
  %94 = load i32, i32* @max, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = call i8* @calloc(i64 %96, i32 4)
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** @code, align 8
  %99 = load i32*, i32** @code, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  store i32 1, i32* %3, align 4
  br label %226

104:                                              ; preds = %93
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32* null, i32** @num, align 8
  br label %147

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 1
  %111 = sext i32 %110 to i64
  store i64 %111, i64* @size, align 8
  %112 = load i64, i64* @size, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 1
  %115 = ashr i32 %114, 1
  store i32 %115, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = udiv i64 -1, %116
  %118 = icmp ugt i64 %112, %117
  br i1 %118, label %142, label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @size, align 8
  %123 = mul i64 %122, %121
  store i64 %123, i64* @size, align 8
  %124 = load i64, i64* @size, align 8
  %125 = load i32, i32* @max, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = udiv i64 -1, %127
  %129 = icmp ugt i64 %124, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %119
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @size, align 8
  %134 = mul i64 %133, %132
  store i64 %134, i64* @size, align 8
  %135 = load i64, i64* @size, align 8
  %136 = icmp ugt i64 %135, 2305843009213693951
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load i64, i64* @size, align 8
  %139 = call i8* @calloc(i64 %138, i32 8)
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** @num, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %137, %130, %119, %108
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = call i32 (...) @cleanup()
  store i32 1, i32* %3, align 4
  br label %226

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %107
  store i64 0, i64* %9, align 8
  store i32 2, i32* %7, align 4
  br label %148

148:                                              ; preds = %173, %147
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %176

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = call i64 @count(i32 %153, i32 1, i32 2)
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = add nsw i64 %156, %155
  store i64 %157, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = icmp eq i64 %158, -1
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %8, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160, %152
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = call i32 (...) @cleanup()
  store i32 1, i32* %3, align 4
  br label %226

168:                                              ; preds = %160
  %169 = load i64, i64* %8, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %148

176:                                              ; preds = %148
  %177 = load i64, i64* %9, align 8
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %6, align 4
  %180 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load i32, i32* @max, align 4
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 %182, 1
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load i32, i32* @max, align 4
  %187 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  br label %190

188:                                              ; preds = %176
  %189 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %185
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i32* null, i32** @done, align 8
  br label %207

194:                                              ; preds = %190
  %195 = load i64, i64* @size, align 8
  %196 = icmp ugt i64 %195, 4611686018427387903
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* @size, align 8
  %199 = call i8* @calloc(i64 %198, i32 4)
  %200 = bitcast i8* %199 to i32*
  store i32* %200, i32** @done, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %197, %194
  %203 = load i32, i32* @stderr, align 4
  %204 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  %205 = call i32 (...) @cleanup()
  store i32 1, i32* %3, align 4
  br label %226

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %193
  %208 = load i32, i32* @root, align 4
  %209 = load i32, i32* @max, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i32, i32* @max, align 4
  store i32 %212, i32* @root, align 4
  br label %213

213:                                              ; preds = %211, %207
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @root, align 4
  %216 = add nsw i32 %215, 1
  %217 = shl i32 1, %216
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @enough(i32 %220)
  br label %224

222:                                              ; preds = %213
  %223 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %219
  %225 = call i32 (...) @cleanup()
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %202, %164, %142, %101, %88, %78, %46
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local i64 @count(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @enough(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
