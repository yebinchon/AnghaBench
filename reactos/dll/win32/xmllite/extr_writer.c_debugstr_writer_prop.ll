; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_debugstr_writer_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_debugstr_writer_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debugstr_writer_prop.prop_names = internal constant [5 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [14 x i8] c"MultiLanguage\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Indent\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ByteOrderMark\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"OmitXmlDeclaration\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ConformanceLevel\00", align 1
@_XmlWriterProperty_Last = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"unknown property=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @debugstr_writer_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debugstr_writer_prop(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @_XmlWriterProperty_Last, align 8
  %6 = icmp ugt i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %8)
  store i8* %9, i8** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* @debugstr_writer_prop.prop_names, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
