; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_formdata_fill.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_formdata_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@Natts_hypertable = common dso_local global i32 0, align 4
@Anum_hypertable_id = common dso_local global i32 0, align 4
@Anum_hypertable_schema_name = common dso_local global i32 0, align 4
@Anum_hypertable_table_name = common dso_local global i32 0, align 4
@Anum_hypertable_associated_schema_name = common dso_local global i32 0, align 4
@Anum_hypertable_associated_table_prefix = common dso_local global i32 0, align 4
@Anum_hypertable_num_dimensions = common dso_local global i32 0, align 4
@Anum_hypertable_chunk_sizing_func_schema = common dso_local global i32 0, align 4
@Anum_hypertable_chunk_sizing_func_name = common dso_local global i32 0, align 4
@Anum_hypertable_chunk_target_size = common dso_local global i32 0, align 4
@Anum_hypertable_compressed = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@Anum_hypertable_compressed_hypertable_id = common dso_local global i32 0, align 4
@INVALID_HYPERTABLE_ID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @hypertable_formdata_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypertable_formdata_fill(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @Natts_hypertable, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @Natts_hypertable, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @heap_deform_tuple(i32 %17, i32 %18, i32* %16, i32* %13)
  %20 = load i32, i32* @Anum_hypertable_id, align 4
  %21 = call i64 @AttrNumberGetAttrOffset(i32 %20)
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* @Anum_hypertable_schema_name, align 4
  %29 = call i64 @AttrNumberGetAttrOffset(i32 %28)
  %30 = getelementptr inbounds i32, i32* %13, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32, i32* @Anum_hypertable_table_name, align 4
  %37 = call i64 @AttrNumberGetAttrOffset(i32 %36)
  %38 = getelementptr inbounds i32, i32* %13, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* @Anum_hypertable_associated_schema_name, align 4
  %45 = call i64 @AttrNumberGetAttrOffset(i32 %44)
  %46 = getelementptr inbounds i32, i32* %13, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i32, i32* @Anum_hypertable_associated_table_prefix, align 4
  %53 = call i64 @AttrNumberGetAttrOffset(i32 %52)
  %54 = getelementptr inbounds i32, i32* %13, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load i32, i32* @Anum_hypertable_num_dimensions, align 4
  %61 = call i64 @AttrNumberGetAttrOffset(i32 %60)
  %62 = getelementptr inbounds i32, i32* %13, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @Assert(i32 %66)
  %68 = load i32, i32* @Anum_hypertable_chunk_sizing_func_schema, align 4
  %69 = call i64 @AttrNumberGetAttrOffset(i32 %68)
  %70 = getelementptr inbounds i32, i32* %13, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load i32, i32* @Anum_hypertable_chunk_sizing_func_name, align 4
  %77 = call i64 @AttrNumberGetAttrOffset(i32 %76)
  %78 = getelementptr inbounds i32, i32* %13, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load i32, i32* @Anum_hypertable_chunk_target_size, align 4
  %85 = call i64 @AttrNumberGetAttrOffset(i32 %84)
  %86 = getelementptr inbounds i32, i32* %13, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = load i32, i32* @Anum_hypertable_compressed, align 4
  %93 = call i64 @AttrNumberGetAttrOffset(i32 %92)
  %94 = getelementptr inbounds i32, i32* %13, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @Assert(i32 %98)
  %100 = load i32, i32* @Anum_hypertable_id, align 4
  %101 = call i64 @AttrNumberGetAttrOffset(i32 %100)
  %102 = getelementptr inbounds i32, i32* %16, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @DatumGetInt32(i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 9
  %109 = load i32, i32* @Anum_hypertable_schema_name, align 4
  %110 = call i64 @AttrNumberGetAttrOffset(i32 %109)
  %111 = getelementptr inbounds i32, i32* %16, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DatumGetName(i32 %112)
  %114 = load i32, i32* @NAMEDATALEN, align 4
  %115 = call i32 @memcpy(i32* %108, i32 %113, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 8
  %118 = load i32, i32* @Anum_hypertable_table_name, align 4
  %119 = call i64 @AttrNumberGetAttrOffset(i32 %118)
  %120 = getelementptr inbounds i32, i32* %16, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @DatumGetName(i32 %121)
  %123 = load i32, i32* @NAMEDATALEN, align 4
  %124 = call i32 @memcpy(i32* %117, i32 %122, i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 7
  %127 = load i32, i32* @Anum_hypertable_associated_schema_name, align 4
  %128 = call i64 @AttrNumberGetAttrOffset(i32 %127)
  %129 = getelementptr inbounds i32, i32* %16, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @DatumGetName(i32 %130)
  %132 = load i32, i32* @NAMEDATALEN, align 4
  %133 = call i32 @memcpy(i32* %126, i32 %131, i32 %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 6
  %136 = load i32, i32* @Anum_hypertable_associated_table_prefix, align 4
  %137 = call i64 @AttrNumberGetAttrOffset(i32 %136)
  %138 = getelementptr inbounds i32, i32* %16, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DatumGetName(i32 %139)
  %141 = load i32, i32* @NAMEDATALEN, align 4
  %142 = call i32 @memcpy(i32* %135, i32 %140, i32 %141)
  %143 = load i32, i32* @Anum_hypertable_num_dimensions, align 4
  %144 = call i64 @AttrNumberGetAttrOffset(i32 %143)
  %145 = getelementptr inbounds i32, i32* %16, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @DatumGetInt16(i32 %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load i32, i32* @Anum_hypertable_chunk_sizing_func_schema, align 4
  %153 = call i64 @AttrNumberGetAttrOffset(i32 %152)
  %154 = getelementptr inbounds i32, i32* %16, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @DatumGetName(i32 %155)
  %157 = load i32, i32* @NAMEDATALEN, align 4
  %158 = call i32 @memcpy(i32* %151, i32 %156, i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32, i32* @Anum_hypertable_chunk_sizing_func_name, align 4
  %162 = call i64 @AttrNumberGetAttrOffset(i32 %161)
  %163 = getelementptr inbounds i32, i32* %16, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @DatumGetName(i32 %164)
  %166 = load i32, i32* @NAMEDATALEN, align 4
  %167 = call i32 @memcpy(i32* %160, i32 %165, i32 %166)
  %168 = load i32, i32* @Anum_hypertable_chunk_target_size, align 4
  %169 = call i64 @AttrNumberGetAttrOffset(i32 %168)
  %170 = getelementptr inbounds i32, i32* %16, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DatumGetInt64(i32 %171)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @Anum_hypertable_compressed, align 4
  %176 = call i64 @AttrNumberGetAttrOffset(i32 %175)
  %177 = getelementptr inbounds i32, i32* %16, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @DatumGetBool(i32 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @Anum_hypertable_compressed_hypertable_id, align 4
  %183 = call i64 @AttrNumberGetAttrOffset(i32 %182)
  %184 = getelementptr inbounds i32, i32* %13, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %3
  %188 = load i8*, i8** @INVALID_HYPERTABLE_ID, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  br label %199

191:                                              ; preds = %3
  %192 = load i32, i32* @Anum_hypertable_compressed_hypertable_id, align 4
  %193 = call i64 @AttrNumberGetAttrOffset(i32 %192)
  %194 = getelementptr inbounds i32, i32* %16, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @DatumGetInt32(i32 %195)
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  br label %199

199:                                              ; preds = %191, %187
  %200 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %200)
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

declare dso_local i32 @DatumGetInt16(i32) #2

declare dso_local i32 @DatumGetInt64(i32) #2

declare dso_local i32 @DatumGetBool(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
