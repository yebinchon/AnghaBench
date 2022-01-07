; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_checkloops.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_checkloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@TRep = common dso_local global i64 0, align 8
@TGrammar = common dso_local global i64 0, align 8
@numsiblings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @checkloops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkloops(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  br label %4

4:                                                ; preds = %39, %30, %1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TRep, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %11)
  %13 = call i64 @nullable(%struct.TYPE_8__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %52

16:                                               ; preds = %10, %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TGrammar, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %52

23:                                               ; preds = %16
  %24 = load i32*, i32** @numsiblings, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %42 [
    i32 1, label %30
    i32 2, label %33
  ]

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %3, align 8
  br label %4

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %34)
  %36 = call i32 @checkloops(%struct.TYPE_8__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call %struct.TYPE_8__* @sib2(%struct.TYPE_8__* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %3, align 8
  br label %4

42:                                               ; preds = %23
  %43 = load i32*, i32** @numsiblings, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %38, %22, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @nullable(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @sib1(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @sib2(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
