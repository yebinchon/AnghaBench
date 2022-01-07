; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_data_hash_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_data_hash_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr_data = type { i32, i32 }
%struct.siphash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_addr_data*, %struct.siphash*)* @in_addr_data_hash_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_addr_data_hash_func(%struct.in_addr_data* %0, %struct.siphash* %1) #0 {
  %3 = alloca %struct.in_addr_data*, align 8
  %4 = alloca %struct.siphash*, align 8
  store %struct.in_addr_data* %0, %struct.in_addr_data** %3, align 8
  store %struct.siphash* %1, %struct.siphash** %4, align 8
  %5 = load %struct.in_addr_data*, %struct.in_addr_data** %3, align 8
  %6 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %5, i32 0, i32 0
  %7 = load %struct.siphash*, %struct.siphash** %4, align 8
  %8 = call i32 @siphash24_compress(i32* %6, i32 4, %struct.siphash* %7)
  %9 = load %struct.in_addr_data*, %struct.in_addr_data** %3, align 8
  %10 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %9, i32 0, i32 1
  %11 = load %struct.in_addr_data*, %struct.in_addr_data** %3, align 8
  %12 = getelementptr inbounds %struct.in_addr_data, %struct.in_addr_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @FAMILY_ADDRESS_SIZE(i32 %13)
  %15 = load %struct.siphash*, %struct.siphash** %4, align 8
  %16 = call i32 @siphash24_compress(i32* %10, i32 %14, %struct.siphash* %15)
  ret void
}

declare dso_local i32 @siphash24_compress(i32*, i32, %struct.siphash*) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
