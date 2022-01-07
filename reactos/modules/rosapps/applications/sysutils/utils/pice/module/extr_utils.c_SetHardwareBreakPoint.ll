; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_SetHardwareBreakPoint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_SetHardwareBreakPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"SetHardwareBreakPoint(%x,DR%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mask = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetHardwareBreakPoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 768, i32* %5, align 4
  store i32 3, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DPRINT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 2
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @DPRINT(i32 %17)
  call void asm sideeffect "\0A\09 \09\09xorl %eax,%eax\0A\09 \09\09mov %eax,%dr6\0A\09         mov %dr7,%eax\0A\09         orl $0,%eax\0A\09 \09\09mov %eax,%dr7\0A\09 \09", "*m,~{eax},~{dirflag},~{fpsr},~{flags}"(i32* %5) #2, !srcloc !2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
  ]

20:                                               ; preds = %2
  call void asm sideeffect "\0A\09         \09\09mov $0,%eax\0A\09 \09\09        mov %eax,%dr0\0A\09              ", "*m,~{eax},~{dirflag},~{fpsr},~{flags}"(i32* %3) #2, !srcloc !3
  br label %24

21:                                               ; preds = %2
  call void asm sideeffect "\0A\09         \09\09mov $0,%eax\0A\09 \09\09        mov %eax,%dr1\0A\09              ", "*m,~{eax},~{dirflag},~{fpsr},~{flags}"(i32* %3) #2, !srcloc !4
  br label %24

22:                                               ; preds = %2
  call void asm sideeffect "\0A\09         \09\09mov $0,%eax\0A\09 \09\09        mov %eax,%dr2\0A\09              ", "*m,~{eax},~{dirflag},~{fpsr},~{flags}"(i32* %3) #2, !srcloc !5
  br label %24

23:                                               ; preds = %2
  call void asm sideeffect "\0A\09         \09\09mov $0,%eax\0A\09 \09\09        mov %eax,%dr3\0A\09              ", "*m,~{eax},~{dirflag},~{fpsr},~{flags}"(i32* %3) #2, !srcloc !6
  br label %24

24:                                               ; preds = %2, %23, %22, %21, %20
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 482, i32 485, i32 508, i32 530, i32 558, i32 583, i32 605}
!3 = !{i32 730, i32 733, i32 760, i32 790}
!4 = !{i32 960, i32 963, i32 990, i32 1020}
!5 = !{i32 1190, i32 1193, i32 1220, i32 1250}
!6 = !{i32 1420, i32 1423, i32 1450, i32 1480}
