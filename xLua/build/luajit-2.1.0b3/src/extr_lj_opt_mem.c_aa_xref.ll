; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_aa_xref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_aa_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_17__, i64, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@ALIAS_MUST = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@IR_KINT64 = common dso_local global i64 0, align 8
@IR_KPTR = common dso_local global i64 0, align 8
@ALIAS_NO = common dso_local global i32 0, align 4
@ALIAS_MAY = common dso_local global i32 0, align 4
@IRT_I8 = common dso_local global i32 0, align 4
@IRT_U64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*)* @aa_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_xref(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_16__* @IR(i32 %21)
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %12, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %13, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %14, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %27 = icmp eq %struct.TYPE_16__* %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @irt_sametype(i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @ALIAS_MUST, align 4
  store i32 %40, i32* %5, align 4
  br label %248

41:                                               ; preds = %28, %4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IR_ADD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @irref_isk(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_16__* @IR(i32 %56)
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %15, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_16__* @IR(i32 %60)
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %13, align 8
  %62 = load i64, i64* @LJ_64, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %53
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IR_KINT64, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = call %struct.TYPE_18__* @ir_k64(%struct.TYPE_16__* %71)
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  br label %81

76:                                               ; preds = %64, %53
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi i32 [ %75, %70 ], [ %80, %76 ]
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %81, %47, %41
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IR_ADD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %125

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @irref_isk(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %89
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.TYPE_16__* @IR(i32 %98)
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %16, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_16__* @IR(i32 %102)
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %14, align 8
  %104 = load i64, i64* @LJ_64, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %95
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IR_KINT64, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %114 = call %struct.TYPE_18__* @ir_k64(%struct.TYPE_16__* %113)
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  br label %123

118:                                              ; preds = %106, %95
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  br label %123

123:                                              ; preds = %118, %112
  %124 = phi i32 [ %117, %112 ], [ %122, %118 ]
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %89, %83
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IR_KPTR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IR_KPTR, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %139 = call i64 @ir_kptr(%struct.TYPE_16__* %138)
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %142 = call i64 @ir_kptr(%struct.TYPE_16__* %141)
  %143 = inttoptr i64 %142 to i8*
  %144 = ptrtoint i8* %140 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %151, %struct.TYPE_16__** %14, align 8
  br label %152

152:                                              ; preds = %137, %131, %125
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %155 = icmp eq %struct.TYPE_16__* %153, %154
  br i1 %155, label %156, label %206

156:                                              ; preds = %152
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @irt_size(i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @irt_size(i32 %165)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %156
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @irt_isfp(i32 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @irt_isfp(i32 %183)
  %185 = icmp eq i64 %179, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %174
  %187 = load i32, i32* @ALIAS_MUST, align 4
  store i32 %187, i32* %5, align 4
  br label %248

188:                                              ; preds = %174, %170
  br label %204

189:                                              ; preds = %156
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %11, align 4
  %194 = icmp sle i32 %192, %193
  br i1 %194, label %201, label %195

195:                                              ; preds = %189
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %10, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %195, %189
  %202 = load i32, i32* @ALIAS_NO, align 4
  store i32 %202, i32* %5, align 4
  br label %248

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %188
  %205 = load i32, i32* @ALIAS_MAY, align 4
  store i32 %205, i32* %5, align 4
  br label %248

206:                                              ; preds = %152
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @irt_sametype(i32 %212, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %243, label %217

217:                                              ; preds = %206
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load i32, i32* @IRT_I8, align 4
  %221 = load i32, i32* @IRT_U64, align 4
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @irt_typerange(i32 %223, i32 %220, i32 %221)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %217
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @IRT_I8, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @IRT_I8, align 4
  %238 = sub nsw i32 %236, %237
  %239 = xor i32 %232, %238
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %243, label %241

241:                                              ; preds = %226, %217
  %242 = load i32, i32* @ALIAS_NO, align 4
  store i32 %242, i32* %5, align 4
  br label %248

243:                                              ; preds = %226, %206
  %244 = load i32*, i32** %6, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %247 = call i32 @aa_cnew(i32* %244, %struct.TYPE_16__* %245, %struct.TYPE_16__* %246)
  store i32 %247, i32* %5, align 4
  br label %248

248:                                              ; preds = %243, %241, %204, %201, %186, %39
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_16__* @IR(i32) #1

declare dso_local i64 @irt_sametype(i32, i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local %struct.TYPE_18__* @ir_k64(%struct.TYPE_16__*) #1

declare dso_local i64 @ir_kptr(%struct.TYPE_16__*) #1

declare dso_local i32 @irt_size(i32) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i64 @irt_typerange(i32, i32, i32) #1

declare dso_local i32 @aa_cnew(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
