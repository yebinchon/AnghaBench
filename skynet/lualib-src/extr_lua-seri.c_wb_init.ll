; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_init.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i64, %struct.block*, %struct.block*, i64 }
%struct.block = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_block*, %struct.block*)* @wb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_init(%struct.write_block* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.write_block*, align 8
  %4 = alloca %struct.block*, align 8
  store %struct.write_block* %0, %struct.write_block** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %5 = load %struct.block*, %struct.block** %4, align 8
  %6 = load %struct.write_block*, %struct.write_block** %3, align 8
  %7 = getelementptr inbounds %struct.write_block, %struct.write_block* %6, i32 0, i32 1
  store %struct.block* %5, %struct.block** %7, align 8
  %8 = load %struct.block*, %struct.block** %4, align 8
  %9 = getelementptr inbounds %struct.block, %struct.block* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.write_block*, %struct.write_block** %3, align 8
  %15 = getelementptr inbounds %struct.write_block, %struct.write_block* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.write_block*, %struct.write_block** %3, align 8
  %17 = getelementptr inbounds %struct.write_block, %struct.write_block* %16, i32 0, i32 1
  %18 = load %struct.block*, %struct.block** %17, align 8
  %19 = load %struct.write_block*, %struct.write_block** %3, align 8
  %20 = getelementptr inbounds %struct.write_block, %struct.write_block* %19, i32 0, i32 2
  store %struct.block* %18, %struct.block** %20, align 8
  %21 = load %struct.write_block*, %struct.write_block** %3, align 8
  %22 = getelementptr inbounds %struct.write_block, %struct.write_block* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
