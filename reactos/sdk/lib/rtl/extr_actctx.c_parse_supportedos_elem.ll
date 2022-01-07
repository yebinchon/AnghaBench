; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_supportedos_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_supportedos_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32 }
%struct.actctx_loader = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@IdW = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@ACTCX_COMPATIBILITY_ELEMENT_TYPE_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid guid %wZ\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@supportedOSW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_supportedos_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_supportedos_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.assembly*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.assembly* %1, %struct.assembly** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %78, %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @next_xml_attr(i32* %20, %struct.TYPE_12__* %8, %struct.TYPE_12__* %9, i64* %11, i64* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %19
  %24 = load i32, i32* @IdW, align 4
  %25 = call i64 @xmlstr_cmp(%struct.TYPE_12__* %8, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = call i64 @RtlGUIDFromString(%struct.TYPE_13__* %13, i32* %14)
  %40 = load i64, i64* @STATUS_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %27
  %43 = load %struct.assembly*, %struct.assembly** %6, align 8
  %44 = call %struct.TYPE_14__* @add_compat_context(%struct.assembly* %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %12, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %4, align 8
  br label %94

48:                                               ; preds = %42
  %49 = load i32, i32* @ACTCX_COMPATIBILITY_ELEMENT_TYPE_OS, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %63

55:                                               ; preds = %27
  %56 = call { i64, i64 } @xmlstr2unicode(%struct.TYPE_12__* %9)
  %57 = bitcast %struct.TYPE_13__* %15 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64, i64 } %56, 0
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64, i64 } %56, 1
  store i64 %61, i64* %60, align 8
  %62 = call i32 (i8*, %struct.TYPE_13__*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %15)
  br label %63

63:                                               ; preds = %55, %48
  br label %78

64:                                               ; preds = %23
  %65 = call { i64, i64 } @xmlstr2unicode(%struct.TYPE_12__* %8)
  %66 = bitcast %struct.TYPE_13__* %16 to { i64, i64 }*
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 0
  %68 = extractvalue { i64, i64 } %65, 0
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 1
  %70 = extractvalue { i64, i64 } %65, 1
  store i64 %70, i64* %69, align 8
  %71 = call { i64, i64 } @xmlstr2unicode(%struct.TYPE_12__* %9)
  %72 = bitcast %struct.TYPE_13__* %17 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %71, 0
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %71, 1
  store i64 %76, i64* %75, align 8
  %77 = call i32 (i8*, %struct.TYPE_13__*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %16, %struct.TYPE_13__* %17)
  br label %78

78:                                               ; preds = %64, %63
  br label %19

79:                                               ; preds = %19
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* %4, align 8
  br label %94

84:                                               ; preds = %79
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* %4, align 8
  br label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @supportedOSW, align 4
  %92 = load i32, i32* @asmv1W, align 4
  %93 = call i64 @parse_expect_end_elem(i32* %90, i32 %91, i32 %92)
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %89, %87, %82, %46
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @next_xml_attr(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @RtlGUIDFromString(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_14__* @add_compat_context(%struct.assembly*) #1

declare dso_local { i64, i64 } @xmlstr2unicode(%struct.TYPE_12__*) #1

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_13__*, ...) #1

declare dso_local i64 @parse_expect_end_elem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
