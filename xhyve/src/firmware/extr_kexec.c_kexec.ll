; ModuleID = '/home/carl/AnghaBench/xhyve/src/firmware/extr_kexec.c_kexec.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/firmware/extr_kexec.c_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@lowmem = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"kexec: failed to load kernel %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"kexec: failed to load initrd %s\0A\00", align 1
@BASE_GDT = common dso_local global i64 0, align 8
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@BASE_ZEROPAGE = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@kernel = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexec() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32 (...) @xh_vm_get_lowmem_size()
  %4 = call i8* @xh_vm_map_gpa(i32 0, i32 %3)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lowmem, i32 0, i32 0), align 8
  %7 = call i32 (...) @xh_vm_get_lowmem_size()
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lowmem, i32 0, i32 1), align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  br label %14

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i8* [ %12, %11 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %13 ]
  %16 = call i64 @kexec_load_kernel(i8* %8, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %14
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  %28 = call i64 @kexec_load_ramdisk(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  %33 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %26, %23
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lowmem, i32 0, i32 0), align 8
  %37 = load i64, i64* @BASE_GDT, align 8
  %38 = add i64 %36, %37
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %1, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 65535, i32* %45, align 4
  %46 = load i32*, i32** %1, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 65535, i32* %47, align 4
  %48 = call i32 @xh_vcpu_reset(i32 0)
  %49 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  %50 = load i64, i64* @BASE_GDT, align 8
  %51 = call i32 @xh_vm_set_desc(i32 0, i32 %49, i64 %50, i32 31, i32 0)
  %52 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %53 = call i32 @xh_vm_set_desc(i32 0, i32 %52, i64 0, i32 -1, i32 49307)
  %54 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %55 = call i32 @xh_vm_set_desc(i32 0, i32 %54, i64 0, i32 -1, i32 49299)
  %56 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %57 = call i32 @xh_vm_set_desc(i32 0, i32 %56, i64 0, i32 -1, i32 49299)
  %58 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %59 = call i32 @xh_vm_set_desc(i32 0, i32 %58, i64 0, i32 -1, i32 49299)
  %60 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %61 = call i32 @xh_vm_set_register(i32 0, i32 %60, i32 16)
  %62 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %63 = call i32 @xh_vm_set_register(i32 0, i32 %62, i32 24)
  %64 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %65 = call i32 @xh_vm_set_register(i32 0, i32 %64, i32 24)
  %66 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %67 = call i32 @xh_vm_set_register(i32 0, i32 %66, i32 24)
  %68 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %69 = call i32 @xh_vm_set_register(i32 0, i32 %68, i32 33)
  %70 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %71 = call i32 @xh_vm_set_register(i32 0, i32 %70, i32 0)
  %72 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %73 = call i32 @xh_vm_set_register(i32 0, i32 %72, i32 0)
  %74 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %75 = call i32 @xh_vm_set_register(i32 0, i32 %74, i32 0)
  %76 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %77 = call i32 @xh_vm_set_register(i32 0, i32 %76, i32 2)
  %78 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %79 = load i32, i32* @BASE_ZEROPAGE, align 4
  %80 = call i32 @xh_vm_set_register(i32 0, i32 %78, i32 %79)
  %81 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel, i32 0, i32 0), align 4
  %83 = call i32 @xh_vm_set_register(i32 0, i32 %81, i32 %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel, i32 0, i32 0), align 4
  ret i32 %84
}

declare dso_local i8* @xh_vm_map_gpa(i32, i32) #1

declare dso_local i32 @xh_vm_get_lowmem_size(...) #1

declare dso_local i64 @kexec_load_kernel(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @kexec_load_ramdisk(i8*) #1

declare dso_local i32 @xh_vcpu_reset(i32) #1

declare dso_local i32 @xh_vm_set_desc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @xh_vm_set_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
