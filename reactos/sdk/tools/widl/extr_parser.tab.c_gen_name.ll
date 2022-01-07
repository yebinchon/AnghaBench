; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_gen_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_gen_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_name.format = internal constant [31 x i8] c"__WIDL_%s_generated_name_%08lX\00", align 16
@gen_name.n = internal global i64 0, align 8
@gen_name.file_id = internal global i8* null, align 8
@gen_name.size = internal global i64 0, align 8
@input_idl_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".idl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @gen_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @gen_name.file_id, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @input_idl_name, align 4
  %7 = call i8* @dup_basename(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** @gen_name.file_id, align 8
  br label %9

9:                                                ; preds = %21, %5
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @isalnum(i8 zeroext %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  store i8 95, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %13
  br label %21

21:                                               ; preds = %20
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 8
  br label %9

24:                                               ; preds = %9
  %25 = load i8*, i8** @gen_name.file_id, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = add i64 24, %27
  %29 = add i64 %28, 8
  store i64 %29, i64* @gen_name.size, align 8
  br label %30

30:                                               ; preds = %24, %0
  %31 = load i64, i64* @gen_name.size, align 8
  %32 = call i8* @xmalloc(i64 %31)
  store i8* %32, i8** %1, align 8
  %33 = load i8*, i8** %1, align 8
  %34 = load i8*, i8** @gen_name.file_id, align 8
  %35 = load i64, i64* @gen_name.n, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @gen_name.n, align 8
  %37 = trunc i64 %35 to i32
  %38 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @gen_name.format, i64 0, i64 0), i8* %34, i32 %37)
  %39 = load i8*, i8** %1, align 8
  ret i8* %39
}

declare dso_local i8* @dup_basename(i32, i8*) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
