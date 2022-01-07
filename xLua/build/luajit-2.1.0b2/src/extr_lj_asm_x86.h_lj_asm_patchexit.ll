; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_lj_asm_patchexit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_lj_asm_patchexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_5__ = type { i32 }

@XI_JMP = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@XI_MOVmi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_asm_patchexit(i32* %0, %struct.TYPE_4__* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = call i64* @lj_mcode_patch(i32* %18, i64* %19, i32 0)
  store i64* %20, i64** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64* @exitstub_addr(i32* %24, i32 %25)
  %27 = getelementptr inbounds i64, i64* %26, i64 -6
  store i64* %27, i64** %12, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = getelementptr inbounds i64, i64* %31, i64 -6
  store i64* %32, i64** %13, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_5__* @J2G(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i64 @u32ptr(i32* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 5
  br i1 %38, label %39, label %78

39:                                               ; preds = %4
  %40 = load i64*, i64** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 5
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XI_JMP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %39
  %49 = load i64*, i64** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = getelementptr inbounds i64, i64* %52, i64 -6
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = getelementptr inbounds i64, i64* %57, i64 -4
  %59 = bitcast i64* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %53, i64 %61
  %63 = load i64*, i64** %12, align 8
  %64 = icmp eq i64* %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %48
  %66 = load i64*, i64** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64*, i64** %8, align 8
  %71 = call i32 @jmprel(i64* %69, i64* %70)
  %72 = load i64*, i64** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = getelementptr inbounds i64, i64* %75, i64 -4
  %77 = bitcast i64* %76 to i32*
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %65, %48, %39, %4
  br label %79

79:                                               ; preds = %109, %78
  %80 = load i64*, i64** %9, align 8
  %81 = load i64*, i64** %13, align 8
  %82 = icmp ult i64* %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %79
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* @LJ_64, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 3, i32 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %83
  %95 = load i64*, i64** %9, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XI_MOVmi, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i64, i64* @LJ_64, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 11, i32 10
  %105 = load i64*, i64** %9, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64* %107, i64** %9, align 8
  br label %112

108:                                              ; preds = %94, %83
  br label %109

109:                                              ; preds = %108
  %110 = load i64*, i64** %9, align 8
  %111 = getelementptr inbounds i64, i64* %110, i32 1
  store i64* %111, i64** %9, align 8
  br label %79

112:                                              ; preds = %100, %79
  %113 = load i64*, i64** %9, align 8
  %114 = load i64*, i64** %13, align 8
  %115 = icmp ult i64* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @lua_assert(i32 %116)
  br label %118

118:                                              ; preds = %149, %112
  %119 = load i64*, i64** %9, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = icmp ult i64* %119, %120
  br i1 %121, label %122, label %152

122:                                              ; preds = %118
  %123 = load i64*, i64** %9, align 8
  %124 = bitcast i64* %123 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 61695
  %127 = icmp eq i32 %126, 32783
  br i1 %127, label %128, label %148

128:                                              ; preds = %122
  %129 = load i64*, i64** %9, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  %132 = bitcast i64* %131 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %129, i64 %134
  %136 = load i64*, i64** %12, align 8
  %137 = icmp eq i64* %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %128
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 6
  %141 = load i64*, i64** %8, align 8
  %142 = call i32 @jmprel(i64* %140, i64* %141)
  %143 = load i64*, i64** %9, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  %145 = bitcast i64* %144 to i32*
  store i32 %142, i32* %145, align 4
  %146 = load i64*, i64** %9, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 5
  store i64* %147, i64** %9, align 8
  br label %148

148:                                              ; preds = %138, %128, %122
  br label %149

149:                                              ; preds = %148
  %150 = load i64*, i64** %9, align 8
  %151 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %151, i64** %9, align 8
  br label %118

152:                                              ; preds = %118
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %158, i64 %162
  %164 = call i32 @lj_mcode_sync(i64* %155, i64* %163)
  %165 = load i32*, i32** %5, align 8
  %166 = load i64*, i64** %10, align 8
  %167 = call i64* @lj_mcode_patch(i32* %165, i64* %166, i32 1)
  ret void
}

declare dso_local i64* @lj_mcode_patch(i32*, i64*, i32) #1

declare dso_local i64* @exitstub_addr(i32*, i32) #1

declare dso_local i64 @u32ptr(i32*) #1

declare dso_local %struct.TYPE_5__* @J2G(i32*) #1

declare dso_local i32 @jmprel(i64*, i64*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_mcode_sync(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
