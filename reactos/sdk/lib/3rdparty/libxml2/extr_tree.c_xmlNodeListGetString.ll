; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNodeListGetString.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNodeListGetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_REF_NODE = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlNodeListGetString(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i8], align 1
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  store i8* null, i8** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %148

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %34

33:                                               ; preds = %24, %19
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %142, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %146

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XML_TEXT_NODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @xmlStrcat(i8* %54, i8* %57)
  store i8* %58, i8** %9, align 8
  br label %84

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @xmlEncodeAttributeEntities(i32 %63, i8* %66)
  store i8* %67, i8** %12, align 8
  br label %74

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @xmlEncodeEntitiesReentrant(i32 %69, i8* %72)
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i8* @xmlStrcat(i8* %78, i8* %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @xmlFree(i8* %81)
  br label %83

83:                                               ; preds = %77, %74
  br label %84

84:                                               ; preds = %83, %53
  br label %142

85:                                               ; preds = %44
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @XML_ENTITY_REF_NODE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %141

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call %struct.TYPE_8__* @xmlGetDocEntity(i32 %95, i8* %98)
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %10, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = icmp ne %struct.TYPE_8__* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = call i8* @xmlNodeListGetString(i32 %103, %struct.TYPE_7__* %106, i32 1)
  store i8* %107, i8** %13, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i8* @xmlStrcat(i8* %111, i8* %112)
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @xmlFree(i8* %114)
  br label %116

116:                                              ; preds = %110, %102
  br label %123

117:                                              ; preds = %94
  %118 = load i8*, i8** %9, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @xmlStrcat(i8* %118, i8* %121)
  store i8* %122, i8** %9, align 8
  br label %123

123:                                              ; preds = %117, %116
  br label %140

124:                                              ; preds = %91
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 38, i8* %125, align 1
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 1
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %129 = call i8* @xmlStrncat(i8* %127, i8* %128, i32 1)
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @xmlStrcat(i8* %130, i8* %133)
  store i8* %134, i8** %9, align 8
  %135 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 59, i8* %135, align 1
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 1
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %139 = call i8* @xmlStrncat(i8* %137, i8* %138, i32 1)
  store i8* %139, i8** %9, align 8
  br label %140

140:                                              ; preds = %124, %123
  br label %141

141:                                              ; preds = %140, %85
  br label %142

142:                                              ; preds = %141, %84
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  store %struct.TYPE_7__* %145, %struct.TYPE_7__** %8, align 8
  br label %35

146:                                              ; preds = %35
  %147 = load i8*, i8** %9, align 8
  store i8* %147, i8** %4, align 8
  br label %148

148:                                              ; preds = %146, %18
  %149 = load i8*, i8** %4, align 8
  ret i8* %149
}

declare dso_local i8* @xmlStrcat(i8*, i8*) #1

declare dso_local i8* @xmlEncodeAttributeEntities(i32, i8*) #1

declare dso_local i8* @xmlEncodeEntitiesReentrant(i32, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local %struct.TYPE_8__* @xmlGetDocEntity(i32, i8*) #1

declare dso_local i8* @xmlStrncat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
