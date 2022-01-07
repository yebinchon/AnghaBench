; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_needfollow.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_needfollow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @needfollow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needfollow(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %4

4:                                                ; preds = %13, %10, %1
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 137, label %8
    i32 129, label %8
    i32 141, label %8
    i32 135, label %8
    i32 128, label %8
    i32 142, label %8
    i32 133, label %8
    i32 131, label %8
    i32 134, label %8
    i32 139, label %8
    i32 140, label %8
    i32 136, label %9
    i32 132, label %9
    i32 138, label %10
    i32 130, label %13
  ]

8:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i32 0, i32* %2, align 4
  br label %18

9:                                                ; preds = %4, %4
  store i32 1, i32* %2, align 4
  br label %18

10:                                               ; preds = %4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call %struct.TYPE_7__* @sib1(%struct.TYPE_7__* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  br label %4

13:                                               ; preds = %4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call %struct.TYPE_7__* @sib2(%struct.TYPE_7__* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %3, align 8
  br label %4

16:                                               ; preds = %4
  %17 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %9, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.TYPE_7__* @sib1(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @sib2(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
