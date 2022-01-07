; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_select_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_select_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@OP_val = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_case = common dso_local global i32 0, align 4
@OP_pop = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @compile_select_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_select_statement(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @compile_expression(i32* %13, %struct.TYPE_7__* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %3, align 4
  br label %252

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @OP_val, align 4
  %26 = call i32 @push_instr(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %29, i32* %3, align 4
  br label %252

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @alloc_label(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %36, i32* %3, align 4
  br label %252

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @emit_catch_jmp(i32* %38, i32 0, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %3, align 4
  br label %252

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %10, align 8
  br label %48

48:                                               ; preds = %54, %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %10, align 8
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32* @heap_alloc(i32 %65)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %70, i32* %3, align 4
  br label %252

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %58
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %145, %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %151

79:                                               ; preds = %76
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @alloc_label(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %93, i32* %12, align 4
  br label %151

94:                                               ; preds = %79
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %151

100:                                              ; preds = %94
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %11, align 8
  br label %104

104:                                              ; preds = %140, %100
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = icmp ne %struct.TYPE_7__* %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = call i32 @compile_expression(i32* %108, %struct.TYPE_7__* %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @FAILED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %144

115:                                              ; preds = %107
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* @OP_case, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @push_instr_addr(i32* %116, i32 %117, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @FAILED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %144

128:                                              ; preds = %115
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @emit_catch_jmp(i32* %129, i32 0, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %138, i32* %12, align 4
  br label %144

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %11, align 8
  br label %104

144:                                              ; preds = %137, %127, %114, %104
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %10, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %76

151:                                              ; preds = %99, %92, %76
  %152 = load i32, i32* %12, align 4
  %153 = call i64 @FAILED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @heap_free(i32* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %3, align 4
  br label %252

159:                                              ; preds = %151
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* @OP_pop, align 4
  %162 = call i32 @push_instr_uint(i32* %160, i32 %161, i32 1)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i64 @FAILED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @heap_free(i32* %167)
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %3, align 4
  br label %252

170:                                              ; preds = %159
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* @OP_jmp, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %174 = icmp ne %struct.TYPE_8__* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  br label %183

181:                                              ; preds = %170
  %182 = load i32, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %175
  %184 = phi i32 [ %180, %175 ], [ %182, %181 ]
  %185 = call i32 @push_instr_addr(i32* %171, i32 %172, i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i64 @FAILED(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @heap_free(i32* %190)
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %3, align 4
  br label %252

193:                                              ; preds = %183
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %9, align 4
  br label %197

197:                                              ; preds = %233, %193
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %199 = icmp ne %struct.TYPE_8__* %198, null
  br i1 %199, label %200, label %239

200:                                              ; preds = %197
  %201 = load i32*, i32** %4, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @label_set_addr(i32* %201, i32 %206)
  %208 = load i32*, i32** %4, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @compile_statement(i32* %208, i32* null, i32 %211)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = call i64 @FAILED(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %200
  br label %239

217:                                              ; preds = %200
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = icmp ne %struct.TYPE_8__* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %217
  br label %239

223:                                              ; preds = %217
  %224 = load i32*, i32** %4, align 8
  %225 = load i32, i32* @OP_jmp, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @push_instr_addr(i32* %224, i32 %225, i32 %226)
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = call i64 @FAILED(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %239

232:                                              ; preds = %223
  br label %233

233:                                              ; preds = %232
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  store %struct.TYPE_8__* %236, %struct.TYPE_8__** %10, align 8
  %237 = load i32, i32* %9, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %197

239:                                              ; preds = %231, %222, %216, %197
  %240 = load i32*, i32** %8, align 8
  %241 = call i32 @heap_free(i32* %240)
  %242 = load i32, i32* %12, align 4
  %243 = call i64 @FAILED(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load i32, i32* %12, align 4
  store i32 %246, i32* %3, align 4
  br label %252

247:                                              ; preds = %239
  %248 = load i32*, i32** %4, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @label_set_addr(i32* %248, i32 %249)
  %251 = load i32, i32* @S_OK, align 4
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %247, %245, %189, %166, %155, %69, %42, %35, %28, %21
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @compile_expression(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr(i32*, i32) #1

declare dso_local i32 @alloc_label(i32*) #1

declare dso_local i32 @emit_catch_jmp(i32*, i32, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @push_instr_addr(i32*, i32, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #1

declare dso_local i32 @label_set_addr(i32*, i32) #1

declare dso_local i32 @compile_statement(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
