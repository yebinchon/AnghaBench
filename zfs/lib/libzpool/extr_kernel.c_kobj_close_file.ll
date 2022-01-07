; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_kobj_close_file.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_kobj_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._buf = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobj_close_file(%struct._buf* %0) #0 {
  %2 = alloca %struct._buf*, align 8
  store %struct._buf* %0, %struct._buf** %2, align 8
  %3 = load %struct._buf*, %struct._buf** %2, align 8
  %4 = getelementptr inbounds %struct._buf, %struct._buf* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = call i32 @vn_close(i32* %6)
  %8 = load %struct._buf*, %struct._buf** %2, align 8
  %9 = call i32 @umem_free(%struct._buf* %8, i32 8)
  ret void
}

declare dso_local i32 @vn_close(i32*) #1

declare dso_local i32 @umem_free(%struct._buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
