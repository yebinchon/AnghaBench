; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlFindCharEncodingHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlFindCharEncodingHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32*, i32*, i32*, i32*, i64, i64 }

@handlers = common dso_local global %struct.TYPE_6__** null, align 8
@xmlDefaultCharEncodingHandler = common dso_local global %struct.TYPE_6__* null, align 8
@nbCharEncodingHandler = common dso_local global i32 0, align 4
@XML_CHAR_ENCODING_ERROR = common dso_local global i64 0, align 8
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @xmlFindCharEncodingHandler(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @handlers, align 8
  %11 = icmp eq %struct.TYPE_6__** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @xmlInitCharEncodingHandlers()
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xmlDefaultCharEncodingHandler, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %2, align 8
  br label %114

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xmlDefaultCharEncodingHandler, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %2, align 8
  br label %114

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @xmlGetEncodingAlias(i8* %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %33, %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 99
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call signext i8 @toupper(i8 signext %44)
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %47
  store i8 %45, i8* %48, align 1
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %60

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %36

60:                                               ; preds = %55, %36
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @handlers, align 8
  %65 = icmp ne %struct.TYPE_6__** %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @nbCharEncodingHandler, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @handlers, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %72, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %71
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @handlers, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %2, align 8
  br label %114

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %67

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @xmlParseCharEncoding(i8* %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @XML_CHAR_ENCODING_ERROR, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load i64, i64* %6, align 8
  %101 = call i8* @xmlGetCharEncodingName(i64 %100)
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @strcmp(i8* %105, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %9, align 8
  %111 = call %struct.TYPE_6__* @xmlFindCharEncodingHandler(i8* %110)
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %2, align 8
  br label %114

112:                                              ; preds = %104, %99
  br label %113

113:                                              ; preds = %112, %93
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %114

114:                                              ; preds = %113, %109, %82, %25, %17
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %115
}

declare dso_local i32 @xmlInitCharEncodingHandlers(...) #1

declare dso_local i8* @xmlGetEncodingAlias(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xmlParseCharEncoding(i8*) #1

declare dso_local i8* @xmlGetCharEncodingName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
