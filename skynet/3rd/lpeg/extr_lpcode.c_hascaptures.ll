; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_hascaptures.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_hascaptures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@numsiblings = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hascaptures(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  br label %4

4:                                                ; preds = %34, %25, %12, %1
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %17 [
    i32 131, label %8
    i32 128, label %8
    i32 132, label %9
    i32 129, label %12
    i32 130, label %15
  ]

8:                                                ; preds = %4, %4
  store i32 1, i32* %2, align 4
  br label %48

9:                                                ; preds = %4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @callrecursive(%struct.TYPE_9__* %10, i32 (%struct.TYPE_9__*)* @hascaptures, i32 0)
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %3, align 8
  br label %4

15:                                               ; preds = %4
  %16 = call i32 @assert(i32 0)
  br label %17

17:                                               ; preds = %4, %15
  %18 = load i32*, i32** @numsiblings, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %37 [
    i32 1, label %25
    i32 2, label %28
  ]

25:                                               ; preds = %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %3, align 8
  br label %4

28:                                               ; preds = %17
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %29)
  %31 = call i32 @hascaptures(%struct.TYPE_9__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %48

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call %struct.TYPE_9__* @sib2(%struct.TYPE_9__* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %3, align 8
  br label %4

37:                                               ; preds = %17
  %38 = load i32*, i32** @numsiblings, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %37, %33, %9, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @callrecursive(%struct.TYPE_9__*, i32 (%struct.TYPE_9__*)*, i32) #1

declare dso_local %struct.TYPE_9__* @sib1(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @sib2(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
