; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindFirstSets.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindFirstSets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, i32, %struct.rule*, %struct.TYPE_3__** }
%struct.rule = type { i32, %struct.symbol**, %struct.symbol*, %struct.rule* }
%struct.symbol = type { i64, i64, i32, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@LEMON_FALSE = common dso_local global i64 0, align 8
@NONTERMINAL = common dso_local global i64 0, align 8
@LEMON_TRUE = common dso_local global i64 0, align 8
@TERMINAL = common dso_local global i64 0, align 8
@MULTITERMINAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindFirstSets(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.symbol*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.lemon*, %struct.lemon** %2, align 8
  %13 = getelementptr inbounds %struct.lemon, %struct.lemon* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i64, i64* @LEMON_FALSE, align 8
  %18 = load %struct.lemon*, %struct.lemon** %2, align 8
  %19 = getelementptr inbounds %struct.lemon, %struct.lemon* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 %17, i64* %25, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.lemon*, %struct.lemon** %2, align 8
  %31 = getelementptr inbounds %struct.lemon, %struct.lemon* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %49, %29
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.lemon*, %struct.lemon** %2, align 8
  %36 = getelementptr inbounds %struct.lemon, %struct.lemon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = call i32 (...) @SetNew()
  %41 = load %struct.lemon*, %struct.lemon** %2, align 8
  %42 = getelementptr inbounds %struct.lemon, %struct.lemon* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %40, i32* %48, align 8
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %33

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %126, %52
  store i32 0, i32* %6, align 4
  %54 = load %struct.lemon*, %struct.lemon** %2, align 8
  %55 = getelementptr inbounds %struct.lemon, %struct.lemon* %54, i32 0, i32 2
  %56 = load %struct.rule*, %struct.rule** %55, align 8
  store %struct.rule* %56, %struct.rule** %5, align 8
  br label %57

57:                                               ; preds = %121, %53
  %58 = load %struct.rule*, %struct.rule** %5, align 8
  %59 = icmp ne %struct.rule* %58, null
  br i1 %59, label %60, label %125

60:                                               ; preds = %57
  %61 = load %struct.rule*, %struct.rule** %5, align 8
  %62 = getelementptr inbounds %struct.rule, %struct.rule* %61, i32 0, i32 2
  %63 = load %struct.symbol*, %struct.symbol** %62, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %121

68:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %105, %68
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.rule*, %struct.rule** %5, align 8
  %72 = getelementptr inbounds %struct.rule, %struct.rule* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %69
  %76 = load %struct.rule*, %struct.rule** %5, align 8
  %77 = getelementptr inbounds %struct.rule, %struct.rule* %76, i32 0, i32 1
  %78 = load %struct.symbol**, %struct.symbol*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.symbol*, %struct.symbol** %78, i64 %80
  %82 = load %struct.symbol*, %struct.symbol** %81, align 8
  store %struct.symbol* %82, %struct.symbol** %7, align 8
  %83 = load %struct.symbol*, %struct.symbol** %7, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NONTERMINAL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %75
  %89 = load %struct.symbol*, %struct.symbol** %7, align 8
  %90 = getelementptr inbounds %struct.symbol, %struct.symbol* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LEMON_FALSE, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %88, %75
  %95 = phi i1 [ true, %75 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.symbol*, %struct.symbol** %7, align 8
  %99 = getelementptr inbounds %struct.symbol, %struct.symbol* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LEMON_FALSE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %108

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %69

108:                                              ; preds = %103, %69
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.rule*, %struct.rule** %5, align 8
  %111 = getelementptr inbounds %struct.rule, %struct.rule* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i64, i64* @LEMON_TRUE, align 8
  %116 = load %struct.rule*, %struct.rule** %5, align 8
  %117 = getelementptr inbounds %struct.rule, %struct.rule* %116, i32 0, i32 2
  %118 = load %struct.symbol*, %struct.symbol** %117, align 8
  %119 = getelementptr inbounds %struct.symbol, %struct.symbol* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %67
  %122 = load %struct.rule*, %struct.rule** %5, align 8
  %123 = getelementptr inbounds %struct.rule, %struct.rule* %122, i32 0, i32 3
  %124 = load %struct.rule*, %struct.rule** %123, align 8
  store %struct.rule* %124, %struct.rule** %5, align 8
  br label %57

125:                                              ; preds = %57
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %53, label %129

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %250, %129
  store i32 0, i32* %6, align 4
  %131 = load %struct.lemon*, %struct.lemon** %2, align 8
  %132 = getelementptr inbounds %struct.lemon, %struct.lemon* %131, i32 0, i32 2
  %133 = load %struct.rule*, %struct.rule** %132, align 8
  store %struct.rule* %133, %struct.rule** %5, align 8
  br label %134

134:                                              ; preds = %245, %130
  %135 = load %struct.rule*, %struct.rule** %5, align 8
  %136 = icmp ne %struct.rule* %135, null
  br i1 %136, label %137, label %249

137:                                              ; preds = %134
  %138 = load %struct.rule*, %struct.rule** %5, align 8
  %139 = getelementptr inbounds %struct.rule, %struct.rule* %138, i32 0, i32 2
  %140 = load %struct.symbol*, %struct.symbol** %139, align 8
  store %struct.symbol* %140, %struct.symbol** %8, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %241, %137
  %142 = load i32, i32* %3, align 4
  %143 = load %struct.rule*, %struct.rule** %5, align 8
  %144 = getelementptr inbounds %struct.rule, %struct.rule* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %244

147:                                              ; preds = %141
  %148 = load %struct.rule*, %struct.rule** %5, align 8
  %149 = getelementptr inbounds %struct.rule, %struct.rule* %148, i32 0, i32 1
  %150 = load %struct.symbol**, %struct.symbol*** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.symbol*, %struct.symbol** %150, i64 %152
  %154 = load %struct.symbol*, %struct.symbol** %153, align 8
  store %struct.symbol* %154, %struct.symbol** %9, align 8
  %155 = load %struct.symbol*, %struct.symbol** %9, align 8
  %156 = getelementptr inbounds %struct.symbol, %struct.symbol* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @TERMINAL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %147
  %161 = load %struct.symbol*, %struct.symbol** %8, align 8
  %162 = getelementptr inbounds %struct.symbol, %struct.symbol* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.symbol*, %struct.symbol** %9, align 8
  %165 = getelementptr inbounds %struct.symbol, %struct.symbol* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @SetAdd(i32 %163, i32 %166)
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %6, align 4
  br label %244

172:                                              ; preds = %147
  %173 = load %struct.symbol*, %struct.symbol** %9, align 8
  %174 = getelementptr inbounds %struct.symbol, %struct.symbol* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @MULTITERMINAL, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %207

178:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %203, %178
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.symbol*, %struct.symbol** %9, align 8
  %182 = getelementptr inbounds %struct.symbol, %struct.symbol* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %179
  %186 = load %struct.symbol*, %struct.symbol** %8, align 8
  %187 = getelementptr inbounds %struct.symbol, %struct.symbol* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.symbol*, %struct.symbol** %9, align 8
  %190 = getelementptr inbounds %struct.symbol, %struct.symbol* %189, i32 0, i32 4
  %191 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %191, i64 %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @SetAdd(i32 %188, i32 %197)
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %185
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %179

206:                                              ; preds = %179
  br label %244

207:                                              ; preds = %172
  %208 = load %struct.symbol*, %struct.symbol** %8, align 8
  %209 = load %struct.symbol*, %struct.symbol** %9, align 8
  %210 = icmp eq %struct.symbol* %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load %struct.symbol*, %struct.symbol** %8, align 8
  %213 = getelementptr inbounds %struct.symbol, %struct.symbol* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @LEMON_FALSE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %244

218:                                              ; preds = %211
  br label %238

219:                                              ; preds = %207
  %220 = load %struct.symbol*, %struct.symbol** %8, align 8
  %221 = getelementptr inbounds %struct.symbol, %struct.symbol* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.symbol*, %struct.symbol** %9, align 8
  %224 = getelementptr inbounds %struct.symbol, %struct.symbol* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @SetUnion(i32 %222, i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %6, align 4
  %231 = load %struct.symbol*, %struct.symbol** %9, align 8
  %232 = getelementptr inbounds %struct.symbol, %struct.symbol* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @LEMON_FALSE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %219
  br label %244

237:                                              ; preds = %219
  br label %238

238:                                              ; preds = %237, %218
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %3, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %3, align 4
  br label %141

244:                                              ; preds = %236, %217, %206, %160, %141
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.rule*, %struct.rule** %5, align 8
  %247 = getelementptr inbounds %struct.rule, %struct.rule* %246, i32 0, i32 3
  %248 = load %struct.rule*, %struct.rule** %247, align 8
  store %struct.rule* %248, %struct.rule** %5, align 8
  br label %134

249:                                              ; preds = %134
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %130, label %253

253:                                              ; preds = %250
  ret void
}

declare dso_local i32 @SetNew(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SetAdd(i32, i32) #1

declare dso_local i64 @SetUnion(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
