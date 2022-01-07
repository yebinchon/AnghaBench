; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_control_data_done.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_control_data_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.chmcTreeNode = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"::DataSpace/Storage/MSCompressed/ControlData\00", align 1
@_CHMC_LZXC_V2_LEN = common dso_local global i32 0, align 4
@CHMC_TNFL_STATIC = common dso_local global i32 0, align 4
@CHMC_NOERR = common dso_local global i32 0, align 4
@CHMC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chmc_control_data_done(%struct.chmcFile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chmcFile*, align 8
  %4 = alloca %struct.chmcTreeNode*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %3, align 8
  %5 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %6 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %7 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @_CHMC_LZXC_V2_LEN, align 4
  %13 = call %struct.chmcTreeNode* @chmc_add_meta(%struct.chmcFile* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 0, i32* %11, i32 %12)
  store %struct.chmcTreeNode* %13, %struct.chmcTreeNode** %4, align 8
  %14 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %4, align 8
  %15 = icmp ne %struct.chmcTreeNode* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @CHMC_TNFL_STATIC, align 4
  %18 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %4, align 8
  %19 = getelementptr inbounds %struct.chmcTreeNode, %struct.chmcTreeNode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @CHMC_NOERR, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @CHMC_ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.chmcTreeNode* @chmc_add_meta(%struct.chmcFile*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
