; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_send_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@rdp_hdr = common dso_local global i32 0, align 4
@RDP_PDU_DATA = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @rdp_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdp_send_data(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = load i32, i32* @rdp_hdr, align 4
  %10 = call i32 @s_pop_layer(%struct.TYPE_12__* %8, i32 %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @out_uint16_le(%struct.TYPE_12__* %19, i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = load i32, i32* @RDP_PDU_DATA, align 4
  %24 = or i32 %23, 16
  %25 = call i32 @out_uint16_le(%struct.TYPE_12__* %22, i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1001
  %31 = call i32 @out_uint16_le(%struct.TYPE_12__* %26, i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @out_uint32_le(%struct.TYPE_12__* %32, i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i32 @out_uint8(%struct.TYPE_12__* %37, i32 0)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = call i32 @out_uint8(%struct.TYPE_12__* %39, i32 1)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 14
  %44 = call i32 @out_uint16_le(%struct.TYPE_12__* %41, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @out_uint8(%struct.TYPE_12__* %45, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = call i32 @out_uint8(%struct.TYPE_12__* %48, i32 0)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = call i32 @out_uint16(%struct.TYPE_12__* %50, i32 0)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %61

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = call i32 @sec_send(%struct.TYPE_13__* %52, %struct.TYPE_12__* %53, i32 %62)
  ret i32 %63
}

declare dso_local i32 @s_pop_layer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @out_uint16_le(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @out_uint32_le(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @out_uint8(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @out_uint16(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sec_send(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
