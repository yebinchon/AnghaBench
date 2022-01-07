; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_tuple_update.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_tuple_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@Natts_dimension = common dso_local global i32 0, align 4
@Anum_dimension_column_name = common dso_local global i32 0, align 4
@Anum_dimension_column_type = common dso_local global i32 0, align 4
@Anum_dimension_num_slices = common dso_local global i32 0, align 4
@Anum_dimension_partitioning_func = common dso_local global i32 0, align 4
@Anum_dimension_partitioning_func_schema = common dso_local global i32 0, align 4
@Anum_dimension_integer_now_func = common dso_local global i32 0, align 4
@Anum_dimension_integer_now_func_schema = common dso_local global i32 0, align 4
@Anum_dimension_interval_length = common dso_local global i32 0, align 4
@SCAN_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @dimension_tuple_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dimension_tuple_update(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load i32, i32* @Natts_dimension, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @Natts_dimension, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @heap_deform_tuple(%struct.TYPE_9__* %22, i32 %25, i32* %16, i32* %19)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %48, 0
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ false, %38 ], [ %49, %44 ]
  br label %52

52:                                               ; preds = %50, %32
  %53 = phi i1 [ true, %32 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  %59 = call i32 @NameGetDatum(i32* %58)
  %60 = load i32, i32* @Anum_dimension_column_name, align 4
  %61 = call i64 @AttrNumberGetAttrOffset(i32 %60)
  %62 = getelementptr inbounds i32, i32* %16, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ObjectIdGetDatum(i32 %66)
  %68 = load i32, i32* @Anum_dimension_column_type, align 4
  %69 = call i64 @AttrNumberGetAttrOffset(i32 %68)
  %70 = getelementptr inbounds i32, i32* %16, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @Int16GetDatum(i64 %74)
  %76 = load i32, i32* @Anum_dimension_num_slices, align 4
  %77 = call i64 @AttrNumberGetAttrOffset(i32 %76)
  %78 = getelementptr inbounds i32, i32* %16, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @Anum_dimension_partitioning_func, align 4
  %80 = call i64 @AttrNumberGetAttrOffset(i32 %79)
  %81 = getelementptr inbounds i32, i32* %19, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %52
  %85 = load i32, i32* @Anum_dimension_partitioning_func_schema, align 4
  %86 = call i64 @AttrNumberGetAttrOffset(i32 %85)
  %87 = getelementptr inbounds i32, i32* %19, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = call i32 @NameGetDatum(i32* %93)
  %95 = load i32, i32* @Anum_dimension_partitioning_func, align 4
  %96 = call i64 @AttrNumberGetAttrOffset(i32 %95)
  %97 = getelementptr inbounds i32, i32* %16, i64 %96
  store i32 %94, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = call i32 @NameGetDatum(i32* %100)
  %102 = load i32, i32* @Anum_dimension_partitioning_func_schema, align 4
  %103 = call i64 @AttrNumberGetAttrOffset(i32 %102)
  %104 = getelementptr inbounds i32, i32* %16, i64 %103
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %90, %84, %52
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @NameStr(i32 %109)
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %105
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @NameStr(i32 %118)
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %114
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = call i32 @NameGetDatum(i32* %126)
  %128 = load i32, i32* @Anum_dimension_integer_now_func, align 4
  %129 = call i64 @AttrNumberGetAttrOffset(i32 %128)
  %130 = getelementptr inbounds i32, i32* %16, i64 %129
  store i32 %127, i32* %130, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = call i32 @NameGetDatum(i32* %133)
  %135 = load i32, i32* @Anum_dimension_integer_now_func_schema, align 4
  %136 = call i64 @AttrNumberGetAttrOffset(i32 %135)
  %137 = getelementptr inbounds i32, i32* %16, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @Anum_dimension_integer_now_func, align 4
  %139 = call i64 @AttrNumberGetAttrOffset(i32 %138)
  %140 = getelementptr inbounds i32, i32* %19, i64 %139
  store i32 0, i32* %140, align 4
  %141 = load i32, i32* @Anum_dimension_integer_now_func_schema, align 4
  %142 = call i64 @AttrNumberGetAttrOffset(i32 %141)
  %143 = getelementptr inbounds i32, i32* %19, i64 %142
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %123, %114, %105
  %145 = load i32, i32* @Anum_dimension_interval_length, align 4
  %146 = call i64 @AttrNumberGetAttrOffset(i32 %145)
  %147 = getelementptr inbounds i32, i32* %19, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %144
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @Int64GetDatum(i64 %154)
  %156 = load i32, i32* @Anum_dimension_interval_length, align 4
  %157 = call i64 @AttrNumberGetAttrOffset(i32 %156)
  %158 = getelementptr inbounds i32, i32* %16, i64 %157
  store i32 %155, i32* %158, align 4
  br label %159

159:                                              ; preds = %150, %144
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @heap_form_tuple(i32 %162, i32* %16, i32* %19)
  store i32 %163, i32* %6, align 4
  %164 = call i32 (...) @ts_catalog_database_info_get()
  %165 = call i32 @ts_catalog_database_info_become_owner(i32 %164, i32* %10)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @ts_catalog_update_tid(i32 %168, i32* %172, i32 %173)
  %175 = call i32 @ts_catalog_restore_user(i32* %10)
  %176 = load i32, i32* @SCAN_DONE, align 4
  %177 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %177)
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(%struct.TYPE_9__*, i32, i32*, i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int16GetDatum(i64) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i32 @Int64GetDatum(i64) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #2

declare dso_local i32 @ts_catalog_database_info_get(...) #2

declare dso_local i32 @ts_catalog_update_tid(i32, i32*, i32) #2

declare dso_local i32 @ts_catalog_restore_user(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
