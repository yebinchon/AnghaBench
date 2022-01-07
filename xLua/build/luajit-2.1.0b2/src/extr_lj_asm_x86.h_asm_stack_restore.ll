; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_stack_restore.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_stack_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }

@SNAP_NORESTORE = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@XO_MOVSDto = common dso_local global i32 0, align 4
@RID_BASE = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@SNAP_CONT = common dso_local global i32 0, align 4
@SNAP_FRAME = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_15__*)* @asm_stack_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_stack_restore(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @snap_nextofs(%struct.TYPE_18__* %32, %struct.TYPE_15__* %33)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32* %37, i32** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %185, %2
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %188

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @snap_slot(i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  %54 = sub nsw i32 %53, 1
  %55 = mul nsw i32 8, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @snap_ref(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.TYPE_16__* @IR(i32 %58)
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SNAP_NORESTORE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %185

65:                                               ; preds = %45
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @irt_isnum(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @RSET_FPR, align 4
  %75 = call i32 @ra_alloc1(%struct.TYPE_17__* %72, i32 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = load i32, i32* @XO_MOVSDto, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @RID_BASE, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @emit_rmro(%struct.TYPE_17__* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %182

82:                                               ; preds = %65
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @irt_ispri(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @irt_isaddr(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* @LJ_DUALNUM, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @irt_isinteger(i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %97, %94
  %104 = phi i1 [ false, %94 ], [ %102, %97 ]
  br label %105

105:                                              ; preds = %103, %88, %82
  %106 = phi i1 [ true, %88 ], [ true, %82 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @lua_assert(i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @irref_isk(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %105
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @RSET_GPR, align 4
  %116 = load i32, i32* @RID_BASE, align 4
  %117 = call i32 @rset_exclude(i32 %115, i32 %116)
  %118 = call i32 @ra_alloc1(%struct.TYPE_17__* %113, i32 %114, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @REX_64IR(%struct.TYPE_16__* %120, i32 %121)
  %123 = load i32, i32* @RID_BASE, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @emit_movtomro(%struct.TYPE_17__* %119, i32 %122, i32 %123, i32 %124)
  br label %141

126:                                              ; preds = %105
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @irt_ispri(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = load i32, i32* @RID_BASE, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @emit_movmroi(%struct.TYPE_17__* %133, i32 %134, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %132, %126
  br label %141

141:                                              ; preds = %140, %112
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SNAP_CONT, align 4
  %144 = load i32, i32* @SNAP_FRAME, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %141
  %149 = load i64, i64* %10, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %153 = load i32, i32* @RID_BASE, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 4
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 -1
  store i32* %157, i32** %6, align 8
  %158 = load i32, i32* %156, align 4
  %159 = call i32 @emit_movmroi(%struct.TYPE_17__* %152, i32 %153, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %151, %148
  br label %181

161:                                              ; preds = %141
  %162 = load i64, i64* @LJ_64, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @irt_islightud(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %164, %161
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %172 = load i32, i32* @RID_BASE, align 4
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @irt_toitype(i32 %177)
  %179 = call i32 @emit_movmroi(%struct.TYPE_17__* %171, i32 %172, i32 %174, i32 %178)
  br label %180

180:                                              ; preds = %170, %164
  br label %181

181:                                              ; preds = %180, %160
  br label %182

182:                                              ; preds = %181, %71
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %184 = call i32 @checkmclim(%struct.TYPE_17__* %183)
  br label %185

185:                                              ; preds = %182, %64
  %186 = load i64, i64* %7, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %7, align 8
  br label %41

188:                                              ; preds = %41
  %189 = load i32*, i32** %5, align 8
  %190 = load i64, i64* %8, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32*, i32** %6, align 8
  %193 = icmp eq i32* %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @lua_assert(i32 %194)
  ret void
}

declare dso_local i32 @snap_nextofs(%struct.TYPE_18__*, %struct.TYPE_15__*) #1

declare dso_local i64 @snap_slot(i32) #1

declare dso_local i32 @snap_ref(i32) #1

declare dso_local %struct.TYPE_16__* @IR(i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_movtomro(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @REX_64IR(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emit_movmroi(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @irt_islightud(i32) #1

declare dso_local i32 @irt_toitype(i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
