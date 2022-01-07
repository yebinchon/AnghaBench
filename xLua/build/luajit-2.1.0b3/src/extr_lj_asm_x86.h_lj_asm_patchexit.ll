; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_lj_asm_patchexit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_lj_asm_patchexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@XI_JMP = common dso_local global i32 0, align 4
@LJ_GC64 = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i32 0, align 4
@XI_MOVmi = common dso_local global i32 0, align 4
@dispatch = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_asm_patchexit(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @lj_mcode_patch(i32* %19, i32* %20, i32 0)
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32* @exitstub_addr(i32* %25, i32 %26)
  %28 = getelementptr inbounds i32, i32* %27, i64 -6
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 -6
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.TYPE_7__* @J2G(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i64 @u32ptr(i32* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 5
  br i1 %39, label %40, label %77

40:                                               ; preds = %4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XI_JMP, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = getelementptr inbounds i32, i32* %53, i64 -6
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = getelementptr inbounds i32, i32* %58, i64 -4
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %54, i64 %61
  %63 = load i32*, i32** %12, align 8
  %64 = icmp eq i32* %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %49
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @jmprel(i32* %69, i32* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = getelementptr inbounds i32, i32* %75, i64 -4
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %65, %49, %40, %4
  br label %78

78:                                               ; preds = %120, %77
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %126

82:                                               ; preds = %78
  %83 = load i32, i32* @LJ_GC64, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 240
  %90 = icmp eq i32 %89, 64
  %91 = zext i1 %90 to i32
  br label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @LJ_64, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = phi i32 [ %91, %85 ], [ %93, %92 ]
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %15, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = bitcast i32* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %94
  %106 = load i32*, i32** %9, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i32, i32* @LJ_GC64, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* @LJ_64, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %110, %112
  %114 = getelementptr inbounds i32, i32* %106, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @XI_MOVmi, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %126

119:                                              ; preds = %105, %94
  br label %120

120:                                              ; preds = %119
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @asm_x86_inslen(i32* %121)
  %123 = load i32*, i32** %9, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %9, align 8
  br label %78

126:                                              ; preds = %118, %78
  %127 = load i32*, i32** %9, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = icmp ult i32* %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @lua_assert(i32 %130)
  br label %132

132:                                              ; preds = %158, %126
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = icmp ult i32* %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 61695
  %140 = icmp eq i32 %139, 32783
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32*, i32** %12, align 8
  %149 = icmp eq i32* %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %141
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @jmprel(i32* %152, i32* %153)
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %141, %136
  br label %158

158:                                              ; preds = %157
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 @asm_x86_inslen(i32* %159)
  %161 = load i32*, i32** %9, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %9, align 8
  br label %132

164:                                              ; preds = %132
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = call i32 @lj_mcode_sync(i32* %167, i32* %175)
  %177 = load i32*, i32** %5, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i32* @lj_mcode_patch(i32* %177, i32* %178, i32 1)
  ret void
}

declare dso_local i32* @lj_mcode_patch(i32*, i32*, i32) #1

declare dso_local i32* @exitstub_addr(i32*, i32) #1

declare dso_local i64 @u32ptr(i32*) #1

declare dso_local %struct.TYPE_7__* @J2G(i32*) #1

declare dso_local i32 @jmprel(i32*, i32*) #1

declare dso_local i32 @asm_x86_inslen(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_mcode_sync(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
