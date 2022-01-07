; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaK_posfix.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaK_posfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@VRELOCABLE = common dso_local global i32 0, align 4
@OP_CONCAT = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@OP_SUB = common dso_local global i32 0, align 4
@OP_MUL = common dso_local global i32 0, align 4
@OP_DIV = common dso_local global i32 0, align 4
@OP_MOD = common dso_local global i32 0, align 4
@OP_POW = common dso_local global i32 0, align 4
@OP_EQ = common dso_local global i32 0, align 4
@OP_LT = common dso_local global i32 0, align 4
@OP_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*)* @luaK_posfix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaK_posfix(i32* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %163 [
    i32 141, label %10
    i32 130, label %25
    i32 140, label %40
    i32 142, label %91
    i32 128, label %97
    i32 132, label %103
    i32 139, label %109
    i32 133, label %115
    i32 129, label %121
    i32 138, label %127
    i32 131, label %133
    i32 134, label %139
    i32 135, label %145
    i32 136, label %151
    i32 137, label %157
  ]

10:                                               ; preds = %4
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %13 = call i32 @luaK_dischargevars(i32* %11, %struct.TYPE_17__* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @luaK_concat(i32* %14, i32* %16, i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = bitcast %struct.TYPE_17__* %21 to i8*
  %24 = bitcast %struct.TYPE_17__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 16, i1 false)
  br label %164

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = call i32 @luaK_dischargevars(i32* %26, %struct.TYPE_17__* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @luaK_concat(i32* %29, i32* %31, i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = bitcast %struct.TYPE_17__* %36 to i8*
  %39 = bitcast %struct.TYPE_17__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  br label %164

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = call i32 @luaK_exp2val(i32* %41, %struct.TYPE_17__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VRELOCABLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %40
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = call i32 @getcode(i32* %50, %struct.TYPE_17__* %51)
  %53 = call i32 @GET_OPCODE(i32 %52)
  %54 = load i32, i32* @OP_CONCAT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = call i32 @freeexp(i32* %57, %struct.TYPE_17__* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = call i32 @getcode(i32* %60, %struct.TYPE_17__* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SETARG_B(i32 %62, i32 %67)
  %69 = load i32, i32* @VRELOCABLE, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  br label %90

81:                                               ; preds = %49, %40
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = call i32 @luaK_exp2nextreg(i32* %82, %struct.TYPE_17__* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @OP_CONCAT, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = call i32 @codearith(i32* %85, i32 %86, %struct.TYPE_17__* %87, %struct.TYPE_17__* %88)
  br label %90

90:                                               ; preds = %81, %56
  br label %164

91:                                               ; preds = %4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @OP_ADD, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = call i32 @codearith(i32* %92, i32 %93, %struct.TYPE_17__* %94, %struct.TYPE_17__* %95)
  br label %164

97:                                               ; preds = %4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @OP_SUB, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = call i32 @codearith(i32* %98, i32 %99, %struct.TYPE_17__* %100, %struct.TYPE_17__* %101)
  br label %164

103:                                              ; preds = %4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @OP_MUL, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = call i32 @codearith(i32* %104, i32 %105, %struct.TYPE_17__* %106, %struct.TYPE_17__* %107)
  br label %164

109:                                              ; preds = %4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* @OP_DIV, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = call i32 @codearith(i32* %110, i32 %111, %struct.TYPE_17__* %112, %struct.TYPE_17__* %113)
  br label %164

115:                                              ; preds = %4
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* @OP_MOD, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %120 = call i32 @codearith(i32* %116, i32 %117, %struct.TYPE_17__* %118, %struct.TYPE_17__* %119)
  br label %164

121:                                              ; preds = %4
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* @OP_POW, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = call i32 @codearith(i32* %122, i32 %123, %struct.TYPE_17__* %124, %struct.TYPE_17__* %125)
  br label %164

127:                                              ; preds = %4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* @OP_EQ, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = call i32 @codecomp(i32* %128, i32 %129, i32 1, %struct.TYPE_17__* %130, %struct.TYPE_17__* %131)
  br label %164

133:                                              ; preds = %4
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @OP_EQ, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = call i32 @codecomp(i32* %134, i32 %135, i32 0, %struct.TYPE_17__* %136, %struct.TYPE_17__* %137)
  br label %164

139:                                              ; preds = %4
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @OP_LT, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %144 = call i32 @codecomp(i32* %140, i32 %141, i32 1, %struct.TYPE_17__* %142, %struct.TYPE_17__* %143)
  br label %164

145:                                              ; preds = %4
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* @OP_LE, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = call i32 @codecomp(i32* %146, i32 %147, i32 1, %struct.TYPE_17__* %148, %struct.TYPE_17__* %149)
  br label %164

151:                                              ; preds = %4
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* @OP_LT, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = call i32 @codecomp(i32* %152, i32 %153, i32 0, %struct.TYPE_17__* %154, %struct.TYPE_17__* %155)
  br label %164

157:                                              ; preds = %4
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* @OP_LE, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %162 = call i32 @codecomp(i32* %158, i32 %159, i32 0, %struct.TYPE_17__* %160, %struct.TYPE_17__* %161)
  br label %164

163:                                              ; preds = %4
  br label %164

164:                                              ; preds = %163, %157, %151, %145, %139, %133, %127, %121, %115, %109, %103, %97, %91, %90, %25, %10
  ret void
}

declare dso_local i32 @luaK_dischargevars(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @luaK_exp2val(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @getcode(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @freeexp(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @luaK_exp2nextreg(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @codearith(i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @codecomp(i32*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
