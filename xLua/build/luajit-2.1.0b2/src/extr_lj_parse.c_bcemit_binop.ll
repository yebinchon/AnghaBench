; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_binop.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@OPR_POW = common dso_local global i64 0, align 8
@OPR_AND = common dso_local global i64 0, align 8
@NO_JMP = common dso_local global i64 0, align 8
@OPR_OR = common dso_local global i64 0, align 8
@OPR_CONCAT = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i64 0, align 8
@BC_CAT = common dso_local global i64 0, align 8
@OPR_NE = common dso_local global i64 0, align 8
@OPR_EQ = common dso_local global i64 0, align 8
@OPR_LT = common dso_local global i64 0, align 8
@OPR_GE = common dso_local global i64 0, align 8
@OPR_LE = common dso_local global i64 0, align 8
@OPR_GT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*)* @bcemit_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_binop(i32* %0, i64 %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @OPR_POW, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = call i32 @bcemit_arith(i32* %13, i64 %14, %struct.TYPE_17__* %15, %struct.TYPE_17__* %16)
  br label %194

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @OPR_AND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NO_JMP, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @lua_assert(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = call i32 @expr_discharge(i32* %30, %struct.TYPE_17__* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @jmp_append(i32* %33, i64* %35, i64 %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = bitcast %struct.TYPE_17__* %40 to i8*
  %43 = bitcast %struct.TYPE_17__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  br label %193

44:                                               ; preds = %18
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @OPR_OR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NO_JMP, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @lua_assert(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = call i32 @expr_discharge(i32* %56, %struct.TYPE_17__* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @jmp_append(i32* %59, i64* %61, i64 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = bitcast %struct.TYPE_17__* %66 to i8*
  %69 = bitcast %struct.TYPE_17__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 32, i1 false)
  br label %192

70:                                               ; preds = %44
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @OPR_CONCAT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %158

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = call i32 @expr_toval(i32* %75, %struct.TYPE_17__* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VRELOCABLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %127

83:                                               ; preds = %74
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = call i32* @bcptr(i32* %84, %struct.TYPE_17__* %85)
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @bc_op(i32 %87)
  %89 = load i64, i64* @BC_CAT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %83
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = call i32* @bcptr(i32* %97, %struct.TYPE_17__* %98)
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bc_b(i32 %100)
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %96, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @lua_assert(i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = call i32 @expr_free(i32* %106, %struct.TYPE_17__* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = call i32* @bcptr(i32* %109, %struct.TYPE_17__* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @setbc_b(i32* %111, i32 %116)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  br label %154

127:                                              ; preds = %83, %74
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = call i32 @expr_tonextreg(i32* %128, %struct.TYPE_17__* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %133 = call i32 @expr_free(i32* %131, %struct.TYPE_17__* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = call i32 @expr_free(i32* %134, %struct.TYPE_17__* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load i64, i64* @BC_CAT, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bcemit_ABC(i32* %137, i64 %138, i32 0, i32 %143, i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 8
  br label %154

154:                                              ; preds = %127, %91
  %155 = load i64, i64* @VRELOCABLE, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  br label %191

158:                                              ; preds = %70
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @OPR_NE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %182, label %162

162:                                              ; preds = %158
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @OPR_EQ, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %182, label %166

166:                                              ; preds = %162
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @OPR_LT, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %182, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* @OPR_GE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* @OPR_LE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* @OPR_GT, align 8
  %181 = icmp eq i64 %179, %180
  br label %182

182:                                              ; preds = %178, %174, %170, %166, %162, %158
  %183 = phi i1 [ true, %174 ], [ true, %170 ], [ true, %166 ], [ true, %162 ], [ true, %158 ], [ %181, %178 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @lua_assert(i32 %184)
  %186 = load i32*, i32** %5, align 8
  %187 = load i64, i64* %6, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %190 = call i32 @bcemit_comp(i32* %186, i64 %187, %struct.TYPE_17__* %188, %struct.TYPE_17__* %189)
  br label %191

191:                                              ; preds = %182, %154
  br label %192

192:                                              ; preds = %191, %48
  br label %193

193:                                              ; preds = %192, %22
  br label %194

194:                                              ; preds = %193, %12
  ret void
}

declare dso_local i32 @bcemit_arith(i32*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @expr_discharge(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @jmp_append(i32*, i64*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @expr_toval(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32* @bcptr(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @bc_b(i32) #1

declare dso_local i32 @expr_free(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @setbc_b(i32*, i32) #1

declare dso_local i32 @expr_tonextreg(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @bcemit_ABC(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @bcemit_comp(i32*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
