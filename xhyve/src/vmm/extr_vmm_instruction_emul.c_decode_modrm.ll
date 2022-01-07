; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_modrm.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_modrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VIE_OP_F_NO_MODRM = common dso_local global i32 0, align 4
@CPU_MODE_REAL = common dso_local global i32 0, align 4
@VIE_MOD_DIRECT = common dso_local global i32 0, align 4
@VIE_RM_DISP32 = common dso_local global i32 0, align 4
@VIE_RM_SIB = common dso_local global i32 0, align 4
@gpr_map = common dso_local global i64* null, align 8
@CPU_MODE_64BIT = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vie*, i32)* @decode_modrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_modrm(%struct.vie* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vie* %0, %struct.vie** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vie*, %struct.vie** %4, align 8
  %8 = getelementptr inbounds %struct.vie, %struct.vie* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VIE_OP_F_NO_MODRM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CPU_MODE_REAL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %147

20:                                               ; preds = %15
  %21 = load %struct.vie*, %struct.vie** %4, align 8
  %22 = call i64 @vie_peek(%struct.vie* %21, i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %147

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 6
  %28 = and i32 %27, 3
  %29 = load %struct.vie*, %struct.vie** %4, align 8
  %30 = getelementptr inbounds %struct.vie, %struct.vie* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 0
  %33 = and i32 %32, 7
  %34 = load %struct.vie*, %struct.vie** %4, align 8
  %35 = getelementptr inbounds %struct.vie, %struct.vie* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 3
  %38 = and i32 %37, 7
  %39 = load %struct.vie*, %struct.vie** %4, align 8
  %40 = getelementptr inbounds %struct.vie, %struct.vie* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vie*, %struct.vie** %4, align 8
  %42 = getelementptr inbounds %struct.vie, %struct.vie* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VIE_MOD_DIRECT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %147

47:                                               ; preds = %25
  %48 = load %struct.vie*, %struct.vie** %4, align 8
  %49 = getelementptr inbounds %struct.vie, %struct.vie* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.vie*, %struct.vie** %4, align 8
  %54 = getelementptr inbounds %struct.vie, %struct.vie* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VIE_RM_DISP32, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.vie*, %struct.vie** %4, align 8
  %60 = getelementptr inbounds %struct.vie, %struct.vie* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VIE_MOD_DIRECT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.vie*, %struct.vie** %4, align 8
  %66 = getelementptr inbounds %struct.vie, %struct.vie* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VIE_RM_SIB, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %52
  br label %80

71:                                               ; preds = %64, %58
  %72 = load %struct.vie*, %struct.vie** %4, align 8
  %73 = getelementptr inbounds %struct.vie, %struct.vie* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 3
  %76 = load %struct.vie*, %struct.vie** %4, align 8
  %77 = getelementptr inbounds %struct.vie, %struct.vie* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %70
  %81 = load %struct.vie*, %struct.vie** %4, align 8
  %82 = getelementptr inbounds %struct.vie, %struct.vie* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 3
  %85 = load %struct.vie*, %struct.vie** %4, align 8
  %86 = getelementptr inbounds %struct.vie, %struct.vie* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.vie*, %struct.vie** %4, align 8
  %90 = getelementptr inbounds %struct.vie, %struct.vie* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VIE_MOD_DIRECT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %80
  %95 = load %struct.vie*, %struct.vie** %4, align 8
  %96 = getelementptr inbounds %struct.vie, %struct.vie* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @VIE_RM_SIB, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %144

101:                                              ; preds = %94, %80
  %102 = load i64*, i64** @gpr_map, align 8
  %103 = load %struct.vie*, %struct.vie** %4, align 8
  %104 = getelementptr inbounds %struct.vie, %struct.vie* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.vie*, %struct.vie** %4, align 8
  %111 = getelementptr inbounds %struct.vie, %struct.vie* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.vie*, %struct.vie** %4, align 8
  %113 = getelementptr inbounds %struct.vie, %struct.vie* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %143 [
    i32 128, label %115
    i32 129, label %118
    i32 130, label %121
  ]

115:                                              ; preds = %101
  %116 = load %struct.vie*, %struct.vie** %4, align 8
  %117 = getelementptr inbounds %struct.vie, %struct.vie* %116, i32 0, i32 6
  store i32 1, i32* %117, align 4
  br label %143

118:                                              ; preds = %101
  %119 = load %struct.vie*, %struct.vie** %4, align 8
  %120 = getelementptr inbounds %struct.vie, %struct.vie* %119, i32 0, i32 6
  store i32 4, i32* %120, align 4
  br label %143

121:                                              ; preds = %101
  %122 = load %struct.vie*, %struct.vie** %4, align 8
  %123 = getelementptr inbounds %struct.vie, %struct.vie* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @VIE_RM_DISP32, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load %struct.vie*, %struct.vie** %4, align 8
  %129 = getelementptr inbounds %struct.vie, %struct.vie* %128, i32 0, i32 6
  store i32 4, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @CPU_MODE_64BIT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %135 = load %struct.vie*, %struct.vie** %4, align 8
  %136 = getelementptr inbounds %struct.vie, %struct.vie* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  br label %141

137:                                              ; preds = %127
  %138 = load i32, i32* @VM_REG_LAST, align 4
  %139 = load %struct.vie*, %struct.vie** %4, align 8
  %140 = getelementptr inbounds %struct.vie, %struct.vie* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %101, %142, %118, %115
  br label %144

144:                                              ; preds = %143, %100
  %145 = load %struct.vie*, %struct.vie** %4, align 8
  %146 = call i32 @vie_advance(%struct.vie* %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %144, %46, %24, %19, %14
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @vie_peek(%struct.vie*, i32*) #1

declare dso_local i32 @vie_advance(%struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
