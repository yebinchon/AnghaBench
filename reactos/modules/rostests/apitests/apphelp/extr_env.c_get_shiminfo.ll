; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_get_shiminfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_get_shiminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@ProcessBasicInformation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Expected NtQI to succeed, but failed with: %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Expected VQE to return %u, got %lu\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*)* @get_shiminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_shiminfo(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ProcessBasicInformation, align 4
  %15 = call i32 @NtQueryInformationProcess(i32 %13, i32 %14, %struct.TYPE_13__* %6, i32 16, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @NT_SUCCESS(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i32, i8*, i32, ...) @ok(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call i32 @memset(%struct.TYPE_12__* %21, i32 0, i32 32)
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @NT_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %2
  %27 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @readproc(i32 %28, i32* %30, %struct.TYPE_14__* %9, i32 24)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %101

33:                                               ; preds = %26
  %34 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 8, i1 false)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %33
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = call i32 @VirtualQueryEx(i32 %53, i32 %56, %struct.TYPE_15__* %10, i32 8)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %59, 8
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 8, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %65, 8
  br i1 %66, label %71, label %67

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %67, %52
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_14__* @malloc(i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @readproc(i32 %81, i32* %83, %struct.TYPE_14__* %86, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %71
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %3, align 4
  br label %104

93:                                               ; preds = %71
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = call i32 @free(%struct.TYPE_14__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %99, align 8
  br label %100

100:                                              ; preds = %93, %67
  br label %101

101:                                              ; preds = %100, %26
  br label %102

102:                                              ; preds = %101, %2
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %91, %50
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NtQueryInformationProcess(i32, i32, %struct.TYPE_13__*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i64 @readproc(i32, i32*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @VirtualQueryEx(i32, i32, %struct.TYPE_15__*, i32) #2

declare dso_local %struct.TYPE_14__* @malloc(i32) #2

declare dso_local i32 @free(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
