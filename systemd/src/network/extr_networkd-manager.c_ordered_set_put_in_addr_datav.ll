; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in_addr_datav.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in_addr_datav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.in_addr_data*, i32)* @ordered_set_put_in_addr_datav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ordered_set_put_in_addr_datav(i32* %0, %struct.in_addr_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.in_addr_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.in_addr_data* %1, %struct.in_addr_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load %struct.in_addr_data*, %struct.in_addr_data** %6, align 8
  %14 = icmp ne %struct.in_addr_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ true, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @assert(i32* %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %43, %18
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.in_addr_data*, %struct.in_addr_data** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %30, i64 %32
  %34 = call i32 @ordered_set_put_in_addr_data(i32* %29, %struct.in_addr_data* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @ordered_set_put_in_addr_data(i32*, %struct.in_addr_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
