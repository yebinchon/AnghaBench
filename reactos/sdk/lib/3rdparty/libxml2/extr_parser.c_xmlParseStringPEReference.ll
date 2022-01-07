; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringPEReference.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringPEReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i64, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* (i32, i8*)* }

@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"xmlParseStringPEReference: no name\0A\00", align 1
@XML_ERR_ENTITYREF_SEMICOL_MISSING = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ERR_UNDECLARED_ENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PEReference: %%%s; not found\0A\00", align 1
@XML_WAR_UNDECLARED_ENTITY = common dso_local global i32 0, align 4
@XML_INTERNAL_PARAMETER_ENTITY = common dso_local global i64 0, align 8
@XML_EXTERNAL_PARAMETER_ENTITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%%%s; is not a parameter entity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, i8**)* @xmlParseStringPEReference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @xmlParseStringPEReference(%struct.TYPE_14__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %152

17:                                               ; preds = %12
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 37
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %152

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = call i8* @xmlParseStringName(%struct.TYPE_14__* %29, i8** %6)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %36 = call i32 @xmlFatalErrMsg(%struct.TYPE_14__* %34, i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %152

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* %7, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 59
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = load i32, i32* @XML_ERR_ENTITYREF_SEMICOL_MISSING, align 4
  %48 = call i32 @xmlFatalErr(%struct.TYPE_14__* %46, i32 %47, i32* null)
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @xmlFree(i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i8**, i8*** %5, align 8
  store i8* %51, i8** %52, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %152

53:                                               ; preds = %39
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %53
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__* (i32, i8*)*, %struct.TYPE_15__* (i32, i8*)** %68, align 8
  %70 = icmp ne %struct.TYPE_15__* (i32, i8*)* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__* (i32, i8*)*, %struct.TYPE_15__* (i32, i8*)** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call %struct.TYPE_15__* %76(i32 %79, i8* %80)
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %9, align 8
  br label %82

82:                                               ; preds = %71, %64, %53
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XML_PARSER_EOF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @xmlFree(i8* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load i8**, i8*** %5, align 8
  store i8* %91, i8** %92, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %152

93:                                               ; preds = %82
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = icmp eq %struct.TYPE_15__* %94, null
  br i1 %95, label %96, label %126

96:                                               ; preds = %93
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106, %96
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = load i32, i32* @XML_ERR_UNDECLARED_ENTITY, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_14__* %112, i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %123

116:                                              ; preds = %106, %101
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = load i32, i32* @XML_WAR_UNDECLARED_ENTITY, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @xmlWarningMsg(%struct.TYPE_14__* %117, i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %119, i32* null)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = call i32 @xmlParserEntityCheck(%struct.TYPE_14__* %124, i32 0, i32* null, i32 0)
  br label %144

126:                                              ; preds = %93
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @XML_INTERNAL_PARAMETER_ENTITY, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @XML_EXTERNAL_PARAMETER_ENTITY, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = load i32, i32* @XML_WAR_UNDECLARED_ENTITY, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @xmlWarningMsg(%struct.TYPE_14__* %139, i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %141, i32* null)
  br label %143

143:                                              ; preds = %138, %132, %126
  br label %144

144:                                              ; preds = %143, %123
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  store i32 1, i32* %146, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @xmlFree(i8* %147)
  %149 = load i8*, i8** %6, align 8
  %150 = load i8**, i8*** %5, align 8
  store i8* %149, i8** %150, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %151, %struct.TYPE_15__** %3, align 8
  br label %152

152:                                              ; preds = %144, %88, %45, %33, %25, %16
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %153
}

declare dso_local i8* @xmlParseStringName(%struct.TYPE_14__*, i8**) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_14__*, i32, i8*, i8*) #1

declare dso_local i32 @xmlWarningMsg(%struct.TYPE_14__*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xmlParserEntityCheck(%struct.TYPE_14__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
