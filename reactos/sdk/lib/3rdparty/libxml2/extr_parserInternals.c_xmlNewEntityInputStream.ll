; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlNewEntityInputStream.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlNewEntityInputStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i64, i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [39 x i8] c"xmlNewEntityInputStream entity = NULL\0A\00", align 1
@xmlParserDebugEntities = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"new input from entity: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot parse entity %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Internal entity %s without content !\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Internal parameter entity %s without content !\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Predefined entity %s without content !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xmlNewEntityInputStream(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @xmlErrInternal(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %123

12:                                               ; preds = %2
  %13 = load i64, i64* @xmlParserDebugEntities, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @xmlGenericErrorContext, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @xmlGenericError(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  br label %21

21:                                               ; preds = %15, %12
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %66

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %65 [
    i32 132, label %30
    i32 133, label %36
    i32 131, label %36
    i32 130, label %47
    i32 129, label %53
    i32 128, label %59
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @xmlErrInternal(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %34)
  br label %65

36:                                               ; preds = %26, %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32, i32* %4, align 4
  %46 = call %struct.TYPE_7__* @xmlLoadExternalEntity(i8* %40, i8* %44, i32 %45)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %3, align 8
  br label %123

47:                                               ; preds = %26
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @xmlErrInternal(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %51)
  br label %65

53:                                               ; preds = %26
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @xmlErrInternal(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32* %57)
  br label %65

59:                                               ; preds = %26
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @xmlErrInternal(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32* %63)
  br label %65

65:                                               ; preds = %26, %59, %53, %47, %30
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %123

66:                                               ; preds = %21
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.TYPE_7__* @xmlNewInputStream(i32 %67)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %6, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = icmp eq %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %123

72:                                               ; preds = %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @xmlStrdup(i32* %80)
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @xmlStrlen(i32* %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %85
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %3, align 8
  br label %123

123:                                              ; preds = %102, %71, %65, %36, %9
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %124
}

declare dso_local i32 @xmlErrInternal(i32, i8*, i32*) #1

declare dso_local i32 @xmlGenericError(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @xmlLoadExternalEntity(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @xmlNewInputStream(i32) #1

declare dso_local i64 @xmlStrdup(i32*) #1

declare dso_local i64 @xmlStrlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
