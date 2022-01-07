; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_type_to_str.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_reader.c_type_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@type_to_str.type_names = internal global [18 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [17 x i8] c"XmlNodeType_None\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"XmlNodeType_Element\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"XmlNodeType_Attribute\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"XmlNodeType_Text\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"XmlNodeType_CDATA\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"XmlNodeType_ProcessingInstruction\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"XmlNodeType_Comment\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"XmlNodeType_DocumentType\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"XmlNodeType_Whitespace\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"XmlNodeType_EndElement\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"XmlNodeType_XmlDeclaration\00", align 1
@type_to_str.unknown = internal constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @type_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @type_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %10 [
    i32 132, label %5
    i32 134, label %5
    i32 138, label %5
    i32 130, label %5
    i32 137, label %5
    i32 131, label %5
    i32 136, label %5
    i32 135, label %5
    i32 129, label %5
    i32 133, label %5
    i32 128, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [18 x i8*], [18 x i8*]* @type_to_str.type_names, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %2, align 8
  br label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @type_to_str.unknown, i64 0, i64 0), i8** %2, align 8
  br label %11

11:                                               ; preds = %10, %5
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
