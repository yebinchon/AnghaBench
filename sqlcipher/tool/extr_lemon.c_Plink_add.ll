; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Plink_add.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Plink_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plink = type { %struct.config*, %struct.plink* }
%struct.config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Plink_add(%struct.plink** %0, %struct.config* %1) #0 {
  %3 = alloca %struct.plink**, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.plink*, align 8
  store %struct.plink** %0, %struct.plink*** %3, align 8
  store %struct.config* %1, %struct.config** %4, align 8
  %6 = call %struct.plink* (...) @Plink_new()
  store %struct.plink* %6, %struct.plink** %5, align 8
  %7 = load %struct.plink**, %struct.plink*** %3, align 8
  %8 = load %struct.plink*, %struct.plink** %7, align 8
  %9 = load %struct.plink*, %struct.plink** %5, align 8
  %10 = getelementptr inbounds %struct.plink, %struct.plink* %9, i32 0, i32 1
  store %struct.plink* %8, %struct.plink** %10, align 8
  %11 = load %struct.plink*, %struct.plink** %5, align 8
  %12 = load %struct.plink**, %struct.plink*** %3, align 8
  store %struct.plink* %11, %struct.plink** %12, align 8
  %13 = load %struct.config*, %struct.config** %4, align 8
  %14 = load %struct.plink*, %struct.plink** %5, align 8
  %15 = getelementptr inbounds %struct.plink, %struct.plink* %14, i32 0, i32 0
  store %struct.config* %13, %struct.config** %15, align 8
  ret void
}

declare dso_local %struct.plink* @Plink_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
