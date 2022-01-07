; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_tss32_save.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_tss32_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_task_switch = type { i64 }
%struct.tss32 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.iovec = type { i32 }

@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RCX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@TSR_IRET = common dso_local global i64 0, align 8
@PSL_NT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.vm_task_switch*, i8*, %struct.tss32*, %struct.iovec*)* @tss32_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tss32_save(i32 %0, %struct.vm_task_switch* %1, i8* %2, %struct.tss32* %3, %struct.iovec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_task_switch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tss32*, align 8
  %10 = alloca %struct.iovec*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.vm_task_switch* %1, %struct.vm_task_switch** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.tss32* %3, %struct.tss32** %9, align 8
  store %struct.iovec* %4, %struct.iovec** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %13 = call i64 @GETREG(i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.tss32*, %struct.tss32** %9, align 8
  %16 = getelementptr inbounds %struct.tss32, %struct.tss32* %15, i32 0, i32 15
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VM_REG_GUEST_RCX, align 4
  %19 = call i64 @GETREG(i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.tss32*, %struct.tss32** %9, align 8
  %22 = getelementptr inbounds %struct.tss32, %struct.tss32* %21, i32 0, i32 14
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %25 = call i64 @GETREG(i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.tss32*, %struct.tss32** %9, align 8
  %28 = getelementptr inbounds %struct.tss32, %struct.tss32* %27, i32 0, i32 13
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %31 = call i64 @GETREG(i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.tss32*, %struct.tss32** %9, align 8
  %34 = getelementptr inbounds %struct.tss32, %struct.tss32* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %37 = call i64 @GETREG(i32 %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.tss32*, %struct.tss32** %9, align 8
  %40 = getelementptr inbounds %struct.tss32, %struct.tss32* %39, i32 0, i32 11
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %43 = call i64 @GETREG(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.tss32*, %struct.tss32** %9, align 8
  %46 = getelementptr inbounds %struct.tss32, %struct.tss32* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %49 = call i64 @GETREG(i32 %47, i32 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.tss32*, %struct.tss32** %9, align 8
  %52 = getelementptr inbounds %struct.tss32, %struct.tss32* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %55 = call i64 @GETREG(i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.tss32*, %struct.tss32** %9, align 8
  %58 = getelementptr inbounds %struct.tss32, %struct.tss32* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %61 = call i64 @GETREG(i32 %59, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.tss32*, %struct.tss32** %9, align 8
  %64 = getelementptr inbounds %struct.tss32, %struct.tss32* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %67 = call i64 @GETREG(i32 %65, i32 %66)
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.tss32*, %struct.tss32** %9, align 8
  %70 = getelementptr inbounds %struct.tss32, %struct.tss32* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %73 = call i64 @GETREG(i32 %71, i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.tss32*, %struct.tss32** %9, align 8
  %76 = getelementptr inbounds %struct.tss32, %struct.tss32* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %79 = call i64 @GETREG(i32 %77, i32 %78)
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.tss32*, %struct.tss32** %9, align 8
  %82 = getelementptr inbounds %struct.tss32, %struct.tss32* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %85 = call i64 @GETREG(i32 %83, i32 %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.tss32*, %struct.tss32** %9, align 8
  %88 = getelementptr inbounds %struct.tss32, %struct.tss32* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %91 = call i64 @GETREG(i32 %89, i32 %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.tss32*, %struct.tss32** %9, align 8
  %94 = getelementptr inbounds %struct.tss32, %struct.tss32* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %97 = call i64 @GETREG(i32 %95, i32 %96)
  %98 = inttoptr i64 %97 to i8*
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.tss32*, %struct.tss32** %9, align 8
  %101 = getelementptr inbounds %struct.tss32, %struct.tss32* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.vm_task_switch*, %struct.vm_task_switch** %7, align 8
  %103 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TSR_IRET, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %5
  %108 = load i64, i64* @PSL_NT, align 8
  %109 = trunc i64 %108 to i32
  %110 = xor i32 %109, -1
  %111 = load %struct.tss32*, %struct.tss32** %9, align 8
  %112 = getelementptr inbounds %struct.tss32, %struct.tss32* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %107, %5
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.tss32*, %struct.tss32** %9, align 8
  %118 = getelementptr inbounds %struct.tss32, %struct.tss32* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.tss32*, %struct.tss32** %9, align 8
  %120 = load %struct.iovec*, %struct.iovec** %10, align 8
  %121 = call i32 @xh_vm_copyout(%struct.tss32* %119, %struct.iovec* %120, i32 128)
  ret void
}

declare dso_local i64 @GETREG(i32, i32) #1

declare dso_local i32 @xh_vm_copyout(%struct.tss32*, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
