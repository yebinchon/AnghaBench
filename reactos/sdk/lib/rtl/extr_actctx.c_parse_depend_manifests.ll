; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_depend_manifests.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_depend_manifests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.assembly_version, i32, i32 }
%struct.assembly_version = type { i32, i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Could not find dependent assembly %S (%u.%u.%u.%u)\0A\00", align 1
@STATUS_SXS_CANT_GEN_ACTCTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.actctx_loader*)* @parse_depend_manifests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_depend_manifests(%struct.actctx_loader* %0) #0 {
  %2 = alloca %struct.actctx_loader*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.assembly_version*, align 8
  store %struct.actctx_loader* %0, %struct.actctx_loader** %2, align 8
  %6 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %10 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %79

13:                                               ; preds = %7
  %14 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %15 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %16 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = call i64 @lookup_assembly(%struct.actctx_loader* %14, %struct.TYPE_2__* %20)
  %22 = load i64, i64* @STATUS_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %13
  %25 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %26 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %24
  %35 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %36 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %34
  %45 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %46 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.assembly_version* %51, %struct.assembly_version** %5, align 8
  %52 = load %struct.actctx_loader*, %struct.actctx_loader** %2, align 8
  %53 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %61 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %64 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %67 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %70 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @DPRINT1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i32 %71)
  %73 = load i64, i64* @STATUS_SXS_CANT_GEN_ACTCTX, align 8
  store i64 %73, i64* %3, align 8
  br label %79

74:                                               ; preds = %34, %24
  br label %75

75:                                               ; preds = %74, %13
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %7

79:                                               ; preds = %44, %7
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @lookup_assembly(%struct.actctx_loader*, %struct.TYPE_2__*) #1

declare dso_local i32 @DPRINT1(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
