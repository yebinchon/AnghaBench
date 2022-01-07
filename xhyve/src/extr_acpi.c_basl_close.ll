; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_close.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpi.c_basl_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basl_fio = type { i32, i32 }

@basl_keep_temps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.basl_fio*)* @basl_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basl_close(%struct.basl_fio* %0) #0 {
  %2 = alloca %struct.basl_fio*, align 8
  store %struct.basl_fio* %0, %struct.basl_fio** %2, align 8
  %3 = load i32, i32* @basl_keep_temps, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load %struct.basl_fio*, %struct.basl_fio** %2, align 8
  %7 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @unlink(i32 %8)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load %struct.basl_fio*, %struct.basl_fio** %2, align 8
  %12 = getelementptr inbounds %struct.basl_fio, %struct.basl_fio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fclose(i32 %13)
  ret void
}

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
