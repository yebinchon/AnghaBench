; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_hash.c_insert_hash.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_hash.c_insert_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @insert_hash(i32 %0, i8* %1, %struct.hash_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_table*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.hash_table* %2, %struct.hash_table** %6, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 2
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %19 = call i32 @grow_hash_table(%struct.hash_table* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %24 = call i8** @insert_hash_entry(i32 %21, i8* %22, %struct.hash_table* %23)
  ret i8** %24
}

declare dso_local i32 @grow_hash_table(%struct.hash_table*) #1

declare dso_local i8** @insert_hash_entry(i32, i8*, %struct.hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
