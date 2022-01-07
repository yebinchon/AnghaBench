; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_emulate_pop.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_emulate_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32 }
%struct.vm_guest_paging = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*)* @emulate_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_pop(i8* %0, i32 %1, i32 %2, %struct.vie* %3, %struct.vm_guest_paging* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vie*, align 8
  %14 = alloca %struct.vm_guest_paging*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.vie* %3, %struct.vie** %13, align 8
  store %struct.vm_guest_paging* %4, %struct.vm_guest_paging** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load %struct.vie*, %struct.vie** %13, align 8
  %20 = getelementptr inbounds %struct.vie, %struct.vie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %9, align 4
  br label %37

26:                                               ; preds = %8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.vie*, %struct.vie** %13, align 8
  %31 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i8*, i8** %17, align 8
  %35 = call i32 @emulate_stack_op(i8* %27, i32 %28, i32 %29, %struct.vie* %30, %struct.vm_guest_paging* %31, i32 %32, i32 %33, i8* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %26, %24
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @emulate_stack_op(i8*, i32, i32, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
