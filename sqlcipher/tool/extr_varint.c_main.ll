; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_varint.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_varint.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [165 x i8] c"Usage:\0A  %s HH HH HH ...   Convert varint to decimal\0A  %s DDDDD          Convert decimal to varint\0A                    Add '+' or '-' before DDDDD to disambiguate.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Not a hex byte: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Extra arguments: %s...\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Not a decimal number: %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%lld =\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %c%c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %173

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @hexValue(i8 signext %40)
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %173

43:                                               ; preds = %35
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @hexValue(i8 signext %48)
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %173

51:                                               ; preds = %43, %26
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %107, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 9
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %110

61:                                               ; preds = %59
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = icmp ne i32 %67, 2
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %61
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @hexValue(i8 signext %85)
  %87 = shl i32 %86, 4
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @hexValue(i8 signext %94)
  %96 = add nsw i32 %87, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 7
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 127
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 128
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %78
  br label %110

106:                                              ; preds = %78
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %52

110:                                              ; preds = %105, %59
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 9
  br i1 %112, label %113, label %157

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %157

117:                                              ; preds = %113
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = icmp ne i32 %123, 2
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = load i32, i32* @stderr, align 4
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %131)
  %133 = call i32 @exit(i32 1) #3
  unreachable

134:                                              ; preds = %117
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @hexValue(i8 signext %141)
  %143 = shl i32 %142, 4
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @hexValue(i8 signext %150)
  %152 = add nsw i32 %143, %151
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = shl i32 %153, 8
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %134, %113, %110
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %169)
  %171 = call i32 @exit(i32 1) #3
  unreachable

172:                                              ; preds = %157
  br label %240

173:                                              ; preds = %43, %35, %29
  %174 = load i8**, i8*** %5, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 1
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %12, align 8
  store i32 1, i32* %13, align 4
  %177 = load i8*, i8** %12, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 43
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %12, align 8
  br label %195

185:                                              ; preds = %173
  %186 = load i8*, i8** %12, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 45
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %12, align 8
  store i32 -1, i32* %13, align 4
  br label %194

194:                                              ; preds = %191, %185
  br label %195

195:                                              ; preds = %194, %182
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %220, %195
  %197 = load i8*, i8** %12, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %201, label %231

201:                                              ; preds = %196
  %202 = load i8*, i8** %12, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp slt i32 %205, 48
  br i1 %206, label %213, label %207

207:                                              ; preds = %201
  %208 = load i8*, i8** %12, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp sgt i32 %211, 57
  br i1 %212, label %213, label %220

213:                                              ; preds = %207, %201
  %214 = load i32, i32* @stderr, align 4
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %217)
  %219 = call i32 @exit(i32 1) #3
  unreachable

220:                                              ; preds = %207
  %221 = load i32, i32* %8, align 4
  %222 = mul nsw i32 %221, 10
  %223 = load i8*, i8** %12, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = add nsw i32 %222, %226
  %228 = sub nsw i32 %227, 48
  store i32 %228, i32* %8, align 4
  %229 = load i8*, i8** %12, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %12, align 8
  br label %196

231:                                              ; preds = %196
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = call i32 @memcpy(i32* %9, i32* %8, i32 8)
  %236 = load i32, i32* %9, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %9, align 4
  %238 = call i32 @memcpy(i32* %8, i32* %9, i32 8)
  br label %239

239:                                              ; preds = %234, %231
  br label %240

240:                                              ; preds = %239, %172
  %241 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @putVarint(i8* %241, i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %8, align 4
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %244)
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %268, %240
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %271

250:                                              ; preds = %246
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = ashr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = call i32 @toHex(i8 zeroext %257)
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = and i32 %263, 15
  %265 = trunc i32 %264 to i8
  %266 = call i32 @toHex(i8 zeroext %265)
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %258, i32 %266)
  br label %268

268:                                              ; preds = %250
  %269 = load i32, i32* %6, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %6, align 4
  br label %246

271:                                              ; preds = %246
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hexValue(i8 signext) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @putVarint(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @toHex(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
