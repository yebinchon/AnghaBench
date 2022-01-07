; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_loader.c_test_ImportDescriptors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_loader.c_test_ImportDescriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@IMAGE_DIRECTORY_ENTRY_IMPORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Unable to continue testing due to missing import directory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid import_chunk: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Imported module name should not be NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Name table for imported module %s should not be NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"IAT for imported module %s should not be NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ImportDescriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ImportDescriptors() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %11 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %2, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = bitcast %struct.TYPE_13__* %18 to i8*
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %3, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_IMPORT, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %0
  %37 = call i32 @skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %108

38:                                               ; preds = %0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_IMPORT, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = call i8* @RVAToAddr(i64 %47, i32* %48)
  %50 = bitcast i8* %49 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %6, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %38
  br label %108

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %105, %59
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %60
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = call i8* @RVAToAddr(i64 %68, i32* %69)
  %71 = bitcast i8* %70 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %7, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = bitcast %struct.TYPE_12__* %72 to { i64, i64 }*
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @U(i64 %75, i64 %77)
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %1, align 8
  %83 = call i8* @RVAToAddr(i64 %81, i32* %82)
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %8, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %1, align 8
  %89 = call i8* @RVAToAddr(i64 %87, i32* %88)
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %10, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %98)
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_12__* %103)
  br label %105

105:                                              ; preds = %65
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 1
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %6, align 8
  br label %60

108:                                              ; preds = %36, %58, %60
  ret void
}

declare dso_local i32* @GetModuleHandleA(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i8* @RVAToAddr(i64, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @U(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
