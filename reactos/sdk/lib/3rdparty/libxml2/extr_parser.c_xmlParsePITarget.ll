; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParsePITarget.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParsePITarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XML_ERR_RESERVED_XML_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"XML declaration allowed only at the start of the document\0A\00", align 1
@xmlW3CPIs = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"xmlParsePITarget: invalid name prefix 'xml'\0A\00", align 1
@XML_NS_ERR_COLON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"colons are forbidden from PI names '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParsePITarget(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @xmlParseName(i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %116

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 120
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 88
  br i1 %21, label %22, label %116

22:                                               ; preds = %16, %10
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 109
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 77
  br i1 %33, label %34, label %116

34:                                               ; preds = %28, %22
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 108
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 76
  br i1 %45, label %46, label %116

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 120
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 109
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 108
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @XML_ERR_RESERVED_XML_NAME, align 4
  %73 = call i32 @xmlFatalErrMsg(i32 %71, i32 %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %74 = load i8*, i8** %4, align 8
  store i8* %74, i8** %2, align 8
  br label %130

75:                                               ; preds = %64, %58, %52, %46
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @XML_ERR_RESERVED_XML_NAME, align 4
  %84 = call i32 @xmlFatalErr(i32 %82, i32 %83, i32* null)
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %2, align 8
  br label %130

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %109, %87
  %89 = load i32**, i32*** @xmlW3CPIs, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %112

96:                                               ; preds = %88
  %97 = load i8*, i8** %4, align 8
  %98 = load i32**, i32*** @xmlW3CPIs, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = call i64 @xmlStrEqual(i8* %97, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i8*, i8** %4, align 8
  store i8* %107, i8** %2, align 8
  br label %130

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %88

112:                                              ; preds = %95
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @XML_ERR_RESERVED_XML_NAME, align 4
  %115 = call i32 @xmlWarningMsg(i32 %113, i32 %114, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  br label %116

116:                                              ; preds = %112, %40, %28, %16, %1
  %117 = load i8*, i8** %4, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i8*, i8** %4, align 8
  %121 = call i32* @xmlStrchr(i8* %120, i8 signext 58)
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @XML_NS_ERR_COLON, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @xmlNsErr(i32 %124, i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %126, i32* null, i32* null)
  br label %128

128:                                              ; preds = %123, %119, %116
  %129 = load i8*, i8** %4, align 8
  store i8* %129, i8** %2, align 8
  br label %130

130:                                              ; preds = %128, %106, %81, %70
  %131 = load i8*, i8** %2, align 8
  ret i8* %131
}

declare dso_local i8* @xmlParseName(i32) #1

declare dso_local i32 @xmlFatalErrMsg(i32, i32, i8*) #1

declare dso_local i32 @xmlFatalErr(i32, i32, i32*) #1

declare dso_local i64 @xmlStrEqual(i8*, i8*) #1

declare dso_local i32 @xmlWarningMsg(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32* @xmlStrchr(i8*, i8 signext) #1

declare dso_local i32 @xmlNsErr(i32, i32, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
