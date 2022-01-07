; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in_addr_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_ordered_set_put_in_addr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr_data = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_addr_data*, %struct.in_addr_data*)* @ordered_set_put_in_addr_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ordered_set_put_in_addr_data(%struct.in_addr_data* %0, %struct.in_addr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr_data*, align 8
  %5 = alloca %struct.in_addr_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.in_addr_data* %0, %struct.in_addr_data** %4, align 8
  store %struct.in_addr_data* %1, %struct.in_addr_data** %5, align 8
  %8 = load %struct.in_addr_data*, %struct.in_addr_data** %4, align 8
  %9 = call i32 @assert(%struct.in_addr_data* %8)
  %10 = load %struct.in_addr_data*, %struct.in_addr_data** %5, align 8
  %11 = call i32 @assert(%struct.in_addr_data* %10)
  %12 = load %struct.in_addr_data*, %struct.in_addr_data** %5, align 8
  %13 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.in_addr_data*, %struct.in_addr_data** %5, align 8
  %16 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %15, i32 0, i32 0
  %17 = call i32 @in_addr_to_string(i32 %14, i32* %16, i8** %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.in_addr_data*, %struct.in_addr_data** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @ordered_set_consume(%struct.in_addr_data* %23, i8* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %30, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @assert(%struct.in_addr_data*) #1

declare dso_local i32 @in_addr_to_string(i32, i32*, i8**) #1

declare dso_local i32 @ordered_set_consume(%struct.in_addr_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
