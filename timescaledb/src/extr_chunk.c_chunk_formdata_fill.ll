; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_formdata_fill.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_formdata_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i8* }

@Natts_chunk = common dso_local global i32 0, align 4
@Anum_chunk_id = common dso_local global i32 0, align 4
@Anum_chunk_hypertable_id = common dso_local global i32 0, align 4
@Anum_chunk_schema_name = common dso_local global i32 0, align 4
@Anum_chunk_table_name = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@Anum_chunk_compressed_chunk_id = common dso_local global i32 0, align 4
@INVALID_CHUNK_ID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @chunk_formdata_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_formdata_fill(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @Natts_chunk, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @Natts_chunk, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @heap_deform_tuple(i32 %17, i32 %18, i32* %16, i32* %13)
  %20 = load i32, i32* @Anum_chunk_id, align 4
  %21 = call i64 @AttrNumberGetAttrOffset(i32 %20)
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* @Anum_chunk_hypertable_id, align 4
  %29 = call i64 @AttrNumberGetAttrOffset(i32 %28)
  %30 = getelementptr inbounds i32, i32* %13, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32, i32* @Anum_chunk_schema_name, align 4
  %37 = call i64 @AttrNumberGetAttrOffset(i32 %36)
  %38 = getelementptr inbounds i32, i32* %13, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* @Anum_chunk_table_name, align 4
  %45 = call i64 @AttrNumberGetAttrOffset(i32 %44)
  %46 = getelementptr inbounds i32, i32* %13, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i32, i32* @Anum_chunk_id, align 4
  %53 = call i64 @AttrNumberGetAttrOffset(i32 %52)
  %54 = getelementptr inbounds i32, i32* %16, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @DatumGetInt32(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @Anum_chunk_hypertable_id, align 4
  %60 = call i64 @AttrNumberGetAttrOffset(i32 %59)
  %61 = getelementptr inbounds i32, i32* %16, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @DatumGetInt32(i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* @Anum_chunk_schema_name, align 4
  %69 = call i64 @AttrNumberGetAttrOffset(i32 %68)
  %70 = getelementptr inbounds i32, i32* %16, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @DatumGetName(i32 %71)
  %73 = load i32, i32* @NAMEDATALEN, align 4
  %74 = call i32 @memcpy(i32* %67, i32 %72, i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* @Anum_chunk_table_name, align 4
  %78 = call i64 @AttrNumberGetAttrOffset(i32 %77)
  %79 = getelementptr inbounds i32, i32* %16, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DatumGetName(i32 %80)
  %82 = load i32, i32* @NAMEDATALEN, align 4
  %83 = call i32 @memcpy(i32* %76, i32 %81, i32 %82)
  %84 = load i32, i32* @Anum_chunk_compressed_chunk_id, align 4
  %85 = call i64 @AttrNumberGetAttrOffset(i32 %84)
  %86 = getelementptr inbounds i32, i32* %13, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %3
  %90 = load i8*, i8** @INVALID_CHUNK_ID, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %101

93:                                               ; preds = %3
  %94 = load i32, i32* @Anum_chunk_compressed_chunk_id, align 4
  %95 = call i64 @AttrNumberGetAttrOffset(i32 %94)
  %96 = getelementptr inbounds i32, i32* %16, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @DatumGetInt32(i32 %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %93, %89
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i8* @DatumGetInt32(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @DatumGetName(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
