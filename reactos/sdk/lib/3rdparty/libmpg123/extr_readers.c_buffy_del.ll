; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_buffy_del.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_buffy_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffy = type { %struct.buffy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffy*)* @buffy_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffy_del(%struct.buffy* %0) #0 {
  %2 = alloca %struct.buffy*, align 8
  store %struct.buffy* %0, %struct.buffy** %2, align 8
  %3 = load %struct.buffy*, %struct.buffy** %2, align 8
  %4 = icmp ne %struct.buffy* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.buffy*, %struct.buffy** %2, align 8
  %7 = getelementptr inbounds %struct.buffy, %struct.buffy* %6, i32 0, i32 0
  %8 = load %struct.buffy*, %struct.buffy** %7, align 8
  %9 = call i32 @free(%struct.buffy* %8)
  %10 = load %struct.buffy*, %struct.buffy** %2, align 8
  %11 = call i32 @free(%struct.buffy* %10)
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @free(%struct.buffy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
