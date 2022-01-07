; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_dtd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }

@reader_parse_dtd.doctypeW = internal constant [10 x i8] c"<!DOCTYPE\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@DtdProcessing_Prohibit = common dso_local global i64 0, align 8
@WC_E_DTDPROHIBITED = common dso_local global i32 0, align 4
@WC_E_WHITESPACE = common dso_local global i32 0, align 4
@WC_E_DECLDOCTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"internal subset parsing not implemented\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@XmlNodeType_DocumentType = common dso_local global i32 0, align 4
@StringValue_LocalName = common dso_local global i32 0, align 4
@StringValue_QualifiedName = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @reader_parse_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_dtd(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i64 @reader_cmp(%struct.TYPE_11__* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @reader_parse_dtd.doctypeW, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @S_FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @reader_shrink(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DtdProcessing_Prohibit, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @WC_E_DTDPROHIBITED, align 4
  store i32 %21, i32* %2, align 4
  br label %73

22:                                               ; preds = %12
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @reader_skipn(%struct.TYPE_11__* %23, i32 9)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @reader_skipspaces(%struct.TYPE_11__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @WC_E_WHITESPACE, align 4
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i32 @reader_parse_name(%struct.TYPE_11__* %31, i32* %4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @WC_E_DECLDOCTYPE, align 4
  store i32 %37, i32* %2, align 4
  br label %73

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i32 @reader_skipspaces(%struct.TYPE_11__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = call i32 @reader_parse_externalid(%struct.TYPE_11__* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %73

48:                                               ; preds = %38
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @reader_skipspaces(%struct.TYPE_11__* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i8* @reader_get_ptr(%struct.TYPE_11__* %51)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 62
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %48
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = call i32 @reader_skipn(%struct.TYPE_11__* %61, i32 1)
  %63 = load i32, i32* @XmlNodeType_DocumentType, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* @StringValue_LocalName, align 4
  %68 = call i32 @reader_set_strvalue(%struct.TYPE_11__* %66, i32 %67, i32* %4)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load i32, i32* @StringValue_QualifiedName, align 4
  %71 = call i32 @reader_set_strvalue(%struct.TYPE_11__* %69, i32 %70, i32* %4)
  %72 = load i32, i32* @S_OK, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %57, %46, %36, %28, %20, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @reader_cmp(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @reader_shrink(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @reader_skipspaces(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_parse_name(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reader_parse_externalid(%struct.TYPE_11__*) #1

declare dso_local i8* @reader_get_ptr(%struct.TYPE_11__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @reader_set_strvalue(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
