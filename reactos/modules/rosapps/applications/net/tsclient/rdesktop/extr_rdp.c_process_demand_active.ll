; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_demand_active.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_demand_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"DEMAND_ACTIVE(id=0x%x)\0A\00", align 1
@RDP_CTL_COOPERATE = common dso_local global i32 0, align 4
@RDP_CTL_REQUEST_CONTROL = common dso_local global i32 0, align 4
@RDP_INPUT_SYNCHRONIZE = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @process_demand_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_demand_active(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @in_uint32_le(i32 %9, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @in_uint16_le(i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @in_uint16_le(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @in_uint8s(i32 %20, i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DEBUG(i8* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rdp_process_server_caps(%struct.TYPE_12__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = call i32 @rdp_send_confirm_active(%struct.TYPE_12__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = call i32 @rdp_send_synchronise(%struct.TYPE_12__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load i32, i32* @RDP_CTL_COOPERATE, align 4
  %43 = call i32 @rdp_send_control(%struct.TYPE_12__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i32, i32* @RDP_CTL_REQUEST_CONTROL, align 4
  %48 = call i32 @rdp_send_control(%struct.TYPE_12__* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @rdp_recv(%struct.TYPE_12__* %51, i32* %6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = call i32 @rdp_recv(%struct.TYPE_12__* %55, i32* %6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = call i32 @rdp_recv(%struct.TYPE_12__* %59, i32* %6)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load i32, i32* @RDP_INPUT_SYNCHRONIZE, align 4
  %65 = call i32 @rdp_send_input(%struct.TYPE_12__* %63, i32 0, i32 %64, i32 0, i32 0, i32 0)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62, %58, %54, %50, %45, %40, %36, %2
  %68 = load i32, i32* @False, align 4
  store i32 %68, i32* %3, align 4
  br label %106

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = call i32 @rdp_enum_bmpcache2(%struct.TYPE_12__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = call i32 @rdp_send_fonts(%struct.TYPE_12__* %79, i32 3)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @False, align 4
  store i32 %83, i32* %3, align 4
  br label %106

84:                                               ; preds = %78
  br label %96

85:                                               ; preds = %69
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = call i32 @rdp_send_fonts(%struct.TYPE_12__* %86, i32 1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = call i32 @rdp_send_fonts(%struct.TYPE_12__* %90, i32 2)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @False, align 4
  store i32 %94, i32* %3, align 4
  br label %106

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %84
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = call i32 @rdp_recv(%struct.TYPE_12__* %97, i32* %6)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @False, align 4
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %96
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = call i32 @reset_order_state(%struct.TYPE_12__* %103)
  %105 = load i32, i32* @True, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %100, %93, %82, %67
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @in_uint32_le(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @rdp_process_server_caps(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @rdp_send_confirm_active(%struct.TYPE_12__*) #1

declare dso_local i32 @rdp_send_synchronise(%struct.TYPE_12__*) #1

declare dso_local i32 @rdp_send_control(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @rdp_recv(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @rdp_send_input(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rdp_enum_bmpcache2(%struct.TYPE_12__*) #1

declare dso_local i32 @rdp_send_fonts(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @reset_order_state(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
