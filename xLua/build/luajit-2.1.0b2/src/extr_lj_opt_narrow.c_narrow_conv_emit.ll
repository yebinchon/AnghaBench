; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_narrow_conv_emit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_narrow_conv_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@fins = common dso_local global %struct.TYPE_6__* null, align 8
@IR_ADDOV = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i64 0, align 8
@NARROW_REF = common dso_local global i64 0, align 8
@NARROW_CONV = common dso_local global i64 0, align 8
@NARROW_SEXT = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@IRCONV_SEXT = common dso_local global i32 0, align 4
@NARROW_INT = common dso_local global i64 0, align 8
@IRCONV_CONVMASK = common dso_local global i32 0, align 4
@IRCONV_INDEX = common dso_local global i32 0, align 4
@IRCONV_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @narrow_conv_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @narrow_conv_emit(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fins, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @irt_isguard(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i64, i64* @IR_ADDOV, align 8
  %21 = load i64, i64* @IR_ADD, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i64 @IRTG(i64 %22, i32 0)
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ %23, %19 ], [ 0, %24 ]
  store i64 %26, i64* %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fins, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fins, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %10, align 8
  br label %42

42:                                               ; preds = %210, %25
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %211

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  %49 = load i32, i32* %47, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @narrow_op(i32 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @NARROW_REF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %210

59:                                               ; preds = %46
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @NARROW_CONV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @emitir_raw(i64 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %209

70:                                               ; preds = %59
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @NARROW_SEXT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = icmp uge i32* %75, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @lua_assert(i32 %81)
  %83 = load i32, i32* @IR_CONV, align 4
  %84 = load i32, i32* @IRT_I64, align 4
  %85 = call i64 @IRT(i32 %83, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 -1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IRT_I64, align 4
  %90 = shl i32 %89, 5
  %91 = load i32, i32* @IRT_INT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IRCONV_SEXT, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @emitir(i64 %85, i32 %88, i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 -1
  store i32 %95, i32* %97, align 4
  br label %208

98:                                               ; preds = %70
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @NARROW_INT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = icmp ult i32* %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @lua_assert(i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IRT_I64, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load i32*, i32** %3, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %8, align 8
  %117 = load i32, i32* %115, align 4
  %118 = sext i32 %117 to i64
  %119 = trunc i64 %118 to i32
  %120 = call i32 @lj_ir_kint64(i32* %114, i32 %119)
  br label %127

121:                                              ; preds = %102
  %122 = load i32*, i32** %3, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %8, align 8
  %125 = load i32, i32* %123, align 4
  %126 = call i32 @lj_ir_kint(i32* %122, i32 %125)
  br label %127

127:                                              ; preds = %121, %113
  %128 = phi i32 [ %120, %113 ], [ %126, %121 ]
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %207

131:                                              ; preds = %98
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = icmp uge i32* %135, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @lua_assert(i32 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 -1
  store i32* %144, i32** %10, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @IRCONV_CONVMASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @IRCONV_INDEX, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %131
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = icmp eq i32* %151, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %150
  %155 = load i32*, i32** %10, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @narrow_ref(i32 %157)
  %159 = call i64 @irref_isk(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @narrow_ref(i32 %164)
  %166 = call %struct.TYPE_7__* @IR(i64 %165)
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = add i32 %169, 1073741824
  %171 = icmp ult i32 %170, -2147483648
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  store i64 0, i64* %5, align 8
  br label %179

173:                                              ; preds = %161, %154, %150
  %174 = load i32, i32* @IRCONV_CHECK, align 4
  %175 = load i32, i32* @IRCONV_INDEX, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %173, %172
  br label %180

180:                                              ; preds = %179, %131
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %5, align 8
  %183 = add nsw i64 %181, %182
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 -1
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @emitir(i64 %183, i32 %186, i32 %189)
  %191 = load i32*, i32** %10, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 -1
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i64 @narrow_ref(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %180
  %197 = load i32*, i32** %3, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i64 @narrow_ref(i32 %198)
  %200 = load i32*, i32** %10, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 -1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @narrow_ref(i32 %202)
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @narrow_bpc_set(i32* %197, i64 %199, i64 %203, i32 %204)
  br label %206

206:                                              ; preds = %196, %180
  br label %207

207:                                              ; preds = %206, %127
  br label %208

208:                                              ; preds = %207, %74
  br label %209

209:                                              ; preds = %208, %63
  br label %210

210:                                              ; preds = %209, %55
  br label %42

211:                                              ; preds = %42
  %212 = load i32*, i32** %10, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = icmp eq i32* %212, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @lua_assert(i32 %218)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  ret i32 %224
}

declare dso_local i64 @irt_isguard(i32) #1

declare dso_local i64 @IRTG(i64, i32) #1

declare dso_local i64 @narrow_op(i32) #1

declare dso_local i32 @emitir_raw(i64, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @emitir(i64, i32, i32) #1

declare dso_local i64 @IRT(i32, i32) #1

declare dso_local i32 @lj_ir_kint64(i32*, i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @narrow_ref(i32) #1

declare dso_local %struct.TYPE_7__* @IR(i64) #1

declare dso_local i32 @narrow_bpc_set(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
