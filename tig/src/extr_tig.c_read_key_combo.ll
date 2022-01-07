; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_read_key_combo.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_read_key_combo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i32 }
%struct.key_combo = type { i32, i32, i32, %struct.keymap* }

@REQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@key_combo_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_key_combo(%struct.keymap* %0) #0 {
  %2 = alloca %struct.keymap*, align 8
  %3 = alloca %struct.key_combo, align 8
  %4 = alloca i8*, align 8
  store %struct.keymap* %0, %struct.keymap** %2, align 8
  %5 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %3, i32 0, i32 0
  %6 = load i32, i32* @REQ_NONE, align 4
  store i32 %6, i32* %5, align 8
  %7 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %3, i32 0, i32 1
  %8 = load %struct.keymap*, %struct.keymap** %2, align 8
  %9 = ptrtoint %struct.keymap* %8 to i32
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %3, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %3, i32 0, i32 3
  store %struct.keymap* null, %struct.keymap** %11, align 8
  %12 = load i32, i32* @key_combo_handler, align 4
  %13 = call i8* @read_prompt_incremental(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %12, %struct.key_combo* %3)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @REQ_NONE, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  ret i32 %22
}

declare dso_local i8* @read_prompt_incremental(i8*, i32, i32, i32, %struct.key_combo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
