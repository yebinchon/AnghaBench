; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_get_memobj.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_get_memobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_get_memobj(%struct.vm* %0, i64 %1, i64 %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.vm* %0, %struct.vm** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %69, %5
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.vm*, %struct.vm** %7, align 8
  %19 = getelementptr inbounds %struct.vm, %struct.vm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %16
  %23 = load %struct.vm*, %struct.vm** %7, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %69

33:                                               ; preds = %22
  %34 = load %struct.vm*, %struct.vm** %7, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.vm*, %struct.vm** %7, align 8
  %43 = getelementptr inbounds %struct.vm, %struct.vm* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %33
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %57, %58
  %60 = icmp ule i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %14, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64*, i64** %10, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i8**, i8*** %11, align 8
  store i8* %66, i8** %67, align 8
  store i32 0, i32* %6, align 4
  br label %74

68:                                               ; preds = %53, %33
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %61
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
