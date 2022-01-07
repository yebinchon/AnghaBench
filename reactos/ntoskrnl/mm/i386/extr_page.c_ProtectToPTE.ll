; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/mm/i386/extr_page.c_ProtectToPTE.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/mm/i386/extr_page.c_ProtectToPTE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_NOACCESS = common dso_local global i32 0, align 4
@PAGE_GUARD = common dso_local global i32 0, align 4
@PAGE_IS_WRITABLE = common dso_local global i32 0, align 4
@PA_PRESENT = common dso_local global i32 0, align 4
@PA_READWRITE = common dso_local global i32 0, align 4
@PAGE_IS_READABLE = common dso_local global i32 0, align 4
@PAGE_IS_EXECUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown main protection type.\0A\00", align 1
@MEMORY_MANAGEMENT = common dso_local global i32 0, align 4
@PAGE_SYSTEM = common dso_local global i32 0, align 4
@PA_USER = common dso_local global i32 0, align 4
@PAGE_NOCACHE = common dso_local global i32 0, align 4
@PA_CD = common dso_local global i32 0, align 4
@PAGE_WRITETHROUGH = common dso_local global i32 0, align 4
@PA_WT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ProtectToPTE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProtectToPTE(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PAGE_NOACCESS, align 4
  %6 = load i32, i32* @PAGE_GUARD, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @PAGE_IS_WRITABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @PA_PRESENT, align 4
  %18 = load i32, i32* @PA_READWRITE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @PAGE_IS_READABLE, align 4
  %23 = load i32, i32* @PAGE_IS_EXECUTABLE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @PA_PRESENT, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %20
  %30 = call i32 @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @MEMORY_MANAGEMENT, align 4
  %32 = call i32 @KeBugCheck(i32 %31)
  br label %33

33:                                               ; preds = %29, %27
  br label %34

34:                                               ; preds = %33, %16
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @PAGE_SYSTEM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PA_USER, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @PAGE_NOCACHE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @PA_CD, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @PAGE_WRITETHROUGH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @PA_WT, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @KeBugCheck(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
