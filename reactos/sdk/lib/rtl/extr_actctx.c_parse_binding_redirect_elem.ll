; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_binding_redirect_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_binding_redirect_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@oldVersionW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Not stored yet oldVersion=%wZ\0A\00", align 1
@newVersionW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Not stored yet newVersion=%wZ\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@bindingRedirectW = common dso_local global i32 0, align 4
@asmv1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @parse_binding_redirect_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_binding_redirect_elem(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @next_xml_attr(i32* %12, i32* %4, i32* %5, i64* %9, i64* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = call i32 @xmlstr2unicode(i32* %4)
  store i32 %16, i32* %7, align 4
  %17 = call i32 @xmlstr2unicode(i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @oldVersionW, align 4
  %19 = call i64 @xmlstr_cmp(i32* %4, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %6)
  br label %32

23:                                               ; preds = %15
  %24 = load i32, i32* @newVersionW, align 4
  %25 = call i64 @xmlstr_cmp(i32* %4, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  br label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %6)
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %21
  br label %11

33:                                               ; preds = %11
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %2, align 8
  br label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @bindingRedirectW, align 4
  %44 = load i32, i32* @asmv1W, align 4
  %45 = call i64 @parse_expect_end_elem(i32* %42, i32 %43, i32 %44)
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %41, %39
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i64 @parse_expect_end_elem(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
