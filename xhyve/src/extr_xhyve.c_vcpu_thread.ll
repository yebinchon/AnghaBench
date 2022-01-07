; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vcpu_thread.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vcpu_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.mt_vmm_info = type { i32 }

@BSP = common dso_local global i32 0, align 4
@vmexit = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vcpu_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vcpu_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mt_vmm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mt_vmm_info*
  store %struct.mt_vmm_info* %8, %struct.mt_vmm_info** %3, align 8
  %9 = load %struct.mt_vmm_info*, %struct.mt_vmm_info** %3, align 8
  %10 = getelementptr inbounds %struct.mt_vmm_info, %struct.mt_vmm_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 65520, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @xh_vcpu_create(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @vcpu_set_capabilities(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @xh_vcpu_reset(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BSP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 (...) @fw_func()
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmexit, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @spinup_ap_realmode(i32 %38, i32* %4)
  br label %40

40:                                               ; preds = %31, %29
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmexit, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmexit, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmexit, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @vcpu_loop(i32 %52, i32 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @xh_vcpu_create(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vcpu_set_capabilities(i32) #1

declare dso_local i32 @xh_vcpu_reset(i32) #1

declare dso_local i32 @fw_func(...) #1

declare dso_local i32 @spinup_ap_realmode(i32, i32*) #1

declare dso_local i32 @vcpu_loop(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
