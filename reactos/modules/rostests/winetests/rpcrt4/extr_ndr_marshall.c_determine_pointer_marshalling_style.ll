; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_determine_pointer_marshalling_style.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_determine_pointer_marshalling_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@determine_pointer_marshalling_style.fmtstr_up_char = internal constant [4 x i8] c"\12\08\02\\", align 1
@Object_StubDesc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@use_pointer_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Pointer marshalling using %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pointer ids\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pointer value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @determine_pointer_marshalling_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_pointer_marshalling_style() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i8, align 1
  store i8 -34, i8* %4, align 1
  %5 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_10__* @Object_StubDesc to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32* null, i32** %6, align 8
  %7 = call i32 @NdrClientInitializeNew(i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %3, i32 0)
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 8, i32* %8, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @HeapAlloc(i32 %9, i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 %12, i64* %17, align 8
  %18 = call i32 @NdrPointerMarshall(%struct.TYPE_9__* %2, i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @determine_pointer_marshalling_style.fmtstr_up_char, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 5
  %24 = icmp eq i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = ptrtoint i8* %4 to i32
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @use_pointer_ids, align 4
  %38 = load i32, i32* @use_pointer_ids, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 (...) @GetProcessHeap()
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @HeapFree(i32 %43, i32 0, i64 %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @NdrClientInitializeNew(i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @NdrPointerMarshall(%struct.TYPE_9__*, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i64, i64) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
