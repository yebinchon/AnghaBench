; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lcode.c_luaK_posfix.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lcode.c_luaK_posfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@NO_JUMP = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i32 0, align 4
@OP_CONCAT = common dso_local global i32 0, align 4
@LUA_OPADD = common dso_local global i32 0, align 4
@OpCode = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_posfix(i32* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %144 [
    i32 147, label %12
    i32 132, label %34
    i32 143, label %56
    i32 148, label %117
    i32 128, label %117
    i32 134, label %117
    i32 142, label %117
    i32 138, label %117
    i32 135, label %117
    i32 131, label %117
    i32 146, label %117
    i32 145, label %117
    i32 144, label %117
    i32 130, label %117
    i32 129, label %117
    i32 141, label %138
    i32 136, label %138
    i32 137, label %138
    i32 133, label %138
    i32 139, label %138
    i32 140, label %138
  ]

12:                                               ; preds = %5
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NO_JUMP, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @lua_assert(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = call i32 @luaK_dischargevars(i32* %20, %struct.TYPE_17__* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @luaK_concat(i32* %23, i32* %25, i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = bitcast %struct.TYPE_17__* %30 to i8*
  %33 = bitcast %struct.TYPE_17__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 16, i1 false)
  br label %146

34:                                               ; preds = %5
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NO_JUMP, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @lua_assert(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = call i32 @luaK_dischargevars(i32* %42, %struct.TYPE_17__* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @luaK_concat(i32* %45, i32* %47, i32 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = bitcast %struct.TYPE_17__* %52 to i8*
  %55 = bitcast %struct.TYPE_17__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 16, i1 false)
  br label %146

56:                                               ; preds = %5
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %59 = call i32 @luaK_exp2val(i32* %57, %struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VRELOCABLE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %56
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = call i32 @getinstruction(i32* %66, %struct.TYPE_17__* %67)
  %69 = call i32 @GET_OPCODE(i32 %68)
  %70 = load i32, i32* @OP_CONCAT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %65
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = call i32 @getinstruction(i32* %77, %struct.TYPE_17__* %78)
  %80 = call i32 @GETARG_B(i32 %79)
  %81 = sub nsw i32 %80, 1
  %82 = icmp eq i32 %76, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @lua_assert(i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = call i32 @freeexp(i32* %85, %struct.TYPE_17__* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = call i32 @getinstruction(i32* %88, %struct.TYPE_17__* %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SETARG_B(i32 %90, i32 %94)
  %96 = load i32, i32* @VRELOCABLE, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  br label %116

106:                                              ; preds = %65, %56
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = call i32 @luaK_exp2nextreg(i32* %107, %struct.TYPE_17__* %108)
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* @OP_CONCAT, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @codebinexpval(i32* %110, i32 %111, %struct.TYPE_17__* %112, %struct.TYPE_17__* %113, i32 %114)
  br label %116

116:                                              ; preds = %106, %72
  br label %146

117:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @LUA_OPADD, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = call i32 @constfolding(i32* %118, i32 %121, %struct.TYPE_17__* %122, %struct.TYPE_17__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %117
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @OpCode, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @OP_ADD, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @cast(i32 %128, i32 %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @codebinexpval(i32* %127, i32 %132, %struct.TYPE_17__* %133, %struct.TYPE_17__* %134, i32 %135)
  br label %137

137:                                              ; preds = %126, %117
  br label %146

138:                                              ; preds = %5, %5, %5, %5, %5, %5
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %143 = call i32 @codecomp(i32* %139, i32 %140, %struct.TYPE_17__* %141, %struct.TYPE_17__* %142)
  br label %146

144:                                              ; preds = %5
  %145 = call i32 @lua_assert(i32 0)
  br label %146

146:                                              ; preds = %144, %138, %137, %116, %34, %12
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaK_dischargevars(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @luaK_exp2val(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @getinstruction(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @freeexp(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @luaK_exp2nextreg(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @codebinexpval(i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @constfolding(i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @cast(i32, i32) #1

declare dso_local i32 @codecomp(i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
