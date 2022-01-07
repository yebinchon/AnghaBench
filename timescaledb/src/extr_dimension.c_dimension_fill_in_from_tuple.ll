; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_fill_in_from_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_fill_in_from_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@Natts_dimension = common dso_local global i32 0, align 4
@Anum_dimension_id = common dso_local global i32 0, align 4
@Anum_dimension_hypertable_id = common dso_local global i32 0, align 4
@Anum_dimension_aligned = common dso_local global i32 0, align 4
@Anum_dimension_column_type = common dso_local global i32 0, align 4
@Anum_dimension_column_name = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@Anum_dimension_partitioning_func_schema = common dso_local global i32 0, align 4
@Anum_dimension_partitioning_func = common dso_local global i32 0, align 4
@Anum_dimension_num_slices = common dso_local global i32 0, align 4
@Anum_dimension_integer_now_func_schema = common dso_local global i32 0, align 4
@Anum_dimension_integer_now_func = common dso_local global i32 0, align 4
@DIMENSION_TYPE_CLOSED = common dso_local global i64 0, align 8
@Anum_dimension_interval_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @dimension_fill_in_from_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dimension_fill_in_from_tuple(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @Natts_dimension, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @Natts_dimension, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @heap_deform_tuple(i32 %20, i32 %23, i32* %14, i32* %17)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i64 @dimension_type(%struct.TYPE_8__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @Anum_dimension_id, align 4
  %30 = call i64 @AttrNumberGetAttrOffset(i32 %29)
  %31 = getelementptr inbounds i32, i32* %14, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @DatumGetInt32(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 10
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @Anum_dimension_hypertable_id, align 4
  %38 = call i64 @AttrNumberGetAttrOffset(i32 %37)
  %39 = getelementptr inbounds i32, i32* %14, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @DatumGetInt32(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 9
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* @Anum_dimension_aligned, align 4
  %46 = call i64 @AttrNumberGetAttrOffset(i32 %45)
  %47 = getelementptr inbounds i32, i32* %14, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DatumGetBool(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 8
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @Anum_dimension_column_type, align 4
  %54 = call i64 @AttrNumberGetAttrOffset(i32 %53)
  %55 = getelementptr inbounds i32, i32* %14, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DatumGetObjectId(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* @Anum_dimension_column_name, align 4
  %65 = call i64 @AttrNumberGetAttrOffset(i32 %64)
  %66 = getelementptr inbounds i32, i32* %14, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DatumGetName(i32 %67)
  %69 = load i32, i32* @NAMEDATALEN, align 4
  %70 = call i32 @memcpy(i32* %63, i32 %68, i32 %69)
  %71 = load i32, i32* @Anum_dimension_partitioning_func_schema, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %17, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %141, label %77

77:                                               ; preds = %3
  %78 = load i32, i32* @Anum_dimension_partitioning_func, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %17, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %141, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @Anum_dimension_num_slices, align 4
  %86 = call i64 @AttrNumberGetAttrOffset(i32 %85)
  %87 = getelementptr inbounds i32, i32* %14, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @DatumGetInt16(i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 6
  %96 = load i32, i32* @Anum_dimension_partitioning_func_schema, align 4
  %97 = call i64 @AttrNumberGetAttrOffset(i32 %96)
  %98 = getelementptr inbounds i32, i32* %14, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DatumGetName(i32 %99)
  %101 = load i32, i32* @NAMEDATALEN, align 4
  %102 = call i32 @memcpy(i32* %95, i32 %100, i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load i32, i32* @Anum_dimension_partitioning_func, align 4
  %107 = call i64 @AttrNumberGetAttrOffset(i32 %106)
  %108 = getelementptr inbounds i32, i32* %14, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DatumGetName(i32 %109)
  %111 = load i32, i32* @NAMEDATALEN, align 4
  %112 = call i32 @memcpy(i32* %105, i32 %110, i32 %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MemoryContextSwitchTo(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @NameStr(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @NameStr(i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @NameStr(i32 %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @ts_partitioning_info_create(i32 %121, i32 %126, i32 %131, i64 %134, i32 %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @MemoryContextSwitchTo(i32 %139)
  br label %141

141:                                              ; preds = %84, %77, %3
  %142 = load i32, i32* @Anum_dimension_integer_now_func_schema, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %17, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %174, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* @Anum_dimension_integer_now_func, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %17, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %174, label %155

155:                                              ; preds = %148
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  %159 = load i32, i32* @Anum_dimension_integer_now_func_schema, align 4
  %160 = call i64 @AttrNumberGetAttrOffset(i32 %159)
  %161 = getelementptr inbounds i32, i32* %14, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @DatumGetName(i32 %162)
  %164 = call i32 @namecpy(i32* %158, i32 %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* @Anum_dimension_integer_now_func, align 4
  %169 = call i64 @AttrNumberGetAttrOffset(i32 %168)
  %170 = getelementptr inbounds i32, i32* %14, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DatumGetName(i32 %171)
  %173 = call i32 @namecpy(i32* %167, i32 %172)
  br label %174

174:                                              ; preds = %155, %148, %141
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DIMENSION_TYPE_CLOSED, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load i32, i32* @Anum_dimension_num_slices, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %14, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @DatumGetInt16(i32 %185)
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  store i8* %186, i8** %189, align 8
  br label %199

190:                                              ; preds = %174
  %191 = load i32, i32* @Anum_dimension_interval_length, align 4
  %192 = call i64 @AttrNumberGetAttrOffset(i32 %191)
  %193 = getelementptr inbounds i32, i32* %14, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @DatumGetInt64(i32 %194)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  br label %199

199:                                              ; preds = %190, %180
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @NameStr(i32 %204)
  %206 = call i32 @get_attnum(i32 %200, i32 %205)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %209)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i64 @dimension_type(%struct.TYPE_8__*) #2

declare dso_local i8* @DatumGetInt32(i32) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i32 @DatumGetBool(i32) #2

declare dso_local i32 @DatumGetObjectId(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @DatumGetName(i32) #2

declare dso_local i8* @DatumGetInt16(i32) #2

declare dso_local i32 @MemoryContextSwitchTo(i32) #2

declare dso_local i32 @ts_partitioning_info_create(i32, i32, i32, i64, i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @namecpy(i32*, i32) #2

declare dso_local i32 @DatumGetInt64(i32) #2

declare dso_local i32 @get_attnum(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
