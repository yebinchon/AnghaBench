; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_write_xmldecl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_write_xmldecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@write_xmldecl.versionW = internal constant [19 x i8] c"<?xml version=\221.0\22", align 16
@write_xmldecl.encodingW = internal constant [10 x i8] c" encoding=", align 1
@XmlWriterState_DocStarted = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@XmlStandalone_Omit = common dso_local global i64 0, align 8
@closepiW = common dso_local global i8* null, align 8
@write_xmldecl.standaloneW = internal constant [13 x i8] c" standalone=\22", align 1
@write_xmldecl.yesW = internal constant [6 x i8] c"yes\22?>", align 1
@write_xmldecl.noW = internal constant [5 x i8] c"no\22?>", align 1
@XmlStandalone_Yes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @write_xmldecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_xmldecl(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i32 @write_encoding_bom(%struct.TYPE_4__* %6)
  %8 = load i32, i32* @XmlWriterState_DocStarted, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @S_OK, align 4
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @write_xmldecl.versionW, i64 0, i64 0))
  %22 = call i32 @write_output_buffer(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @write_xmldecl.versionW, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @write_xmldecl.encodingW, i64 0, i64 0))
  %27 = call i32 @write_output_buffer(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @write_xmldecl.encodingW, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_output_encoding_name(i32 %33)
  %35 = call i32 @write_output_buffer_quoted(i32 %30, i32 %34, i32 -1)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @XmlStandalone_Omit, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %17
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** @closepiW, align 8
  %44 = load i8*, i8** @closepiW, align 8
  %45 = call i32 @ARRAY_SIZE(i8* %44)
  %46 = call i32 @write_output_buffer(i32 %42, i8* %43, i32 %45)
  br label %69

47:                                               ; preds = %17
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @write_xmldecl.standaloneW, i64 0, i64 0))
  %52 = call i32 @write_output_buffer(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @write_xmldecl.standaloneW, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @XmlStandalone_Yes, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @write_xmldecl.yesW, i64 0, i64 0))
  %61 = call i32 @write_output_buffer(i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @write_xmldecl.yesW, i64 0, i64 0), i32 %60)
  br label %68

62:                                               ; preds = %47
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_xmldecl.noW, i64 0, i64 0))
  %67 = call i32 @write_output_buffer(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_xmldecl.noW, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32, i32* @S_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @write_encoding_bom(%struct.TYPE_4__*) #1

declare dso_local i32 @write_output_buffer(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @write_output_buffer_quoted(i32, i32, i32) #1

declare dso_local i32 @get_output_encoding_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
