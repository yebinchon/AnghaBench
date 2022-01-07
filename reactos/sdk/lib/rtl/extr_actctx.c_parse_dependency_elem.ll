; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_dependency_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_dependency_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@optionalW = common dso_local global i32 0, align 4
@yesW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"optional=%wZ\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@dependencyW = common dso_local global i32 0, align 4
@dependentAssemblyW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown element %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.actctx_loader*)* @parse_dependency_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_dependency_elem(i32* %0, %struct.actctx_loader* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.actctx_loader*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.actctx_loader* %1, %struct.actctx_loader** %4, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  br label %17

17:                                               ; preds = %33, %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @next_xml_attr(i32* %18, i32* %5, i32* %6, i64* %12, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = call i32 @xmlstr2unicode(i32* %5)
  store i32 %22, i32* %8, align 4
  %23 = call i32 @xmlstr2unicode(i32* %6)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @optionalW, align 4
  %25 = call i64 @xmlstr_cmp(i32* %5, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @yesW, align 4
  %29 = call i64 @xmlstr_cmpi(i32* %6, i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %9)
  br label %33

31:                                               ; preds = %21
  %32 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9)
  br label %33

33:                                               ; preds = %31, %27
  br label %17

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @next_xml_elem(i32* %39, i32* %7)
  store i64 %40, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = load i32, i32* @dependencyW, align 4
  %46 = call i64 @xmlstr_cmp_end(i32* %7, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @parse_end_element(i32* %49)
  store i64 %50, i64* %11, align 8
  br label %67

51:                                               ; preds = %44
  %52 = load i32, i32* @dependentAssemblyW, align 4
  %53 = call i64 @xmlstr_cmp(i32* %7, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @parse_dependent_assembly_elem(i32* %56, %struct.actctx_loader* %57, i64 %58)
  store i64 %59, i64* %11, align 8
  br label %65

60:                                               ; preds = %51
  %61 = call i32 @xmlstr2unicode(i32* %7)
  store i32 %61, i32* %8, align 4
  %62 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @parse_unknown_elem(i32* %63, i32* %7)
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65
  br label %35

67:                                               ; preds = %48, %42
  %68 = load i64, i64* %11, align 8
  ret i64 %68
}

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i64 @xmlstr_cmpi(i32*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i64 @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i64 @parse_end_element(i32*) #1

declare dso_local i64 @parse_dependent_assembly_elem(i32*, %struct.actctx_loader*, i64) #1

declare dso_local i64 @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
