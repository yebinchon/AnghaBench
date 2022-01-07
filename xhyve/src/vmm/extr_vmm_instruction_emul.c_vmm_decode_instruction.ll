; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_vmm_decode_instruction.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_vmm_decode_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vie = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VIE_OP_F_NO_GLA_VERIFICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmm_decode_instruction(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.vie* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vie*, align 8
  store %struct.vm* %0, %struct.vm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.vie* %5, %struct.vie** %13, align 8
  %14 = load %struct.vie*, %struct.vie** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i64 @decode_prefixes(%struct.vie* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %76

20:                                               ; preds = %6
  %21 = load %struct.vie*, %struct.vie** %13, align 8
  %22 = call i64 @decode_opcode(%struct.vie* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %7, align 4
  br label %76

25:                                               ; preds = %20
  %26 = load %struct.vie*, %struct.vie** %13, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @decode_modrm(%struct.vie* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %76

31:                                               ; preds = %25
  %32 = load %struct.vie*, %struct.vie** %13, align 8
  %33 = call i64 @decode_sib(%struct.vie* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %76

36:                                               ; preds = %31
  %37 = load %struct.vie*, %struct.vie** %13, align 8
  %38 = call i64 @decode_displacement(%struct.vie* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %76

41:                                               ; preds = %36
  %42 = load %struct.vie*, %struct.vie** %13, align 8
  %43 = call i64 @decode_immediate(%struct.vie* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %7, align 4
  br label %76

46:                                               ; preds = %41
  %47 = load %struct.vie*, %struct.vie** %13, align 8
  %48 = call i64 @decode_moffset(%struct.vie* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  br label %76

51:                                               ; preds = %46
  %52 = load %struct.vie*, %struct.vie** %13, align 8
  %53 = call i64 @verify_inst_length(%struct.vie* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %76

56:                                               ; preds = %51
  %57 = load %struct.vie*, %struct.vie** %13, align 8
  %58 = getelementptr inbounds %struct.vie, %struct.vie* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @VIE_OP_F_NO_GLA_VERIFICATION, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.vm*, %struct.vm** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.vie*, %struct.vie** %13, align 8
  %69 = call i64 @verify_gla(%struct.vm* %65, i32 %66, i32 %67, %struct.vie* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 -1, i32* %7, align 4
  br label %76

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.vie*, %struct.vie** %13, align 8
  %75 = getelementptr inbounds %struct.vie, %struct.vie* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %71, %55, %50, %45, %40, %35, %30, %24, %19
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @decode_prefixes(%struct.vie*, i32, i32) #1

declare dso_local i64 @decode_opcode(%struct.vie*) #1

declare dso_local i64 @decode_modrm(%struct.vie*, i32) #1

declare dso_local i64 @decode_sib(%struct.vie*) #1

declare dso_local i64 @decode_displacement(%struct.vie*) #1

declare dso_local i64 @decode_immediate(%struct.vie*) #1

declare dso_local i64 @decode_moffset(%struct.vie*) #1

declare dso_local i64 @verify_inst_length(%struct.vie*) #1

declare dso_local i64 @verify_gla(%struct.vm*, i32, i32, %struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
