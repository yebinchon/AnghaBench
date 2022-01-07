; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_deliver_intr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_deliver_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }

@IOART_DELFIXED = common dso_local global i32 0, align 4
@IOART_DELLOPRI = common dso_local global i32 0, align 4
@IOART_DELEXINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vlapic intr invalid delmode %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_deliver_intr(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @IOART_DELFIXED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @IOART_DELLOPRI, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @IOART_DELEXINT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.vm*, %struct.vm** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @VM_CTR1(%struct.vm* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %63

31:                                               ; preds = %23, %19, %6
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @IOART_DELLOPRI, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load %struct.vm*, %struct.vm** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @vlapic_calcdest(%struct.vm* %36, i32* %15, i32 %37, i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %62, %31
  %42 = call i32 @CPU_FFS(i32* %15)
  store i32 %42, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @CPU_CLR(i32 %47, i32* %15)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @IOART_DELEXINT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.vm*, %struct.vm** %7, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @vm_inject_extint(%struct.vm* %53, i32 %54)
  br label %62

56:                                               ; preds = %44
  %57 = load %struct.vm*, %struct.vm** %7, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @lapic_set_intr(%struct.vm* %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %52
  br label %41

63:                                               ; preds = %27, %41
  ret void
}

declare dso_local i32 @VM_CTR1(%struct.vm*, i8*, i32) #1

declare dso_local i32 @vlapic_calcdest(%struct.vm*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local i32 @vm_inject_extint(%struct.vm*, i32) #1

declare dso_local i32 @lapic_set_intr(%struct.vm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
