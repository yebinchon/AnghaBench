; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_caselist.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_caselist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*)* @caselist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @caselist(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 125
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @caseclause(%struct.TYPE_8__* %13)
  %15 = call i8* @LIST(i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  br label %17

17:                                               ; preds = %23, %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 125
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i32 @caseclause(%struct.TYPE_8__* %24)
  %26 = call i8* @LIST(i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_9__*
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %5, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call %struct.TYPE_9__* @jsP_list(%struct.TYPE_9__* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %2, align 8
  br label %33

33:                                               ; preds = %30, %11
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %34
}

declare dso_local i8* @LIST(i32) #1

declare dso_local i32 @caseclause(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @jsP_list(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
