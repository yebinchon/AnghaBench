; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_flush_output_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_flush_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error creating %s\0A\00", align 1
@output_buffer = common dso_local global i32 0, align 4
@output_buffer_pos = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Error writing to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_output_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @O_WRONLY, align 4
  %6 = load i32, i32* @O_CREAT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @O_TRUNC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @O_BINARY, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @open(i8* %4, i32 %11, i32 438)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @output_buffer, align 4
  %21 = load i64, i64* @output_buffer_pos, align 8
  %22 = call i64 @write(i32 %19, i32 %20, i64 %21)
  %23 = load i64, i64* @output_buffer_pos, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* @output_buffer, align 4
  %32 = call i32 @free(i32 %31)
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
