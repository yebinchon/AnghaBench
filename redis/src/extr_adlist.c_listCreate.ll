; ModuleID = '/home/carl/AnghaBench/redis/src/extr_adlist.c_listCreate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_adlist.c_listCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32*, i32*, i32*, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @listCreate() #0 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca %struct.list*, align 8
  %3 = call %struct.list* @zmalloc(i32 48)
  store %struct.list* %3, %struct.list** %2, align 8
  %4 = icmp eq %struct.list* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.list* null, %struct.list** %1, align 8
  br label %20

6:                                                ; preds = %0
  %7 = load %struct.list*, %struct.list** %2, align 8
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 4
  store i32* null, i32** %8, align 8
  %9 = load %struct.list*, %struct.list** %2, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 5
  store i32 0, i32* %10, align 8
  %11 = load %struct.list*, %struct.list** %2, align 8
  %12 = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.list*, %struct.list** %2, align 8
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.list*, %struct.list** %2, align 8
  %18 = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.list*, %struct.list** %2, align 8
  store %struct.list* %19, %struct.list** %1, align 8
  br label %20

20:                                               ; preds = %6, %5
  %21 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %21
}

declare dso_local %struct.list* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
