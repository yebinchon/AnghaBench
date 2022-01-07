; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-address.c_address_add_foreign.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-address.c_address_add_foreign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%union.in_addr_union = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @address_add_foreign(%struct.TYPE_4__* %0, i32 %1, %union.in_addr_union* %2, i8 zeroext %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.in_addr_union*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.in_addr_union* %2, %union.in_addr_union** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32** %4, i32*** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = load %union.in_addr_union*, %union.in_addr_union** %8, align 8
  %16 = load i8, i8* %9, align 1
  %17 = load i32**, i32*** %10, align 8
  %18 = call i32 @address_add_internal(%struct.TYPE_4__* %11, i32* %13, i32 %14, %union.in_addr_union* %15, i8 zeroext %16, i32** %17)
  ret i32 %18
}

declare dso_local i32 @address_add_internal(%struct.TYPE_4__*, i32*, i32, %union.in_addr_union*, i8 zeroext, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
