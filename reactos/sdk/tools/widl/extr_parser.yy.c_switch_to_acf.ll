; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_switch_to_acf.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_switch_to_acf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@import_stack_ptr = common dso_local global i32 0, align 4
@acf_name = common dso_local global i32* null, align 8
@input_name = common dso_local global i32* null, align 8
@line_number = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"widl.XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not generate a temp name from %s\0A\00", align 1
@temp_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Could not open fd %s for writing\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Unable to open %s\0A\00", align 1
@YY_CURRENT_BUFFER = common dso_local global i32 0, align 4
@import_stack = common dso_local global %struct.TYPE_2__* null, align 8
@YY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @switch_to_acf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_to_acf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @import_stack_ptr, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @import_stack_ptr, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** @acf_name, align 8
  store i32* %11, i32** @input_name, align 8
  store i32* null, i32** @acf_name, align 8
  store i32 1, i32* @line_number, align 4
  %12 = call i8* @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @mkstemps(i8* %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** @temp_name, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32* @fdopen(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32*, i32** @input_name, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @wpp_parse(i32* %28, i32* %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %27
  %38 = load i8*, i8** @temp_name, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %39, i32** %5, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** @temp_name, align 8
  %43 = call i32 @error_loc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @YY_BUF_SIZE, align 4
  %53 = call i32 @parser__create_buffer(i32* %51, i32 %52)
  %54 = call i32 @parser__switch_to_buffer(i32 %53)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @mkstemps(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @wpp_parse(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error_loc(i8*, i8*) #1

declare dso_local i32 @parser__switch_to_buffer(i32) #1

declare dso_local i32 @parser__create_buffer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
