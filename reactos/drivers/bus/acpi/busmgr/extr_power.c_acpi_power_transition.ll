; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_power_transition.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_power.c_acpi_power_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.acpi_handle_list }
%struct.acpi_handle_list = type { i32, i32* }

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_transition(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_handle_list*, align 8
  %7 = alloca %struct.acpi_handle_list*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.acpi_handle_list* null, %struct.acpi_handle_list** %6, align 8
  store %struct.acpi_handle_list* null, %struct.acpi_handle_list** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ACPI_STATE_D0, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ACPI_STATE_D3, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %11, %2
  %20 = call i32 @return_VALUE(i32 -1)
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ACPI_STATE_D0, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ACPI_STATE_D3, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %21
  %36 = call i32 @return_VALUE(i32 -15)
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.acpi_handle_list* %48, %struct.acpi_handle_list** %6, align 8
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.acpi_handle_list* %56, %struct.acpi_handle_list** %7, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %77, %37
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %7, align 8
  %60 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %7, align 8
  %65 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %72 = call i32 @acpi_power_on(i32 %70, %struct.acpi_device* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %113

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %82 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %113

88:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %109, %88
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %6, align 8
  %92 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %6, align 8
  %97 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %104 = call i32 @acpi_power_off_device(i32 %102, %struct.acpi_device* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %113

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %89

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112, %107, %87, %75
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %118 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %119 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  br label %126

121:                                              ; preds = %113
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %124 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @acpi_power_on(i32, %struct.acpi_device*) #1

declare dso_local i32 @acpi_power_off_device(i32, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
