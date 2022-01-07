; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtFreeVirtualMemory.c_Test_NtFreeVirtualMemory_Parameters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtFreeVirtualMemory.c_Test_NtFreeVirtualMemory_Parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_INVALID_PARAMETER_4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"NtFreeVirtualMemory returned status : 0x%08lx\0A\00", align 1
@MEM_DECOMMIT = common dso_local global i64 0, align 8
@MEM_RELEASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_NtFreeVirtualMemory_Parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_NtFreeVirtualMemory_Parameters() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %35, %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @MEM_DECOMMIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @MEM_RELEASE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %14
  br label %35

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 %27)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %26, %25
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i64, i64* @MEM_DECOMMIT, align 8
  %40 = load i64, i64* @MEM_RELEASE, align 8
  %41 = or i64 %39, %40
  %42 = xor i64 %41, -1
  %43 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 %42)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* @MEM_DECOMMIT, align 8
  %51 = xor i64 %50, -1
  %52 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 %51)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* @MEM_RELEASE, align 8
  %60 = xor i64 %59, -1
  %61 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 %60)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %1, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 -1)
  store i64 %68, i64* %1, align 8
  %69 = load i64, i64* %1, align 8
  %70 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %1, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* @MEM_DECOMMIT, align 8
  %76 = load i64, i64* @MEM_RELEASE, align 8
  %77 = or i64 %75, %76
  %78 = call i64 @NtFreeVirtualMemory(i32* null, i32* null, i32* null, i64 %77)
  store i64 %78, i64* %1, align 8
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* @STATUS_INVALID_PARAMETER_4, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %83)
  ret void
}

declare dso_local i64 @NtFreeVirtualMemory(i32*, i32*, i32*, i64) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
