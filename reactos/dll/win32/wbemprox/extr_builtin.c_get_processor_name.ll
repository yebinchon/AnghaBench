; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_processor_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_processor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @get_processor_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_processor_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  store i32* %0, i32** %2, align 8
  %4 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %6 = call i32 @do_cpuid(i32 -2147483648, i32* %5)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp uge i32 %8, -2147483644
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %12 = call i32 @do_cpuid(i32 -2147483646, i32* %11)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @regs_to_str(i32* %13, i32 16, i32* %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %17 = call i32 @do_cpuid(i32 -2147483645, i32* %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  %21 = call i32 @regs_to_str(i32* %18, i32 16, i32* %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %23 = call i32 @do_cpuid(i32 -2147483644, i32* %22)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 32
  %27 = call i32 @regs_to_str(i32* %24, i32 16, i32* %26)
  br label %28

28:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @do_cpuid(i32, i32*) #2

declare dso_local i32 @regs_to_str(i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
