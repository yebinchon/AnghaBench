; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mptbl.c_mpt_build_ioint_entries.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mptbl.c_mpt_build_ioint_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, i32 }

@MPCT_ENTRY_INT = common dso_local global i32 0, align 4
@INTENTRY_TYPE_EXTINT = common dso_local global i8* null, align 8
@INTENTRY_TYPE_INT = common dso_local global i8* null, align 8
@INTENTRY_FLAGS_POLARITY_ACTIVELO = common dso_local global i32 0, align 4
@INTENTRY_FLAGS_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@PCI_BUSMAX = common dso_local global i32 0, align 4
@mpt_generate_pci_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @mpt_build_ioint_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_build_ioint_entries(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %63, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %66

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = call i32 @memset(%struct.TYPE_5__* %11, i32 0, i32 48)
  %13 = load i32, i32* @MPCT_ENTRY_INT, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %50 [
    i32 0, label %29
    i32 2, label %33
    i32 128, label %39
  ]

29:                                               ; preds = %10
  %30 = load i8*, i8** @INTENTRY_TYPE_EXTINT, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %60

33:                                               ; preds = %10
  %34 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %60

39:                                               ; preds = %10
  %40 = load i32, i32* @INTENTRY_FLAGS_POLARITY_ACTIVELO, align 4
  %41 = load i32, i32* @INTENTRY_FLAGS_TRIGGER_LEVEL, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 128, i32* %49, align 4
  br label %60

50:                                               ; preds = %10
  %51 = load i8*, i8** @INTENTRY_TYPE_INT, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %39, %33, %29
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %3, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %7

66:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %75, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCI_BUSMAX, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @mpt_generate_pci_int, align 4
  %74 = call i32 @pci_walk_lintr(i32 %72, i32 %73, %struct.TYPE_5__** %3)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %67

78:                                               ; preds = %67
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pci_walk_lintr(i32, i32, %struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
