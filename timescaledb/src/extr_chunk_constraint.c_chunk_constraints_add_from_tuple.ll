; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraints_add_from_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_chunk_constraints_add_from_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Natts_chunk_constraint = common dso_local global i32 0, align 4
@Anum_chunk_constraint_constraint_name = common dso_local global i32 0, align 4
@Anum_chunk_constraint_dimension_slice_id = common dso_local global i32 0, align 4
@Anum_chunk_constraint_hypertable_constraint_name = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Anum_chunk_constraint_chunk_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*)* @chunk_constraints_add_from_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chunk_constraints_add_from_tuple(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load i32, i32* @Natts_chunk_constraint, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @Natts_chunk_constraint, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @heap_deform_tuple(i32 %20, i32 %23, i32* %17, i32* %14)
  %25 = load i32, i32* @Anum_chunk_constraint_constraint_name, align 4
  %26 = call i64 @AttrNumberGetAttrOffset(i32 %25)
  %27 = getelementptr inbounds i32, i32* %17, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @DatumGetName(i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* @Anum_chunk_constraint_dimension_slice_id, align 4
  %31 = call i64 @AttrNumberGetAttrOffset(i32 %30)
  %32 = getelementptr inbounds i32, i32* %14, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  %36 = load i32, i32* @Anum_chunk_constraint_hypertable_constraint_name, align 4
  %37 = call i64 @AttrNumberGetAttrOffset(i32 %36)
  %38 = getelementptr inbounds i32, i32* %17, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @DatumGetName(i32 %39)
  store i32* %40, i32** %10, align 8
  br label %51

41:                                               ; preds = %2
  %42 = load i32, i32* @Anum_chunk_constraint_dimension_slice_id, align 4
  %43 = call i64 @AttrNumberGetAttrOffset(i32 %42)
  %44 = getelementptr inbounds i32, i32* %17, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @DatumGetInt32(i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i32, i32* @namein, align 4
  %48 = call i32 @CStringGetDatum(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @DirectFunctionCall1(i32 %47, i32 %48)
  %50 = call i32* @DatumGetName(i32 %49)
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %41, %35
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @Anum_chunk_constraint_chunk_id, align 4
  %54 = call i64 @AttrNumberGetAttrOffset(i32 %53)
  %55 = getelementptr inbounds i32, i32* %17, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @DatumGetInt32(i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @NameStr(i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NameStr(i32 %63)
  %65 = call i32* @chunk_constraints_add(i32* %52, i64 %57, i64 %58, i32 %61, i32 %64)
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i32* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i32* @DatumGetName(i32) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i64 @DatumGetInt32(i32) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i32* @chunk_constraints_add(i32*, i64, i64, i32, i32) #2

declare dso_local i32 @NameStr(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
