; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in4_addrv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in4_addrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.in_addr*, i64, i32 (%struct.in_addr*)*)* @ordered_set_put_in4_addrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ordered_set_put_in4_addrv(i32* %0, %struct.in_addr* %1, i64 %2, i32 (%struct.in_addr*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.in_addr*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.in_addr* %1, %struct.in_addr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (%struct.in_addr*)* %3, i32 (%struct.in_addr*)** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %19 = icmp ne %struct.in_addr* %18, null
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @assert(i32* %24)
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %55, %20
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32 (%struct.in_addr*)*, i32 (%struct.in_addr*)** %9, align 8
  %32 = icmp ne i32 (%struct.in_addr*)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32 (%struct.in_addr*)*, i32 (%struct.in_addr*)** %9, align 8
  %35 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %35, i64 %36
  %38 = call i32 %34(%struct.in_addr* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %55

41:                                               ; preds = %33, %30
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %43, i64 %44
  %46 = call i32 @ordered_set_put_in4_addr(i32* %42, %struct.in_addr* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %40
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %49
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @ordered_set_put_in4_addr(i32*, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
