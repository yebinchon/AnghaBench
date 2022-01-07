; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_tail_fixup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_tail_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@JIT_F_LEA_AGU = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@XI_LEA = common dso_local global i64 0, align 8
@XM_OFS8 = common dso_local global i32 0, align 4
@XM_OFS32 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@XM_SCALE1 = common dso_local global i32 0, align 4
@XI_ARITHi8 = common dso_local global i64 0, align 8
@XI_ARITHi = common dso_local global i64 0, align 8
@XM_REG = common dso_local global i32 0, align 4
@XOg_ADD = common dso_local global i32 0, align 4
@lj_vm_exit_interp = common dso_local global i64 0, align 8
@XI_JMP = common dso_local global i32 0, align 4
@XI_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @asm_tail_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tail_fixup(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @JIT_F_LEA_AGU, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 7, i32 6
  %29 = load i64, i64* @LJ_64, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = add nsw i32 %28, %32
  %34 = load i32*, i32** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %5, align 8
  br label %108

38:                                               ; preds = %2
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @checki8(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -3
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 -6
  store i32* %46, i32** %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %56

50:                                               ; preds = %38
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -9
  store i32* %52, i32** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = bitcast i32* %54 to i64*
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @JIT_F_LEA_AGU, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load i64, i64* @XI_LEA, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 -3
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @checki8(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @XM_OFS8, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @XM_OFS32, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* @RID_ESP, align 4
  %78 = load i32, i32* @RID_ESP, align 4
  %79 = call i32 @MODRM(i32 %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @XM_SCALE1, align 4
  %83 = load i32, i32* @RID_ESP, align 4
  %84 = load i32, i32* @RID_ESP, align 4
  %85 = call i32 @MODRM(i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 -1
  store i32 %85, i32* %87, align 4
  br label %107

88:                                               ; preds = %56
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @checki8(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* @XI_ARITHi8, align 8
  br label %96

94:                                               ; preds = %88
  %95 = load i64, i64* @XI_ARITHi, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 -2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @XM_REG, align 4
  %102 = load i32, i32* @XOg_ADD, align 4
  %103 = load i32, i32* @RID_ESP, align 4
  %104 = call i32 @MODRM(i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 -1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %96, %75
  br label %108

108:                                              ; preds = %107, %20
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %4, align 8
  %116 = call %struct.TYPE_7__* @traceref(i32 %114, i64 %115)
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  br label %122

119:                                              ; preds = %108
  %120 = load i64, i64* @lj_vm_exit_interp, align 8
  %121 = inttoptr i64 %120 to i32*
  br label %122

122:                                              ; preds = %119, %111
  %123 = phi i32* [ %118, %111 ], [ %121, %119 ]
  store i32* %123, i32** %6, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i64 @jmprel(i32* %124, i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 -4
  %129 = bitcast i32* %128 to i64*
  store i64 %126, i64* %129, align 8
  %130 = load i32, i32* @XI_JMP, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 -5
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 -1
  store i32* %136, i32** %7, align 8
  br label %137

137:                                              ; preds = %144, %122
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = icmp uge i32* %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i32, i32* @XI_NOP, align 4
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 -1
  store i32* %146, i32** %7, align 8
  br label %137

147:                                              ; preds = %137
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32* %148, i32** %150, align 8
  ret void
}

declare dso_local i64 @checki8(i64) #1

declare dso_local i32 @MODRM(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @traceref(i32, i64) #1

declare dso_local i64 @jmprel(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
