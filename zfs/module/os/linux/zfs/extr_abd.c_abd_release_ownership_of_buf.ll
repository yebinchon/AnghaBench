; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_abd.c_abd_release_ownership_of_buf.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_abd.c_abd_release_ownership_of_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@ABD_FLAG_OWNER = common dso_local global i32 0, align 4
@ABD_FLAG_META = common dso_local global i32 0, align 4
@abdstat_linear_cnt = common dso_local global i32 0, align 4
@abdstat_linear_data_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abd_release_ownership_of_buf(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @abd_is_linear(%struct.TYPE_6__* %3)
  %5 = call i32 @ASSERT(i32 %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ABD_FLAG_OWNER, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i32 @abd_is_linear_page(%struct.TYPE_6__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = call i32 @abd_verify(%struct.TYPE_6__* %18)
  %20 = load i32, i32* @ABD_FLAG_OWNER, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @ABD_FLAG_META, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @abdstat_linear_cnt, align 4
  %33 = call i32 @ABDSTAT_BUMPDOWN(i32 %32)
  %34 = load i32, i32* @abdstat_linear_data_size, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sub nsw i32 0, %38
  %40 = call i32 @ABDSTAT_INCR(i32 %34, i32 %39)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @abd_is_linear(%struct.TYPE_6__*) #1

declare dso_local i32 @abd_is_linear_page(%struct.TYPE_6__*) #1

declare dso_local i32 @abd_verify(%struct.TYPE_6__*) #1

declare dso_local i32 @ABDSTAT_BUMPDOWN(i32) #1

declare dso_local i32 @ABDSTAT_INCR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
