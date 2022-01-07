; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_ahustore.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_ahustore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }

@RID_SINK = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@XO_MOVSDto = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i32 0, align 4
@XO_MOVto = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8
@XO_MOVmi = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @asm_ahustore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_ahustore(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RID_SINK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %131

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @irt_isnum(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RSET_FPR, align 4
  %27 = call i32 @ra_alloc1(%struct.TYPE_13__* %22, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RSET_GPR, align 4
  %33 = call i32 @asm_fuseahuref(%struct.TYPE_13__* %28, i32 %31, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = load i32, i32* @XO_MOVSDto, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RID_MRM, align 4
  %38 = call i32 @emit_mrm(%struct.TYPE_13__* %34, i32 %35, i32 %36, i32 %37)
  br label %131

39:                                               ; preds = %15
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_12__* @IR(i32 %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %6, align 8
  %44 = load i32, i32* @RSET_GPR, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @RID_NONE, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @irref_isk(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %39
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ra_alloc1(%struct.TYPE_13__* %52, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @rset_clear(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %39
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @asm_fuseahuref(%struct.TYPE_13__* %62, i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @ra_hasreg(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = load i32, i32* @XO_MOVto, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @RID_MRM, align 4
  %76 = call i32 @emit_mrm(%struct.TYPE_13__* %72, i32 %73, i32 %74, i32 %75)
  br label %114

77:                                               ; preds = %61
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @irt_ispri(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @irt_isaddr(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* @LJ_DUALNUM, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @irt_isinteger(i32 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %92, %89
  %99 = phi i1 [ false, %89 ], [ %97, %92 ]
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i1 [ true, %83 ], [ %99, %98 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @lua_assert(i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @emit_i32(%struct.TYPE_13__* %104, i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = load i32, i32* @XO_MOVmi, align 4
  %111 = load i32, i32* @RID_MRM, align 4
  %112 = call i32 @emit_mrm(%struct.TYPE_13__* %109, i32 %110, i32 0, i32 %111)
  br label %113

113:                                              ; preds = %100, %77
  br label %114

114:                                              ; preds = %113, %71
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @irt_toitype(i32 %123)
  %125 = trunc i64 %124 to i32
  %126 = call i32 @emit_i32(%struct.TYPE_13__* %120, i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = load i32, i32* @XO_MOVmi, align 4
  %129 = load i32, i32* @RID_MRM, align 4
  %130 = call i32 @emit_mrm(%struct.TYPE_13__* %127, i32 %128, i32 0, i32 %129)
  br label %131

131:                                              ; preds = %14, %114, %21
  ret void
}

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @asm_fuseahuref(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @IR(i32) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @irt_ispri(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @emit_i32(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @irt_toitype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
