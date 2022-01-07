; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lvm.c_luaV_finishOp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lvm.c_luaV_finishOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@CIST_LEQ = common dso_local global i32 0, align 4
@OP_JMP = common dso_local global i32 0, align 4
@OP_TFORLOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_finishOp(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GET_OPCODE(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %177 [
    i32 154, label %29
    i32 131, label %29
    i32 138, label %29
    i32 147, label %29
    i32 143, label %29
    i32 153, label %29
    i32 151, label %29
    i32 150, label %29
    i32 133, label %29
    i32 132, label %29
    i32 139, label %29
    i32 137, label %29
    i32 128, label %29
    i32 152, label %29
    i32 141, label %29
    i32 144, label %29
    i32 145, label %29
    i32 136, label %29
    i32 142, label %40
    i32 140, label %40
    i32 146, label %40
    i32 148, label %97
    i32 129, label %147
    i32 149, label %164
    i32 130, label %176
    i32 134, label %176
    i32 135, label %176
  ]

29:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GETARG_A(i32 %32)
  %34 = add nsw i32 %31, %33
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = call i32 @setobjs2s(%struct.TYPE_11__* %30, i32 %34, i32 %38)
  br label %179

40:                                               ; preds = %1, %1, %1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @l_isfalse(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CIST_LEQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %40
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 142
  %62 = zext i1 %61 to i32
  %63 = call i32 @lua_assert(i32 %62)
  %64 = load i32, i32* @CIST_LEQ, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %59, %40
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @GET_OPCODE(i32 %79)
  %81 = load i32, i32* @OP_JMP, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @lua_assert(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @GETARG_A(i32 %86)
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %73
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %93, align 8
  br label %96

96:                                               ; preds = %89, %73
  br label %179

97:                                               ; preds = %1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @GETARG_B(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = call i32 @cast_int(i64 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 2
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @setobj2s(%struct.TYPE_11__* %112, i32 %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %127

119:                                              ; preds = %97
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @luaV_concat(%struct.TYPE_11__* %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %97
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @GETARG_A(i32 %134)
  %136 = add nsw i32 %133, %135
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @setobj2s(%struct.TYPE_11__* %128, i32 %136, i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %179

147:                                              ; preds = %1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @GET_OPCODE(i32 %153)
  %155 = load i32, i32* @OP_TFORLOOP, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @lua_assert(i32 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %179

164:                                              ; preds = %1
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @GETARG_C(i32 %165)
  %167 = sub nsw i32 %166, 1
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %169, %164
  br label %179

176:                                              ; preds = %1, %1, %1
  br label %179

177:                                              ; preds = %1
  %178 = call i32 @lua_assert(i32 0)
  br label %179

179:                                              ; preds = %177, %176, %175, %147, %127, %96, %29
  ret void
}

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @l_isfalse(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @cast_int(i64) #1

declare dso_local i32 @setobj2s(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @luaV_concat(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @GETARG_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
