; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_reset.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { %struct.buffy* }
%struct.buffy = type { %struct.buffy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferchain*)* @bc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bc_reset(%struct.bufferchain* %0) #0 {
  %2 = alloca %struct.bufferchain*, align 8
  %3 = alloca %struct.buffy*, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %6 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %5, i32 0, i32 0
  %7 = load %struct.buffy*, %struct.buffy** %6, align 8
  %8 = icmp ne %struct.buffy* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %11 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %10, i32 0, i32 0
  %12 = load %struct.buffy*, %struct.buffy** %11, align 8
  store %struct.buffy* %12, %struct.buffy** %3, align 8
  %13 = load %struct.buffy*, %struct.buffy** %3, align 8
  %14 = getelementptr inbounds %struct.buffy, %struct.buffy* %13, i32 0, i32 0
  %15 = load %struct.buffy*, %struct.buffy** %14, align 8
  %16 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %17 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %16, i32 0, i32 0
  store %struct.buffy* %15, %struct.buffy** %17, align 8
  %18 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %19 = load %struct.buffy*, %struct.buffy** %3, align 8
  %20 = call i32 @bc_free(%struct.bufferchain* %18, %struct.buffy* %19)
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %23 = call i32 @bc_fill_pool(%struct.bufferchain* %22)
  %24 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %25 = call i32 @bc_init(%struct.bufferchain* %24)
  ret void
}

declare dso_local i32 @bc_free(%struct.bufferchain*, %struct.buffy*) #1

declare dso_local i32 @bc_fill_pool(%struct.bufferchain*) #1

declare dso_local i32 @bc_init(%struct.bufferchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
