; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_sib.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_sib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VIE_MOD_DIRECT = common dso_local global i32 0, align 4
@VIE_RM_SIB = common dso_local global i64 0, align 8
@VIE_MOD_INDIRECT = common dso_local global i32 0, align 4
@gpr_map = common dso_local global i64* null, align 8
@VM_REG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vie*)* @decode_sib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_sib(%struct.vie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vie*, align 8
  %4 = alloca i32, align 4
  store %struct.vie* %0, %struct.vie** %3, align 8
  %5 = load %struct.vie*, %struct.vie** %3, align 8
  %6 = getelementptr inbounds %struct.vie, %struct.vie* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VIE_MOD_DIRECT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.vie*, %struct.vie** %3, align 8
  %12 = getelementptr inbounds %struct.vie, %struct.vie* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VIE_RM_SIB, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %125

17:                                               ; preds = %10
  %18 = load %struct.vie*, %struct.vie** %3, align 8
  %19 = call i64 @vie_peek(%struct.vie* %18, i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %125

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 6
  %25 = and i32 %24, 3
  %26 = load %struct.vie*, %struct.vie** %3, align 8
  %27 = getelementptr inbounds %struct.vie, %struct.vie* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 3
  %30 = and i32 %29, 7
  %31 = load %struct.vie*, %struct.vie** %3, align 8
  %32 = getelementptr inbounds %struct.vie, %struct.vie* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 0
  %35 = and i32 %34, 7
  %36 = load %struct.vie*, %struct.vie** %3, align 8
  %37 = getelementptr inbounds %struct.vie, %struct.vie* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vie*, %struct.vie** %3, align 8
  %39 = getelementptr inbounds %struct.vie, %struct.vie* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  %42 = load %struct.vie*, %struct.vie** %3, align 8
  %43 = getelementptr inbounds %struct.vie, %struct.vie* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.vie*, %struct.vie** %3, align 8
  %47 = getelementptr inbounds %struct.vie, %struct.vie* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 3
  %50 = load %struct.vie*, %struct.vie** %3, align 8
  %51 = getelementptr inbounds %struct.vie, %struct.vie* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.vie*, %struct.vie** %3, align 8
  %55 = getelementptr inbounds %struct.vie, %struct.vie* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %63 [
    i32 128, label %57
    i32 129, label %60
  ]

57:                                               ; preds = %22
  %58 = load %struct.vie*, %struct.vie** %3, align 8
  %59 = getelementptr inbounds %struct.vie, %struct.vie* %58, i32 0, i32 7
  store i32 1, i32* %59, align 4
  br label %63

60:                                               ; preds = %22
  %61 = load %struct.vie*, %struct.vie** %3, align 8
  %62 = getelementptr inbounds %struct.vie, %struct.vie* %61, i32 0, i32 7
  store i32 4, i32* %62, align 4
  br label %63

63:                                               ; preds = %22, %60, %57
  %64 = load %struct.vie*, %struct.vie** %3, align 8
  %65 = getelementptr inbounds %struct.vie, %struct.vie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VIE_MOD_INDIRECT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.vie*, %struct.vie** %3, align 8
  %71 = getelementptr inbounds %struct.vie, %struct.vie* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 5
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.vie*, %struct.vie** %3, align 8
  %76 = getelementptr inbounds %struct.vie, %struct.vie* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69
  %80 = load %struct.vie*, %struct.vie** %3, align 8
  %81 = getelementptr inbounds %struct.vie, %struct.vie* %80, i32 0, i32 7
  store i32 4, i32* %81, align 4
  br label %93

82:                                               ; preds = %74, %63
  %83 = load i64*, i64** @gpr_map, align 8
  %84 = load %struct.vie*, %struct.vie** %3, align 8
  %85 = getelementptr inbounds %struct.vie, %struct.vie* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %83, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.vie*, %struct.vie** %3, align 8
  %92 = getelementptr inbounds %struct.vie, %struct.vie* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %82, %79
  %94 = load %struct.vie*, %struct.vie** %3, align 8
  %95 = getelementptr inbounds %struct.vie, %struct.vie* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 4
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load i64*, i64** @gpr_map, align 8
  %100 = load %struct.vie*, %struct.vie** %3, align 8
  %101 = getelementptr inbounds %struct.vie, %struct.vie* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %99, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.vie*, %struct.vie** %3, align 8
  %108 = getelementptr inbounds %struct.vie, %struct.vie* %107, i32 0, i32 9
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %93
  %110 = load %struct.vie*, %struct.vie** %3, align 8
  %111 = getelementptr inbounds %struct.vie, %struct.vie* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @VM_REG_LAST, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.vie*, %struct.vie** %3, align 8
  %117 = getelementptr inbounds %struct.vie, %struct.vie* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 1, %118
  %120 = load %struct.vie*, %struct.vie** %3, align 8
  %121 = getelementptr inbounds %struct.vie, %struct.vie* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %115, %109
  %123 = load %struct.vie*, %struct.vie** %3, align 8
  %124 = call i32 @vie_advance(%struct.vie* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %21, %16
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @vie_peek(%struct.vie*, i32*) #1

declare dso_local i32 @vie_advance(%struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
