; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_stack_restore.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_stack_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_23__*, %struct.TYPE_29__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_27__ = type { i32, i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
@SNAP_NORESTORE = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@XO_MOVSDto = common dso_local global i32 0, align 4
@RID_BASE = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@SNAP_CONT = common dso_local global i32 0, align 4
@SNAP_FRAME = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@LJ_TISNUM = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XO_ARITHi = common dso_local global i32 0, align 4
@XO_MOVmi = common dso_local global i32 0, align 4
@XOg_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_26__*)* @asm_stack_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_stack_restore(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = call i32 @snap_nextofs(%struct.TYPE_29__* %32, %struct.TYPE_26__* %33)
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @LJ_FR2, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %29, i64 %38
  store i32* %39, i32** %6, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %189, %2
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %192

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @snap_slot(i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @LJ_FR2, align 4
  %58 = sub nsw i32 %56, %57
  %59 = mul nsw i32 8, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @snap_ref(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call %struct.TYPE_27__* @IR(i32 %62)
  store %struct.TYPE_27__* %63, %struct.TYPE_27__** %13, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SNAP_NORESTORE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  br label %189

69:                                               ; preds = %47
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @irt_isnum(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @RSET_FPR, align 4
  %79 = call i32 @ra_alloc1(%struct.TYPE_28__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %81 = load i32, i32* @XO_MOVSDto, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @RID_BASE, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @emit_rmro(%struct.TYPE_28__* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  br label %186

86:                                               ; preds = %69
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @irt_ispri(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @irt_isaddr(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* @LJ_DUALNUM, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @irt_isinteger(i32 %104)
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i1 [ false, %98 ], [ %106, %101 ]
  br label %109

109:                                              ; preds = %107, %92, %86
  %110 = phi i1 [ true, %92 ], [ true, %86 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @lua_assert(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @irref_isk(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %109
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @RSET_GPR, align 4
  %120 = load i32, i32* @RID_BASE, align 4
  %121 = call i32 @rset_exclude(i32 %119, i32 %120)
  %122 = call i32 @ra_alloc1(%struct.TYPE_28__* %117, i32 %118, i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @REX_64IR(%struct.TYPE_27__* %124, i32 %125)
  %127 = load i32, i32* @RID_BASE, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @emit_movtomro(%struct.TYPE_28__* %123, i32 %126, i32 %127, i32 %128)
  br label %145

130:                                              ; preds = %109
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @irt_ispri(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %130
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %138 = load i32, i32* @RID_BASE, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @emit_movmroi(%struct.TYPE_28__* %137, i32 %138, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %136, %130
  br label %145

145:                                              ; preds = %144, %116
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @SNAP_CONT, align 4
  %148 = load i32, i32* @SNAP_FRAME, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %145
  %153 = load i64, i64* %10, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %157 = load i32, i32* @RID_BASE, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 4
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 -1
  store i32* %161, i32** %6, align 8
  %162 = load i32, i32* %160, align 4
  %163 = call i32 @emit_movmroi(%struct.TYPE_28__* %156, i32 %157, i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %155, %152
  br label %185

165:                                              ; preds = %145
  %166 = load i64, i64* @LJ_64, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @irt_islightud(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %168, %165
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %176 = load i32, i32* @RID_BASE, align 4
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @irt_toitype(i32 %181)
  %183 = call i32 @emit_movmroi(%struct.TYPE_28__* %175, i32 %176, i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %174, %168
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %75
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %188 = call i32 @checkmclim(%struct.TYPE_28__* %187)
  br label %189

189:                                              ; preds = %186, %68
  %190 = load i64, i64* %7, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %7, align 8
  br label %43

192:                                              ; preds = %43
  %193 = load i32*, i32** %5, align 8
  %194 = load i64, i64* %8, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32*, i32** %6, align 8
  %197 = icmp eq i32* %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @lua_assert(i32 %198)
  ret void
}

declare dso_local i32 @snap_nextofs(%struct.TYPE_29__*, %struct.TYPE_26__*) #1

declare dso_local i64 @snap_slot(i32) #1

declare dso_local i32 @snap_ref(i32) #1

declare dso_local %struct.TYPE_27__* @IR(i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_movtomro(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @REX_64IR(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @emit_movmroi(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i64 @irt_islightud(i32) #1

declare dso_local i32 @irt_toitype(i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
