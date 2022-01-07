; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_pop_import.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_pop_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@import_stack_ptr = common dso_local global i32 0, align 4
@parser_in = common dso_local global i32 0, align 4
@YY_CURRENT_BUFFER = common dso_local global i32 0, align 4
@import_stack = common dso_local global %struct.TYPE_2__* null, align 8
@temp_name = common dso_local global i64 0, align 8
@input_name = common dso_local global i32 0, align 4
@line_number = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_import() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @import_stack_ptr, align 4
  %3 = sub nsw i32 %2, 1
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @parser_in, align 4
  %5 = call i32 @fclose(i32 %4)
  %6 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %7 = call i32 @parser__delete_buffer(i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @parser__switch_to_buffer(i32 %13)
  %15 = load i64, i64* @temp_name, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i64, i64* @temp_name, align 8
  %19 = call i32 @unlink(i64 %18)
  %20 = load i64, i64* @temp_name, align 8
  %21 = call i32 @free(i64 %20)
  br label %22

22:                                               ; preds = %17, %0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @temp_name, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @input_name, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* @line_number, align 4
  %41 = load i32, i32* @import_stack_ptr, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @import_stack_ptr, align 4
  ret void
}

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @parser__delete_buffer(i32) #1

declare dso_local i32 @parser__switch_to_buffer(i32) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
