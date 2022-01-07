; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewReference.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i8*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"building reference\00", align 1
@XML_ENTITY_REF_NODE = common dso_local global i32 0, align 4
@__xmlRegisterCallbacks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xmlNewReference(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %96

12:                                               ; preds = %2
  %13 = call i64 @xmlMalloc(i32 4)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %96

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call i32 @memset(%struct.TYPE_7__* %20, i32 0, i32 4)
  %22 = load i32, i32* @XML_ENTITY_REF_NODE, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 38
  br i1 %32, label %33, label %60

33:                                               ; preds = %19
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @xmlStrlen(i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 59
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i8* @xmlStrndup(i8* %47, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %59

53:                                               ; preds = %33
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @xmlStrndup(i8* %54, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %53, %46
  br label %65

60:                                               ; preds = %19
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @xmlStrdup(i8* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call %struct.TYPE_8__* @xmlGetDocEntity(i32* %66, i8* %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %7, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = bitcast %struct.TYPE_8__* %79 to %struct.TYPE_7__*
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = bitcast %struct.TYPE_8__* %83 to %struct.TYPE_7__*
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  br label %87

87:                                               ; preds = %73, %65
  %88 = load i64, i64* @__xmlRegisterCallbacks, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  br i1 true, label %91, label %94

91:                                               ; preds = %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = call i32 @xmlRegisterNodeDefaultValue(%struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %91, %90, %87
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %3, align 8
  br label %96

96:                                               ; preds = %94, %17, %11
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %97
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @xmlStrlen(i8*) #1

declare dso_local i8* @xmlStrndup(i8*, i32) #1

declare dso_local i8* @xmlStrdup(i8*) #1

declare dso_local %struct.TYPE_8__* @xmlGetDocEntity(i32*, i8*) #1

declare dso_local i32 @xmlRegisterNodeDefaultValue(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
