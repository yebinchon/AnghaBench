; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_compress_chunks.c_bgw_policy_compress_chunks_tuple_found.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw_policy/extr_compress_chunks.c_bgw_policy_compress_chunks_tuple_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@Natts_bgw_policy_compress_chunks = common dso_local global i32 0, align 4
@Anum_bgw_policy_compress_chunks_job_id = common dso_local global i32 0, align 4
@Anum_bgw_policy_compress_chunks_hypertable_id = common dso_local global i32 0, align 4
@Anum_bgw_policy_compress_chunks_older_than = common dso_local global i32 0, align 4
@SCAN_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @bgw_policy_compress_chunks_tuple_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgw_policy_compress_chunks_tuple_found(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %10, %struct.TYPE_8__*** %5, align 8
  %11 = load i32, i32* @Natts_bgw_policy_compress_chunks, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @Natts_bgw_policy_compress_chunks, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @heap_deform_tuple(i32 %20, i32 %23, i32* %17, i32* %14)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_8__* @MemoryContextAllocZero(i32 %27, i32 24)
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %29, align 8
  %30 = load i32, i32* @Anum_bgw_policy_compress_chunks_job_id, align 4
  %31 = call i64 @AttrNumberGetAttrOffset(i32 %30)
  %32 = getelementptr inbounds i32, i32* %14, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32, i32* @Anum_bgw_policy_compress_chunks_job_id, align 4
  %39 = call i64 @AttrNumberGetAttrOffset(i32 %38)
  %40 = getelementptr inbounds i32, i32* %17, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @DatumGetInt32(i32 %41)
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* @Anum_bgw_policy_compress_chunks_hypertable_id, align 4
  %48 = call i64 @AttrNumberGetAttrOffset(i32 %47)
  %49 = getelementptr inbounds i32, i32* %14, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i32, i32* @Anum_bgw_policy_compress_chunks_hypertable_id, align 4
  %56 = call i64 @AttrNumberGetAttrOffset(i32 %55)
  %57 = getelementptr inbounds i32, i32* %17, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @DatumGetInt32(i32 %58)
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* @Anum_bgw_policy_compress_chunks_older_than, align 4
  %65 = call i64 @AttrNumberGetAttrOffset(i32 %64)
  %66 = getelementptr inbounds i32, i32* %14, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @Assert(i32 %70)
  %72 = load i32, i32* @Anum_bgw_policy_compress_chunks_older_than, align 4
  %73 = call i64 @AttrNumberGetAttrOffset(i32 %72)
  %74 = getelementptr inbounds i32, i32* %17, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @ts_interval_from_tuple(i32 %75)
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i32, i32* @SCAN_CONTINUE, align 4
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local %struct.TYPE_8__* @MemoryContextAllocZero(i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i8* @DatumGetInt32(i32) #2

declare dso_local i32* @ts_interval_from_tuple(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
