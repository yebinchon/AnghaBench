; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_hypertable_constraint_matches_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_constraint.c_hypertable_constraint_matches_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Natts_chunk_constraint = common dso_local global i32 0, align 4
@Anum_chunk_constraint_hypertable_constraint_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @hypertable_constraint_matches_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypertable_constraint_matches_tuple(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @Natts_chunk_constraint, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @Natts_chunk_constraint, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @heap_deform_tuple(i32 %20, i32 %23, i32* %17, i32* %14)
  %25 = load i32, i32* @Anum_chunk_constraint_hypertable_constraint_name, align 4
  %26 = call i64 @AttrNumberGetAttrOffset(i32 %25)
  %27 = getelementptr inbounds i32, i32* %14, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @Anum_chunk_constraint_hypertable_constraint_name, align 4
  %33 = call i64 @AttrNumberGetAttrOffset(i32 %32)
  %34 = getelementptr inbounds i32, i32* %17, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @DatumGetName(i32 %35)
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @NameStr(i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %43, %30
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #2

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i32* @DatumGetName(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
