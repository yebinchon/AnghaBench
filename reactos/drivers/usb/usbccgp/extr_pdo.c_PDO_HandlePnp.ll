; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_PDO_HandlePnp.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_PDO_HandlePnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_25__*, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_32__** }
%struct.TYPE_24__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[USBCCGP] PDO IRP_MN_START\0A\00", align 1
@STATUS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PDO_HandlePnp(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %12 = call %struct.TYPE_31__* @IoGetCurrentIrpStackLocation(%struct.TYPE_30__* %11)
  store %struct.TYPE_31__* %12, %struct.TYPE_31__** %6, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %7, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %119 [
    i32 135, label %28
    i32 134, label %32
    i32 133, label %36
    i32 129, label %40
    i32 136, label %89
    i32 131, label %106
    i32 130, label %106
    i32 128, label %108
    i32 132, label %111
  ]

28:                                               ; preds = %2
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = call i64 @USBCCGP_PdoHandleDeviceRelations(%struct.TYPE_32__* %29, %struct.TYPE_30__* %30)
  store i64 %31, i64* %8, align 8
  br label %124

32:                                               ; preds = %2
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %35 = call i64 @USBCCGP_PdoHandleQueryDeviceText(%struct.TYPE_32__* %33, %struct.TYPE_30__* %34)
  store i64 %35, i64* %8, align 8
  br label %124

36:                                               ; preds = %2
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %39 = call i64 @USBCCGP_PdoHandleQueryId(%struct.TYPE_32__* %37, %struct.TYPE_30__* %38)
  store i64 %39, i64* %8, align 8
  br label %124

40:                                               ; preds = %2
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %71, %40
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %55, i64 %56
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %57, align 8
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %60 = icmp eq %struct.TYPE_32__* %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %66, i64 %67
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %68, align 8
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %10, align 8
  br label %74

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %42

74:                                               ; preds = %61, %42
  %75 = load i64, i64* @STATUS_SUCCESS, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %80 = load i32, i32* @IO_NO_INCREMENT, align 4
  %81 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %79, i32 %80)
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %86 = call i32 @IoDeleteDevice(%struct.TYPE_32__* %85)
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %88, i64* %3, align 8
  br label %138

89:                                               ; preds = %2
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = call i32 @RtlCopyMemory(i32 %94, i32* %96, i32 4)
  %98 = load i64, i64* @STATUS_SUCCESS, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %103 = load i32, i32* @IO_NO_INCREMENT, align 4
  %104 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %102, i32 %103)
  %105 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %105, i64* %3, align 8
  br label %138

106:                                              ; preds = %2, %2
  %107 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %107, i64* %8, align 8
  br label %124

108:                                              ; preds = %2
  %109 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %110 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %110, i64* %8, align 8
  br label %124

111:                                              ; preds = %2
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %113 = call i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__* %112)
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %118 = call i64 @IoCallDriver(i32 %116, %struct.TYPE_30__* %117)
  store i64 %118, i64* %3, align 8
  br label %138

119:                                              ; preds = %2
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %119, %108, %106, %36, %32, %28
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @STATUS_PENDING, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %134 = load i32, i32* @IO_NO_INCREMENT, align 4
  %135 = call i32 @IoCompleteRequest(%struct.TYPE_30__* %133, i32 %134)
  br label %136

136:                                              ; preds = %128, %124
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %136, %111, %89, %87
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local %struct.TYPE_31__* @IoGetCurrentIrpStackLocation(%struct.TYPE_30__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @USBCCGP_PdoHandleDeviceRelations(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i64 @USBCCGP_PdoHandleQueryDeviceText(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i64 @USBCCGP_PdoHandleQueryId(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @IoDeleteDevice(%struct.TYPE_32__*) #1

declare dso_local i32 @RtlCopyMemory(i32, i32*, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @IoSkipCurrentIrpStackLocation(%struct.TYPE_30__*) #1

declare dso_local i64 @IoCallDriver(i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
