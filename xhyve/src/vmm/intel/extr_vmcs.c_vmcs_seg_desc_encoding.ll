; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmcs.c_vmcs_seg_desc_encoding.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmcs.c_vmcs_seg_desc_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMCS_GUEST_ES_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_ES_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_ES_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_CS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_SS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_SS_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_SS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_DS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_DS_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_DS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_FS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_FS_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_FS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_GS_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_GS_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_GS_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_TR_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_TR_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_TR_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_LDTR_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_LDTR_LIMIT = common dso_local global i32 0, align 4
@VMCS_GUEST_LDTR_ACCESS_RIGHTS = common dso_local global i32 0, align 4
@VMCS_GUEST_IDTR_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_IDTR_LIMIT = common dso_local global i32 0, align 4
@VMCS_INVALID_ENCODING = common dso_local global i32 0, align 4
@VMCS_GUEST_GDTR_BASE = common dso_local global i32 0, align 4
@VMCS_GUEST_GDTR_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @vmcs_seg_desc_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmcs_seg_desc_encoding(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %81 [
    i32 135, label %11
    i32 137, label %18
    i32 129, label %25
    i32 136, label %32
    i32 134, label %39
    i32 132, label %46
    i32 128, label %53
    i32 130, label %60
    i32 131, label %67
    i32 133, label %74
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @VMCS_GUEST_ES_BASE, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @VMCS_GUEST_ES_LIMIT, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @VMCS_GUEST_ES_ACCESS_RIGHTS, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  br label %83

18:                                               ; preds = %4
  %19 = load i32, i32* @VMCS_GUEST_CS_BASE, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @VMCS_GUEST_CS_LIMIT, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @VMCS_GUEST_CS_ACCESS_RIGHTS, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  br label %83

25:                                               ; preds = %4
  %26 = load i32, i32* @VMCS_GUEST_SS_BASE, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @VMCS_GUEST_SS_LIMIT, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @VMCS_GUEST_SS_ACCESS_RIGHTS, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  br label %83

32:                                               ; preds = %4
  %33 = load i32, i32* @VMCS_GUEST_DS_BASE, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @VMCS_GUEST_DS_LIMIT, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @VMCS_GUEST_DS_ACCESS_RIGHTS, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %83

39:                                               ; preds = %4
  %40 = load i32, i32* @VMCS_GUEST_FS_BASE, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @VMCS_GUEST_FS_LIMIT, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @VMCS_GUEST_FS_ACCESS_RIGHTS, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %83

46:                                               ; preds = %4
  %47 = load i32, i32* @VMCS_GUEST_GS_BASE, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @VMCS_GUEST_GS_LIMIT, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @VMCS_GUEST_GS_ACCESS_RIGHTS, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %83

53:                                               ; preds = %4
  %54 = load i32, i32* @VMCS_GUEST_TR_BASE, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @VMCS_GUEST_TR_LIMIT, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @VMCS_GUEST_TR_ACCESS_RIGHTS, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %83

60:                                               ; preds = %4
  %61 = load i32, i32* @VMCS_GUEST_LDTR_BASE, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @VMCS_GUEST_LDTR_LIMIT, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @VMCS_GUEST_LDTR_ACCESS_RIGHTS, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %83

67:                                               ; preds = %4
  %68 = load i32, i32* @VMCS_GUEST_IDTR_BASE, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @VMCS_GUEST_IDTR_LIMIT, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @VMCS_INVALID_ENCODING, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %83

74:                                               ; preds = %4
  %75 = load i32, i32* @VMCS_GUEST_GDTR_BASE, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @VMCS_GUEST_GDTR_LIMIT, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @VMCS_INVALID_ENCODING, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  br label %83

81:                                               ; preds = %4
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %5, align 4
  br label %84

83:                                               ; preds = %74, %67, %60, %53, %46, %39, %32, %25, %18, %11
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %81
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
