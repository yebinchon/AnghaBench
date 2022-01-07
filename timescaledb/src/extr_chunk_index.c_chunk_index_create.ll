; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @chunk_index_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_index_create(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = call i64 @OidIsValid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  br label %32

18:                                               ; preds = %6
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = call i32 @chunk_relation_index_create(i32 %19, i32 %20, i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @get_rel_name(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @RelationGetRelid(i32 %28)
  %30 = call i32 @get_rel_name(i32 %29)
  %31 = call i32 @chunk_index_insert(i32 %24, i32 %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @chunk_relation_index_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @chunk_index_insert(i32, i32, i32, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
