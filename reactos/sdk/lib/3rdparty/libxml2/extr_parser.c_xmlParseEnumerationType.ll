; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEnumerationType.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEnumerationType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32 }

@RAW = common dso_local global i8 0, align 1
@XML_ERR_ATTLIST_NOT_STARTED = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_ERR_NMTOKEN_REQUIRED = common dso_local global i32 0, align 4
@XML_DTD_DUP_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"standalone: attribute enumeration value token %s duplicated\0A\00", align 1
@XML_ERR_ATTLIST_NOT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @xmlParseEnumerationType(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %9 = load i8, i8* @RAW, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 40
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load i32, i32* @XML_ERR_ATTLIST_NOT_STARTED, align 4
  %15 = call i32 @xmlFatalErr(%struct.TYPE_10__* %13, i32 %14, i32* null)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %111

16:                                               ; preds = %1
  %17 = load i32, i32* @SHRINK, align 4
  br label %18

18:                                               ; preds = %95, %16
  %19 = load i32, i32* @NEXT, align 4
  %20 = load i32, i32* @SKIP_BLANKS, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32* @xmlParseNmtoken(%struct.TYPE_10__* %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i32, i32* @XML_ERR_NMTOKEN_REQUIRED, align 4
  %28 = call i32 @xmlFatalErr(%struct.TYPE_10__* %26, i32 %27, i32* null)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %2, align 8
  br label %111

30:                                               ; preds = %18
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %8, align 8
  br label %32

32:                                               ; preds = %57, %30
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @xmlStrEqual(i32* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load i32, i32* @XML_DTD_DUP_TOKEN, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @xmlValidityError(%struct.TYPE_10__* %43, i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %45, i32* null)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @xmlDictOwns(i32 %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @xmlFree(i32* %54)
  br label %56

56:                                               ; preds = %53, %42
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %8, align 8
  br label %32

61:                                               ; preds = %56, %32
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load i32*, i32** %4, align 8
  %66 = call %struct.TYPE_11__* @xmlCreateEnumeration(i32* %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %7, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @xmlDictOwns(i32 %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @xmlFree(i32* %74)
  br label %76

76:                                               ; preds = %73, %64
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = icmp eq %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = call i32 @xmlFreeEnumeration(%struct.TYPE_11__* %80)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %111

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = icmp eq %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %5, align 8
  br label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %6, align 8
  br label %92

92:                                               ; preds = %87, %85
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* @SKIP_BLANKS, align 4
  br label %95

95:                                               ; preds = %93
  %96 = load i8, i8* @RAW, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 124
  br i1 %98, label %18, label %99

99:                                               ; preds = %95
  %100 = load i8, i8* @RAW, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 41
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = load i32, i32* @XML_ERR_ATTLIST_NOT_FINISHED, align 4
  %106 = call i32 @xmlFatalErr(%struct.TYPE_10__* %104, i32 %105, i32* null)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %2, align 8
  br label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @NEXT, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %2, align 8
  br label %111

111:                                              ; preds = %108, %103, %79, %25, %12
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %112
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32* @xmlParseNmtoken(%struct.TYPE_10__*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32) #1

declare dso_local i32 @xmlValidityError(%struct.TYPE_10__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xmlDictOwns(i32, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local %struct.TYPE_11__* @xmlCreateEnumeration(i32*) #1

declare dso_local i32 @xmlFreeEnumeration(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
