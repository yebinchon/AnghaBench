; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_rowSetListToTree.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_rowSetListToTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { %struct.RowSetEntry*, %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.RowSetEntry*)* @rowSetListToTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetListToTree(%struct.RowSetEntry* %0) #0 {
  %2 = alloca %struct.RowSetEntry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.RowSetEntry*, align 8
  %5 = alloca %struct.RowSetEntry*, align 8
  store %struct.RowSetEntry* %0, %struct.RowSetEntry** %2, align 8
  %6 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %7 = icmp ne %struct.RowSetEntry* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  store %struct.RowSetEntry* %10, %struct.RowSetEntry** %4, align 8
  %11 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %12 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %11, i32 0, i32 0
  %13 = load %struct.RowSetEntry*, %struct.RowSetEntry** %12, align 8
  store %struct.RowSetEntry* %13, %struct.RowSetEntry** %2, align 8
  %14 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %15 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %14, i32 0, i32 0
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %15, align 8
  %16 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %17 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %16, i32 0, i32 1
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %17, align 8
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %34, %1
  %19 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  %20 = icmp ne %struct.RowSetEntry* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  store %struct.RowSetEntry* %22, %struct.RowSetEntry** %5, align 8
  %23 = load %struct.RowSetEntry*, %struct.RowSetEntry** %2, align 8
  store %struct.RowSetEntry* %23, %struct.RowSetEntry** %4, align 8
  %24 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %25 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %24, i32 0, i32 0
  %26 = load %struct.RowSetEntry*, %struct.RowSetEntry** %25, align 8
  store %struct.RowSetEntry* %26, %struct.RowSetEntry** %2, align 8
  %27 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %28 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %29 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %28, i32 0, i32 1
  store %struct.RowSetEntry* %27, %struct.RowSetEntry** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %2, i32 %30)
  %32 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %33 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %32, i32 0, i32 0
  store %struct.RowSetEntry* %31, %struct.RowSetEntry** %33, align 8
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  ret %struct.RowSetEntry* %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
