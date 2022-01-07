; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_file_from_index.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_file_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_file_from_index(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.index_state*, %struct.index_state** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @index_name_pos(%struct.index_state* %6, i8* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 0, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.index_state*, %struct.index_state** %3, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.index_state*, %struct.index_state** %3, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcmp(i32 %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %24, %18
  %39 = phi i1 [ false, %18 ], [ %37, %24 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.index_state*, %struct.index_state** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @remove_index_entry_at(%struct.index_state* %41, i32 %42)
  br label %18

44:                                               ; preds = %38
  ret i32 0
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
