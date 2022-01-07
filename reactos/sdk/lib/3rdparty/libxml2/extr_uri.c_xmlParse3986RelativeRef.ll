; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlParse3986RelativeRef.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlParse3986RelativeRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @xmlParse3986RelativeRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlParse3986RelativeRef(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 47
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %19, i8** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @xmlParse3986Authority(%struct.TYPE_10__* %20, i8** %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %17
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @xmlParse3986PathAbEmpty(%struct.TYPE_10__* %27, i8** %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %26
  br label %78

34:                                               ; preds = %11, %2
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = call i32 @xmlParse3986PathAbsolute(%struct.TYPE_10__* %40, i8** %5)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %117

46:                                               ; preds = %39
  br label %77

47:                                               ; preds = %34
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @ISA_PCHAR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = call i32 @xmlParse3986PathNoScheme(%struct.TYPE_10__* %52, i8** %5)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %117

58:                                               ; preds = %51
  br label %76

59:                                               ; preds = %47
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @xmlFree(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %59
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 63
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = call i32 @xmlParse3986Query(%struct.TYPE_10__* %86, i8** %5)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %117

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 35
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = call i32 @xmlParse3986Fragment(%struct.TYPE_10__* %101, i8** %5)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %117

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %93
  %109 = load i8*, i8** %5, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = call i32 @xmlCleanURI(%struct.TYPE_10__* %114)
  store i32 1, i32* %3, align 4
  br label %117

116:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %113, %105, %90, %56, %44, %31, %24
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @xmlParse3986Authority(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @xmlParse3986PathAbEmpty(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @xmlParse3986PathAbsolute(%struct.TYPE_10__*, i8**) #1

declare dso_local i64 @ISA_PCHAR(i8*) #1

declare dso_local i32 @xmlParse3986PathNoScheme(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlParse3986Query(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @xmlParse3986Fragment(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @xmlCleanURI(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
