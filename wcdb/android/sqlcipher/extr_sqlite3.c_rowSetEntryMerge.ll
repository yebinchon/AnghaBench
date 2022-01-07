; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_rowSetEntryMerge.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_rowSetEntryMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.RowSetEntry*, %struct.RowSetEntry*)* @rowSetEntryMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry* %0, %struct.RowSetEntry* %1) #0 {
  %3 = alloca %struct.RowSetEntry*, align 8
  %4 = alloca %struct.RowSetEntry*, align 8
  %5 = alloca %struct.RowSetEntry, align 8
  %6 = alloca %struct.RowSetEntry*, align 8
  store %struct.RowSetEntry* %0, %struct.RowSetEntry** %3, align 8
  store %struct.RowSetEntry* %1, %struct.RowSetEntry** %4, align 8
  store %struct.RowSetEntry* %5, %struct.RowSetEntry** %6, align 8
  %7 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %8 = icmp ne %struct.RowSetEntry* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %11 = icmp ne %struct.RowSetEntry* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %97, %12
  %17 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %18 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %17, i32 0, i32 1
  %19 = load %struct.RowSetEntry*, %struct.RowSetEntry** %18, align 8
  %20 = icmp eq %struct.RowSetEntry* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %23 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %26 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %25, i32 0, i32 1
  %27 = load %struct.RowSetEntry*, %struct.RowSetEntry** %26, align 8
  %28 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %24, %29
  br label %31

31:                                               ; preds = %21, %16
  %32 = phi i1 [ true, %16 ], [ %30, %21 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %36 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %35, i32 0, i32 1
  %37 = load %struct.RowSetEntry*, %struct.RowSetEntry** %36, align 8
  %38 = icmp eq %struct.RowSetEntry* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %41 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %44 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %43, i32 0, i32 1
  %45 = load %struct.RowSetEntry*, %struct.RowSetEntry** %44, align 8
  %46 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %42, %47
  br label %49

49:                                               ; preds = %39, %31
  %50 = phi i1 [ true, %31 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %54 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %57 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %55, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %49
  %61 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %62 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %65 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %70 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %71 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %70, i32 0, i32 1
  store %struct.RowSetEntry* %69, %struct.RowSetEntry** %71, align 8
  store %struct.RowSetEntry* %69, %struct.RowSetEntry** %6, align 8
  br label %72

72:                                               ; preds = %68, %60
  %73 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %74 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %73, i32 0, i32 1
  %75 = load %struct.RowSetEntry*, %struct.RowSetEntry** %74, align 8
  store %struct.RowSetEntry* %75, %struct.RowSetEntry** %3, align 8
  %76 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %77 = icmp eq %struct.RowSetEntry* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %80 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %81 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %80, i32 0, i32 1
  store %struct.RowSetEntry* %79, %struct.RowSetEntry** %81, align 8
  br label %98

82:                                               ; preds = %72
  br label %97

83:                                               ; preds = %49
  %84 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %85 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %86 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %85, i32 0, i32 1
  store %struct.RowSetEntry* %84, %struct.RowSetEntry** %86, align 8
  store %struct.RowSetEntry* %84, %struct.RowSetEntry** %6, align 8
  %87 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %88 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %87, i32 0, i32 1
  %89 = load %struct.RowSetEntry*, %struct.RowSetEntry** %88, align 8
  store %struct.RowSetEntry* %89, %struct.RowSetEntry** %4, align 8
  %90 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %91 = icmp eq %struct.RowSetEntry* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  %94 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %95 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %94, i32 0, i32 1
  store %struct.RowSetEntry* %93, %struct.RowSetEntry** %95, align 8
  br label %98

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %82
  br label %16

98:                                               ; preds = %92, %78
  %99 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %5, i32 0, i32 1
  %100 = load %struct.RowSetEntry*, %struct.RowSetEntry** %99, align 8
  ret %struct.RowSetEntry* %100
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
