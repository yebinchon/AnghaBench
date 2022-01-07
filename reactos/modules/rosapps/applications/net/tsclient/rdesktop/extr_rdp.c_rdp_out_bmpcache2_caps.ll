; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_bmpcache2_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_bmpcache2_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@RDP_CAPSET_BMPCACHE2 = common dso_local global i32 0, align 4
@RDP_CAPLEN_BMPCACHE2 = common dso_local global i32 0, align 4
@BMPCACHE2_C0_CELLS = common dso_local global i32 0, align 4
@BMPCACHE2_C1_CELLS = common dso_local global i32 0, align 4
@BMPCACHE2_NUM_PSTCELLS = common dso_local global i32 0, align 4
@BMPCACHE2_FLAG_PERSIST = common dso_local global i32 0, align 4
@BMPCACHE2_C2_CELLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @rdp_out_bmpcache2_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_bmpcache2_caps(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RDP_CAPSET_BMPCACHE2, align 4
  %7 = call i32 @out_uint16_le(i32 %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RDP_CAPLEN_BMPCACHE2, align 4
  %10 = call i32 @out_uint16_le(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 0
  %18 = call i32 @out_uint16_le(i32 %11, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @out_uint16_be(i32 %19, i32 3)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BMPCACHE2_C0_CELLS, align 4
  %23 = call i32 @out_uint32_le(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BMPCACHE2_C1_CELLS, align 4
  %26 = call i32 @out_uint32_le(i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = call i64 @pstcache_init(%struct.TYPE_4__* %27, i32 2)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @BMPCACHE2_NUM_PSTCELLS, align 4
  %33 = load i32, i32* @BMPCACHE2_FLAG_PERSIST, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @out_uint32_le(i32 %31, i32 %34)
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BMPCACHE2_C2_CELLS, align 4
  %39 = call i32 @out_uint32_le(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @out_uint8s(i32 %41, i32 20)
  ret void
}

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint16_be(i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i64 @pstcache_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
