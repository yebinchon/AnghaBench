; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Plink_copy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Plink_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plink = type { %struct.plink* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Plink_copy(%struct.plink** %0, %struct.plink* %1) #0 {
  %3 = alloca %struct.plink**, align 8
  %4 = alloca %struct.plink*, align 8
  %5 = alloca %struct.plink*, align 8
  store %struct.plink** %0, %struct.plink*** %3, align 8
  store %struct.plink* %1, %struct.plink** %4, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load %struct.plink*, %struct.plink** %4, align 8
  %8 = icmp ne %struct.plink* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.plink*, %struct.plink** %4, align 8
  %11 = getelementptr inbounds %struct.plink, %struct.plink* %10, i32 0, i32 0
  %12 = load %struct.plink*, %struct.plink** %11, align 8
  store %struct.plink* %12, %struct.plink** %5, align 8
  %13 = load %struct.plink**, %struct.plink*** %3, align 8
  %14 = load %struct.plink*, %struct.plink** %13, align 8
  %15 = load %struct.plink*, %struct.plink** %4, align 8
  %16 = getelementptr inbounds %struct.plink, %struct.plink* %15, i32 0, i32 0
  store %struct.plink* %14, %struct.plink** %16, align 8
  %17 = load %struct.plink*, %struct.plink** %4, align 8
  %18 = load %struct.plink**, %struct.plink*** %3, align 8
  store %struct.plink* %17, %struct.plink** %18, align 8
  %19 = load %struct.plink*, %struct.plink** %5, align 8
  store %struct.plink* %19, %struct.plink** %4, align 8
  br label %6

20:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
