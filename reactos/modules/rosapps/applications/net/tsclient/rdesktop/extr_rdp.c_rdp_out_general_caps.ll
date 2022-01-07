; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_general_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_general_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@RDP_CAPSET_GENERAL = common dso_local global i32 0, align 4
@RDP_CAPLEN_GENERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @rdp_out_general_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_general_caps(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RDP_CAPSET_GENERAL, align 4
  %7 = call i32 @out_uint16_le(i32 %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RDP_CAPLEN_GENERAL, align 4
  %10 = call i32 @out_uint16_le(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @out_uint16_le(i32 %11, i32 1)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @out_uint16_le(i32 %13, i32 3)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @out_uint16_le(i32 %15, i32 512)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @out_uint16(i32 %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @out_uint16(i32 %19, i32 0)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1037, i32 0
  %28 = call i32 @out_uint16_le(i32 %21, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @out_uint16(i32 %29, i32 0)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @out_uint16(i32 %31, i32 0)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @out_uint16(i32 %33, i32 0)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @out_uint16(i32 %35, i32 0)
  ret void
}

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
