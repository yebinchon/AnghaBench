; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_bitmap_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_bitmap_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@RDP_CAPSET_BITMAP = common dso_local global i32 0, align 4
@RDP_CAPLEN_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @rdp_out_bitmap_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_bitmap_caps(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RDP_CAPSET_BITMAP, align 4
  %7 = call i32 @out_uint16_le(i32 %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RDP_CAPLEN_BITMAP, align 4
  %10 = call i32 @out_uint16_le(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @out_uint16_le(i32 %11, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @out_uint16_le(i32 %16, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @out_uint16_le(i32 %18, i32 1)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @out_uint16_le(i32 %20, i32 1)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @out_uint16_le(i32 %22, i32 800)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @out_uint16_le(i32 %24, i32 600)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @out_uint16(i32 %26, i32 0)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @out_uint16(i32 %28, i32 1)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = call i32 @out_uint16_le(i32 %30, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @out_uint16(i32 %38, i32 0)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @out_uint16_le(i32 %40, i32 1)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @out_uint16(i32 %42, i32 0)
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
