; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_msix_tread.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_msix_tread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@MSIX_TABLE_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_emul_msix_tread(%struct.pci_devinst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %83

22:                                               ; preds = %17, %14, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = srem i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %38 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %32
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %44 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %73

61:                                               ; preds = %42
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %57
  br label %81

74:                                               ; preds = %32
  %75 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @pci_valid_pba_offset(%struct.pci_devinst* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %74
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %30, %20
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @pci_valid_pba_offset(%struct.pci_devinst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
