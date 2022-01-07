; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_bitshift.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_bitshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@XO_SHIFT1 = common dso_local global i32 0, align 4
@RID_ECX = common dso_local global i64 0, align 8
@XO_MOV = common dso_local global i32 0, align 4
@XO_SHIFTcl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @asm_bitshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_bitshift(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_6__* @IR(i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @irref_isk(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load i32, i32* @RSET_GPR, align 4
  %24 = call i64 @ra_dest(i32* %21, %struct.TYPE_6__* %22, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @irt_is64(i32 %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 63, i32 31
  %35 = and i32 %27, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %46 [
    i32 0, label %37
    i32 1, label %38
  ]

37:                                               ; preds = %20
  br label %54

38:                                               ; preds = %20
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @XO_SHIFT1, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @REX_64IR(%struct.TYPE_6__* %41, i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @emit_rr(i32* %39, i32 %40, i64 %43, i64 %44)
  br label %54

46:                                               ; preds = %20
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @REX_64IR(%struct.TYPE_6__* %48, i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @emit_shifti(i32* %47, i64 %50, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %38, %37
  br label %120

55:                                               ; preds = %3
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = load i32, i32* @RSET_GPR, align 4
  %59 = load i64, i64* @RID_ECX, align 8
  %60 = call i32 @rset_exclude(i32 %58, i64 %59)
  %61 = call i64 @ra_dest(i32* %56, %struct.TYPE_6__* %57, i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @RID_ECX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @RSET_GPR, align 4
  %68 = load i64, i64* @RID_ECX, align 8
  %69 = call i32 @rset_exclude(i32 %67, i64 %68)
  %70 = call i64 @ra_scratch(i32* %66, i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @XO_MOV, align 4
  %73 = load i64, i64* @RID_ECX, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @emit_rr(i32* %71, i32 %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %65, %55
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @ra_noreg(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* @RID_ECX, align 8
  %87 = call i32 @RID2RSET(i64 %86)
  %88 = call i64 @ra_allocref(i32* %84, i32 %85, i32 %87)
  store i64 %88, i64* %11, align 8
  br label %99

89:                                               ; preds = %76
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @RID_ECX, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32*, i32** %4, align 8
  %95 = load i64, i64* @RID_ECX, align 8
  %96 = call i32 @RID2RSET(i64 %95)
  %97 = call i64 @ra_scratch(i32* %94, i32 %96)
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %83
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @XO_SHIFTcl, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @REX_64IR(%struct.TYPE_6__* %102, i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @emit_rr(i32* %100, i32 %101, i64 %104, i64 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @ra_noweak(i32* %107, i64 %108)
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @RID_ECX, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %99
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @XO_MOV, align 4
  %116 = load i64, i64* @RID_ECX, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @emit_rr(i32* %114, i32 %115, i64 %116, i64 %117)
  br label %119

119:                                              ; preds = %113, %99
  br label %120

120:                                              ; preds = %119, %54
  %121 = load i32*, i32** %4, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ra_left(i32* %121, i64 %122, i32 %125)
  ret void
}

declare dso_local %struct.TYPE_6__* @IR(i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i64 @ra_dest(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @irt_is64(i32) #1

declare dso_local i32 @emit_rr(i32*, i32, i64, i64) #1

declare dso_local i64 @REX_64IR(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @emit_shifti(i32*, i64, i64, i32) #1

declare dso_local i32 @rset_exclude(i32, i64) #1

declare dso_local i64 @ra_scratch(i32*, i32) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i64 @ra_allocref(i32*, i32, i32) #1

declare dso_local i32 @RID2RSET(i64) #1

declare dso_local i32 @ra_noweak(i32*, i64) #1

declare dso_local i32 @ra_left(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
