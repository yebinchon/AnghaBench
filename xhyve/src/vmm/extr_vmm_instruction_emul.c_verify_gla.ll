; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_verify_gla.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_verify_gla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vie = type { i32, i32, i32, i64, i64, i64 }

@VIE_INVALID_GLA = common dso_local global i32 0, align 4
@VM_REG_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"verify_gla: error %d getting base reg %d\0A\00", align 1
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"verify_gla: error %d getting index reg %d\0A\00", align 1
@size2mask = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [107 x i8] c"verify_gla mismatch: base(0x%0llx), scale(%d), index(0x%0llx), disp(0x%0llx), gla(0x%0llx), gla2(0x%0llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32, %struct.vie*)* @verify_gla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_gla(%struct.vm* %0, i32 %1, i32 %2, %struct.vie* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vie*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vie* %3, %struct.vie** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @VIE_INVALID_GLA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %113

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %19 = load %struct.vie*, %struct.vie** %9, align 8
  %20 = getelementptr inbounds %struct.vie, %struct.vie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VM_REG_LAST, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.vm*, %struct.vm** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.vie*, %struct.vie** %9, align 8
  %28 = getelementptr inbounds %struct.vie, %struct.vie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vm_get_register(%struct.vm* %25, i32 %26, i32 %29, i32* %11)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.vie*, %struct.vie** %9, align 8
  %36 = getelementptr inbounds %struct.vie, %struct.vie* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  store i32 -1, i32* %5, align 4
  br label %113

39:                                               ; preds = %24
  %40 = load %struct.vie*, %struct.vie** %9, align 8
  %41 = getelementptr inbounds %struct.vie, %struct.vie* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.vie*, %struct.vie** %9, align 8
  %47 = getelementptr inbounds %struct.vie, %struct.vie* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %53, %18
  store i32 0, i32* %12, align 4
  %55 = load %struct.vie*, %struct.vie** %9, align 8
  %56 = getelementptr inbounds %struct.vie, %struct.vie* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VM_REG_LAST, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load %struct.vm*, %struct.vm** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.vie*, %struct.vie** %9, align 8
  %64 = getelementptr inbounds %struct.vie, %struct.vie* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vm_get_register(%struct.vm* %61, i32 %62, i32 %65, i32* %12)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.vie*, %struct.vie** %9, align 8
  %72 = getelementptr inbounds %struct.vie, %struct.vie* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  store i32 -1, i32* %5, align 4
  br label %113

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.vie*, %struct.vie** %9, align 8
  %79 = getelementptr inbounds %struct.vie, %struct.vie* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %77, %82
  %84 = load %struct.vie*, %struct.vie** %9, align 8
  %85 = getelementptr inbounds %struct.vie, %struct.vie* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = add nsw i32 %83, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32*, i32** @size2mask, align 8
  %90 = load %struct.vie*, %struct.vie** %9, align 8
  %91 = getelementptr inbounds %struct.vie, %struct.vie* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %76
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.vie*, %struct.vie** %9, align 8
  %103 = getelementptr inbounds %struct.vie, %struct.vie* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.vie*, %struct.vie** %9, align 8
  %107 = getelementptr inbounds %struct.vie, %struct.vie* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104, i32 %105, i64 %108, i32 %109, i32 %110)
  store i32 -1, i32* %5, align 4
  br label %113

112:                                              ; preds = %76
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %100, %69, %33, %17
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @vm_get_register(%struct.vm*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
