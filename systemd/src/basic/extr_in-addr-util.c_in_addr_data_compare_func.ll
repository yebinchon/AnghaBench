; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_data_compare_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_data_compare_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_addr_data*, %struct.in_addr_data*)* @in_addr_data_compare_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_addr_data_compare_func(%struct.in_addr_data* %0, %struct.in_addr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr_data*, align 8
  %5 = alloca %struct.in_addr_data*, align 8
  %6 = alloca i32, align 4
  store %struct.in_addr_data* %0, %struct.in_addr_data** %4, align 8
  store %struct.in_addr_data* %1, %struct.in_addr_data** %5, align 8
  %7 = load %struct.in_addr_data*, %struct.in_addr_data** %4, align 8
  %8 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.in_addr_data*, %struct.in_addr_data** %5, align 8
  %11 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CMP(i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.in_addr_data*, %struct.in_addr_data** %4, align 8
  %20 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %19, i32 0, i32 1
  %21 = load %struct.in_addr_data*, %struct.in_addr_data** %5, align 8
  %22 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %21, i32 0, i32 1
  %23 = load %struct.in_addr_data*, %struct.in_addr_data** %4, align 8
  %24 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @FAMILY_ADDRESS_SIZE(i32 %25)
  %27 = call i32 @memcmp(i32* %20, i32* %22, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
