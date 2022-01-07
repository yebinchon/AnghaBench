; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_debugstr_msxml_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_debugstr_msxml_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"IXMLDOMDocument\00", align 1
@IID_IXMLDOMDocument2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"IXMLDOMDocument2\00", align 1
@IID_IXMLDOMDocument3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"IXMLDOMDocument3\00", align 1
@IID_IXMLDOMSchemaCollection = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"IXMLDOMSchemaCollection\00", align 1
@IID_IXSLTemplate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"IXSLTemplate\00", align 1
@IID_IMXNamespaceManager = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"IMXNamespaceManager\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @debugstr_msxml_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debugstr_msxml_guid(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %40

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @IsEqualIID(i32* @IID_IXMLDOMDocument, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %40

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @IsEqualIID(i32* @IID_IXMLDOMDocument2, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %40

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @IsEqualIID(i32* @IID_IXMLDOMDocument3, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %40

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @IsEqualIID(i32* @IID_IXMLDOMSchemaCollection, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %40

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @IsEqualIID(i32* @IID_IXSLTemplate, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @IsEqualIID(i32* @IID_IMXNamespaceManager, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = call i8* @wine_dbgstr_guid(i32 %38)
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %37, %36, %31, %26, %21, %16, %11, %6
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i64 @IsEqualIID(i32*, i32) #1

declare dso_local i8* @wine_dbgstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
