; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_compatibility_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_compatibility_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32 }
%struct.actctx_loader = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@compatibilityW = common dso_local global i32 0, align 4
@applicationW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown elem %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_compatibility_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_compatibility_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.assembly*, align 8
  %6 = alloca %struct.actctx_loader*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.assembly* %1, %struct.assembly** %5, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %6, align 8
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @next_xml_elem(i32* %15, i32* %7)
  store i64 %16, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = load i32, i32* @compatibilityW, align 4
  %22 = call i64 @xmlstr_cmp_end(i32* %7, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @parse_end_element(i32* %25)
  store i64 %26, i64* %8, align 8
  br label %43

27:                                               ; preds = %20
  %28 = load i32, i32* @applicationW, align 4
  %29 = call i64 @xmlstr_cmp(i32* %7, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.assembly*, %struct.assembly** %5, align 8
  %34 = load %struct.actctx_loader*, %struct.actctx_loader** %6, align 8
  %35 = call i64 @parse_compatibility_application_elem(i32* %32, %struct.assembly* %33, %struct.actctx_loader* %34)
  store i64 %35, i64* %8, align 8
  br label %41

36:                                               ; preds = %27
  %37 = call i32 @xmlstr2unicode(i32* %7)
  store i32 %37, i32* %9, align 4
  %38 = call i32 @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %9)
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @parse_unknown_elem(i32* %39, i32* %7)
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41
  br label %11

43:                                               ; preds = %24, %18
  %44 = load i64, i64* %8, align 8
  ret i64 %44
}

declare dso_local i64 @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i64 @parse_end_element(i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i64 @parse_compatibility_application_elem(i32*, %struct.assembly*, %struct.actctx_loader*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*) #1

declare dso_local i64 @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
