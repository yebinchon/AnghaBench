; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_manifest_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_manifest_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }
%struct.assembly = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.assembly_identity = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@STATUS_SXS_CANT_GEN_ACTCTX = common dso_local global i32 0, align 4
@g_xmlW = common dso_local global i32 0, align 4
@assemblyW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"root element is %wZ, not <assembly>\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to parse manifest %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unexpected element %wZ\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"parse error\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.actctx_loader*, %struct.assembly*, %struct.assembly_identity*, %struct.TYPE_8__*)* @parse_manifest_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_manifest_buffer(%struct.actctx_loader* %0, %struct.assembly* %1, %struct.assembly_identity* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.actctx_loader*, align 8
  %7 = alloca %struct.assembly*, align 8
  %8 = alloca %struct.assembly_identity*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.actctx_loader* %0, %struct.actctx_loader** %6, align 8
  store %struct.assembly* %1, %struct.assembly** %7, align 8
  store %struct.assembly_identity* %2, %struct.assembly_identity** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %13 = call i64 @next_xml_elem(%struct.TYPE_8__* %12, i32* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %16, i32* %5, align 4
  br label %75

17:                                               ; preds = %4
  %18 = load i32, i32* @g_xmlW, align 4
  %19 = call i64 @xmlstr_cmp(i32* %10, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = call i32 @parse_xml_header(%struct.TYPE_8__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = call i64 @next_xml_elem(%struct.TYPE_8__* %26, i32* %10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %30, i32* %5, align 4
  br label %75

31:                                               ; preds = %25, %17
  %32 = load i32, i32* @assemblyW, align 4
  %33 = load i32, i32* @asmv1W, align 4
  %34 = call i32 @xml_elem_cmp(i32* %10, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %37, i32* %11, align 4
  %38 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %11)
  %39 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = load %struct.actctx_loader*, %struct.actctx_loader** %6, align 8
  %43 = load %struct.assembly*, %struct.assembly** %7, align 8
  %44 = load %struct.assembly_identity*, %struct.assembly_identity** %8, align 8
  %45 = call i32 @parse_assembly_elem(%struct.TYPE_8__* %41, %struct.actctx_loader* %42, %struct.assembly* %43, %struct.assembly_identity* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.assembly*, %struct.assembly** %7, align 8
  %49 = getelementptr inbounds %struct.assembly, %struct.assembly* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %40
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = call i64 @next_xml_elem(%struct.TYPE_8__* %55, i32* %10)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %59, i32* %11, align 4
  %60 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %61 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %61, i32* %5, align 4
  br label %75

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @STATUS_SXS_CANT_GEN_ACTCTX, align 4
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %70, %58, %47, %36, %29, %15
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @next_xml_elem(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i32 @parse_xml_header(%struct.TYPE_8__*) #1

declare dso_local i32 @xml_elem_cmp(i32*, i32, i32) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @parse_assembly_elem(%struct.TYPE_8__*, %struct.actctx_loader*, %struct.assembly*, %struct.assembly_identity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
