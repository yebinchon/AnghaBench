; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_setupresult.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_setupresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@RSET_SCRATCH = common dso_local global i32 0, align 4
@LJ_32 = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i64 0, align 8
@CCI_NOFPRCLOBBER = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@XO_MOVSD = common dso_local global i32 0, align 4
@XO_MOVSS = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@CCI_CASTU64 = common dso_local global i32 0, align 4
@RID_RETLO = common dso_local global i32 0, align 4
@RID_RETHI = common dso_local global i32 0, align 4
@XO_FSTPq = common dso_local global i32 0, align 4
@XO_FSTPd = common dso_local global i32 0, align 4
@XOg_FSTPq = common dso_local global i32 0, align 4
@XOg_FSTPd = common dso_local global i32 0, align 4
@RID_RET = common dso_local global i32 0, align 4
@XI_FPOP = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_FPRET = common dso_local global i32 0, align 4
@XO_MOVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*)* @asm_setupresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_setupresult(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load i32, i32* @RSET_SCRATCH, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* @LJ_32, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IR_HIOP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @irt_isnil(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %14, %3
  %30 = phi i1 [ false, %14 ], [ false, %3 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CCI_NOFPRCLOBBER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i32, i32* @RSET_FPR, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ra_hasreg(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @rset_clear(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ra_hasreg(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @rset_clear(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %58, %55
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ra_evictset(i32* %73, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = call i64 @ra_used(%struct.TYPE_8__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %180

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @irt_isfp(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %166

85:                                               ; preds = %79
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @sps_scale(i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @ra_hasreg(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %85
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ra_free(i32* %97, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @ra_modified(i32* %100, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @irt_isnum(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @XO_MOVSD, align 4
  br label %113

111:                                              ; preds = %96
  %112 = load i32, i32* @XO_MOVSS, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @RID_ESP, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @emit_rmro(i32* %103, i32 %114, i32 %115, i32 %116, i64 %117)
  br label %119

119:                                              ; preds = %113, %85
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CCI_CASTU64, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %119
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @RID_RETLO, align 4
  %129 = load i32, i32* @RID_ESP, align 4
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @emit_movtomro(i32* %127, i32 %128, i32 %129, i64 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @RID_RETHI, align 4
  %134 = load i32, i32* @RID_ESP, align 4
  %135 = load i64, i64* %9, align 8
  %136 = add nsw i64 %135, 4
  %137 = call i32 @emit_movtomro(i32* %132, i32 %133, i32 %134, i64 %136)
  br label %165

138:                                              ; preds = %119
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @irt_isnum(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @XO_FSTPq, align 4
  br label %149

147:                                              ; preds = %138
  %148 = load i32, i32* @XO_FSTPd, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @irt_isnum(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @XOg_FSTPq, align 4
  br label %160

158:                                              ; preds = %149
  %159 = load i32, i32* @XOg_FSTPd, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = load i32, i32* @RID_ESP, align 4
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @emit_rmro(i32* %139, i32 %150, i32 %161, i32 %162, i64 %163)
  br label %165

165:                                              ; preds = %160, %126
  br label %179

166:                                              ; preds = %79
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @irt_ispri(i32 %169)
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @lua_assert(i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = load i32, i32* @RID_RET, align 4
  %178 = call i32 @ra_destreg(i32* %175, %struct.TYPE_8__* %176, i32 %177)
  br label %179

179:                                              ; preds = %166, %165
  br label %201

180:                                              ; preds = %72
  %181 = load i64, i64* @LJ_32, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %180
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @irt_isfp(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @CCI_CASTU64, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %189
  %197 = load i32*, i32** %4, align 8
  %198 = load i32, i32* @XI_FPOP, align 4
  %199 = call i32 @emit_x87op(i32* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %189, %183, %180
  br label %201

201:                                              ; preds = %200, %179
  ret void
}

declare dso_local i32 @irt_isnil(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i32 @ra_evictset(i32*, i32) #1

declare dso_local i64 @ra_used(%struct.TYPE_8__*) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i64 @sps_scale(i32) #1

declare dso_local i32 @ra_free(i32*, i32) #1

declare dso_local i32 @ra_modified(i32*, i32) #1

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i64) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @emit_movtomro(i32*, i32, i32, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @irt_ispri(i32) #1

declare dso_local i32 @ra_destreg(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @emit_x87op(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
