; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_index_bf.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_index_bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_10__ = type { i64, i64, i32* }

@IRT_I8 = common dso_local global i64 0, align 8
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@IR_XLOAD = common dso_local global i32 0, align 4
@IRT_U32 = common dso_local global i64 0, align 8
@CTF_BOOL = common dso_local global i32 0, align 4
@IR_BAND = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i32 0, align 4
@IR_BSHL = common dso_local global i32 0, align 4
@IR_BSAR = common dso_local global i32 0, align 4
@IR_BSHR = common dso_local global i32 0, align 4
@CTID_BOOL = common dso_local global i32 0, align 4
@CTID_UINT32 = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i32 0, align 4
@IR_BOR = common dso_local global i32 0, align 4
@IR_XSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32)* @crec_index_bf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_index_bf(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i64, i64* @IRT_I8, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ctype_bitcsz(i32 %19)
  %21 = call i32 @lj_fls(i32 %20)
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CTF_UNSIGNED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %24, %31
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @IR_XLOAD, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @IRT(i32 %33, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @emitir(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ctype_bitpos(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ctype_bitbsz(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 32, %42
  store i32 %43, i32* %13, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @IRT_U32, align 8
  %46 = icmp sle i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @lua_assert(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %128

53:                                               ; preds = %4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CTF_BOOL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load i32, i32* @IR_BAND, align 4
  %60 = call i32 @IRTI(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 1, %63
  %65 = call i32 @lj_ir_kint(%struct.TYPE_9__* %62, i32 %64)
  %66 = call i32 @emitir(i32 %60, i32 %61, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = load i32, i32* @IR_NE, align 4
  %69 = call i32 @IRTGI(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = call i32 @lj_ir_kint(%struct.TYPE_9__* %71, i32 0)
  %73 = call i32 @lj_ir_set(%struct.TYPE_9__* %67, i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @TREF_TRUE, align 4
  store i32 %77, i32* %10, align 4
  br label %122

78:                                               ; preds = %53
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CTF_UNSIGNED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @IR_BSHL, align 4
  %85 = call i32 @IRTI(i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @lj_ir_kint(%struct.TYPE_9__* %87, i32 %90)
  %92 = call i32 @emitir(i32 %85, i32 %86, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @IR_BSAR, align 4
  %94 = call i32 @IRTI(i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @lj_ir_kint(%struct.TYPE_9__* %96, i32 %97)
  %99 = call i32 @emitir(i32 %94, i32 %95, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %121

100:                                              ; preds = %78
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 32
  %103 = zext i1 %102 to i32
  %104 = call i32 @lua_assert(i32 %103)
  %105 = load i32, i32* @IR_BSHR, align 4
  %106 = call i32 @IRTI(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @lj_ir_kint(%struct.TYPE_9__* %108, i32 %109)
  %111 = call i32 @emitir(i32 %106, i32 %107, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @IR_BAND, align 4
  %113 = call i32 @IRTI(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = shl i32 1, %116
  %118 = sub i32 %117, 1
  %119 = call i32 @lj_ir_kint(%struct.TYPE_9__* %115, i32 %118)
  %120 = call i32 @emitir(i32 %113, i32 %114, i32 %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %100, %83
  br label %122

122:                                              ; preds = %121, %58
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %123, i32* %127, align 4
  br label %210

128:                                              ; preds = %4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = call i32 @J2G(%struct.TYPE_9__* %129)
  %131 = call i32* @ctype_ctsG(i32 %130)
  store i32* %131, i32** %14, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @CTF_BOOL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @CTID_BOOL, align 4
  br label %150

139:                                              ; preds = %128
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @CTF_UNSIGNED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @CTID_UINT32, align 4
  br label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @CTID_INT32, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  br label %150

150:                                              ; preds = %148, %137
  %151 = phi i32 [ %138, %137 ], [ %149, %148 ]
  %152 = call i32* @ctype_get(i32* %132, i32 %151)
  store i32* %152, i32** %15, align 8
  %153 = load i32, i32* %12, align 4
  %154 = shl i32 1, %153
  %155 = sub i32 %154, 1
  %156 = load i32, i32* %11, align 4
  %157 = shl i32 %155, %156
  store i32 %157, i32* %16, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = call i32 @crec_ct_tv(%struct.TYPE_9__* %158, i32* %159, i32 0, i32 %164, i32* %168)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* @IR_BSHL, align 4
  %171 = call i32 @IRTI(i32 %170)
  %172 = load i32, i32* %17, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @lj_ir_kint(%struct.TYPE_9__* %173, i32 %174)
  %176 = call i32 @emitir(i32 %171, i32 %172, i32 %175)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* @IR_BAND, align 4
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @IRT(i32 %177, i64 %178)
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @lj_ir_kint(%struct.TYPE_9__* %181, i32 %182)
  %184 = call i32 @emitir(i32 %179, i32 %180, i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* @IR_BAND, align 4
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @IRT(i32 %185, i64 %186)
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = load i32, i32* %16, align 4
  %191 = xor i32 %190, -1
  %192 = call i32 @lj_ir_kint(%struct.TYPE_9__* %189, i32 %191)
  %193 = call i32 @emitir(i32 %187, i32 %188, i32 %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* @IR_BOR, align 4
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @IRT(i32 %194, i64 %195)
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @emitir(i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* @IR_XSTORE, align 4
  %201 = load i64, i64* %9, align 8
  %202 = call i32 @IRT(i32 %200, i64 %201)
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @emitir(i32 %202, i32 %203, i32 %204)
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %150, %122
  ret void
}

declare dso_local i32 @lj_fls(i32) #1

declare dso_local i32 @ctype_bitcsz(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i64) #1

declare dso_local i32 @ctype_bitpos(i32) #1

declare dso_local i32 @ctype_bitbsz(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_9__*) #1

declare dso_local i32* @ctype_get(i32*, i32) #1

declare dso_local i32 @crec_ct_tv(%struct.TYPE_9__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
