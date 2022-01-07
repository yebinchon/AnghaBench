; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-verify.c_verify_entry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-verify.c_verify_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, i32, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid data object of entry\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@OBJECT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Hash mismatch for data object of entry\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Data object missing from hash table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_19__*, i64, %struct.TYPE_19__*, i64)* @verify_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_entry(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, i64 %2, %struct.TYPE_19__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = call i32 @assert(%struct.TYPE_19__* %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = call i32 @assert(%struct.TYPE_19__* %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = call i32 @assert(%struct.TYPE_19__* %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = call i64 @journal_file_entry_n_items(%struct.TYPE_19__* %24)
  store i64 %25, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %102, %5
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %26
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le64toh(i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le64toh(i32 %47)
  store i64 %48, i64* %16, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @contains_uint64(i32 %51, %struct.TYPE_19__* %52, i64 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %30
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @error(i64 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EBADMSG, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %106

62:                                               ; preds = %30
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = load i32, i32* @OBJECT_DATA, align 4
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @journal_file_move_to_object(%struct.TYPE_19__* %63, i32 %64, i64 %65, %struct.TYPE_19__** %17)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %106

71:                                               ; preds = %62
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @le64toh(i32 %75)
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @error(i64 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EBADMSG, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %106

84:                                               ; preds = %71
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @data_object_in_hash_table(%struct.TYPE_19__* %85, i64 %86, i64 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %106

93:                                               ; preds = %84
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @error(i64 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @EBADMSG, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %106

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %26

105:                                              ; preds = %26
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %96, %91, %79, %69, %57
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @assert(%struct.TYPE_19__*) #1

declare dso_local i64 @journal_file_entry_n_items(%struct.TYPE_19__*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @contains_uint64(i32, %struct.TYPE_19__*, i64, i64) #1

declare dso_local i32 @error(i64, i8*) #1

declare dso_local i32 @journal_file_move_to_object(%struct.TYPE_19__*, i32, i64, %struct.TYPE_19__**) #1

declare dso_local i32 @data_object_in_hash_table(%struct.TYPE_19__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
