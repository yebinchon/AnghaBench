; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_new_index_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_new_index_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_index_name.name = internal global [11 x i8] c"0000000000\00", align 1
@new_index_name.pos = internal global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"too many index names\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @new_index_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @new_index_name() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @new_index_name.pos, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* @new_index_name.name, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 90
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @new_index_name.pos, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @new_index_name.pos, align 4
  %11 = load i32, i32* @new_index_name.pos, align 4
  %12 = icmp sgt i32 %11, 9
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* @new_index_name.pos, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [11 x i8], [11 x i8]* @new_index_name.name, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = add i8 %20, 1
  store i8 %21, i8* %19, align 1
  %22 = call i8* @xmalloc(i32 11)
  store i8* %22, i8** %1, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @new_index_name.name, i64 0, i64 0))
  %25 = load i8*, i8** %1, align 8
  ret i8* %25
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
