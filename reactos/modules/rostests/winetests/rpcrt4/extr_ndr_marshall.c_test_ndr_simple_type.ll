; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_test_ndr_simple_type.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_test_ndr_simple_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@Object_StubDesc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FC_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ndr_simple_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ndr_simple_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @Object_StubDesc to i8*), i64 8, i1 false)
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32* null, i32** %7, align 8
  %8 = call i32 @NdrClientInitializeNew(i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i32 0)
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 16, i32* %9, align 8
  %10 = call i32 (...) @GetProcessHeap()
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @HeapAlloc(i32 %10, i32 0, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  store i32 -889275714, i32* %4, align 4
  %19 = bitcast i32* %4 to i8*
  %20 = load i32, i32* @FC_LONG, align 4
  %21 = call i32 @NdrSimpleTypeMarshall(%struct.TYPE_10__* %2, i8* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 4
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = bitcast i32* %4 to i8*
  %53 = load i32, i32* @FC_LONG, align 4
  %54 = call i32 @NdrSimpleTypeMarshall(%struct.TYPE_10__* %2, i8* %52, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 8
  %60 = icmp eq i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = bitcast i32* %5 to i8*
  %87 = load i32, i32* @FC_LONG, align 4
  %88 = call i32 @NdrSimpleTypeUnmarshall(%struct.TYPE_10__* %2, i8* %86, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 8
  %94 = icmp eq i32 %90, %93
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = call i32 (...) @GetProcessHeap()
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @HeapFree(i32 %107, i32 0, i32 %109)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @NdrClientInitializeNew(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @NdrSimpleTypeMarshall(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @NdrSimpleTypeUnmarshall(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
