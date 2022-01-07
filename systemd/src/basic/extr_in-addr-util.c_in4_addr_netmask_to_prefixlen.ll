; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in4_addr_netmask_to_prefixlen.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in4_addr_netmask_to_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @in4_addr_netmask_to_prefixlen(%struct.in_addr* %0) #0 {
  %2 = alloca %struct.in_addr*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %2, align 8
  %3 = load %struct.in_addr*, %struct.in_addr** %2, align 8
  %4 = call i32 @assert(%struct.in_addr* %3)
  %5 = load %struct.in_addr*, %struct.in_addr** %2, align 8
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be32toh(i32 %7)
  %9 = call zeroext i8 @u32ctz(i32 %8)
  %10 = zext i8 %9 to i32
  %11 = sub i32 32, %10
  %12 = trunc i32 %11 to i8
  ret i8 %12
}

declare dso_local i32 @assert(%struct.in_addr*) #1

declare dso_local zeroext i8 @u32ctz(i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
