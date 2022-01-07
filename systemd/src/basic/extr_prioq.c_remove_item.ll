; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_remove_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_remove_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prioq_item = type { i32, i32*, i32, %struct.prioq_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prioq_item*, %struct.prioq_item*)* @remove_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_item(%struct.prioq_item* %0, %struct.prioq_item* %1) #0 {
  %3 = alloca %struct.prioq_item*, align 8
  %4 = alloca %struct.prioq_item*, align 8
  %5 = alloca %struct.prioq_item*, align 8
  %6 = alloca i32, align 4
  store %struct.prioq_item* %0, %struct.prioq_item** %3, align 8
  store %struct.prioq_item* %1, %struct.prioq_item** %4, align 8
  %7 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %8 = call i32 @assert(%struct.prioq_item* %7)
  %9 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %10 = call i32 @assert(%struct.prioq_item* %9)
  %11 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %12 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %11, i32 0, i32 3
  %13 = load %struct.prioq_item*, %struct.prioq_item** %12, align 8
  %14 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %15 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %13, i64 %17
  %19 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %18, i64 -1
  store %struct.prioq_item* %19, %struct.prioq_item** %5, align 8
  %20 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %21 = load %struct.prioq_item*, %struct.prioq_item** %5, align 8
  %22 = icmp eq %struct.prioq_item* %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %25 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %30 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %31 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %30, i32 0, i32 3
  %32 = load %struct.prioq_item*, %struct.prioq_item** %31, align 8
  %33 = ptrtoint %struct.prioq_item* %29 to i64
  %34 = ptrtoint %struct.prioq_item* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.prioq_item*, %struct.prioq_item** %5, align 8
  %39 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %42 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.prioq_item*, %struct.prioq_item** %5, align 8
  %44 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %47 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %49 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %28
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.prioq_item*, %struct.prioq_item** %4, align 8
  %55 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %28
  %58 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %59 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @shuffle_down(%struct.prioq_item* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.prioq_item*, %struct.prioq_item** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @shuffle_up(%struct.prioq_item* %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %23
  ret void
}

declare dso_local i32 @assert(%struct.prioq_item*) #1

declare dso_local i32 @shuffle_down(%struct.prioq_item*, i32) #1

declare dso_local i32 @shuffle_up(%struct.prioq_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
