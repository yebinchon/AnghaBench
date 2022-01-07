; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@file_pointer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@test_result_info_list = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @read_file(i8* %4)
  br label %6

6:                                                ; preds = %53, %1
  %7 = call i32 (...) @skip_to_next_test()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %54

10:                                               ; preds = %6
  %11 = call %struct.TYPE_4__* @malloc(i32 4)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %10
  %18 = call i32 (...) @skip_whitespace()
  %19 = load i64, i64* @file_pointer, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @file_pointer, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @read_until(i8 signext 41, i32 %23)
  %25 = load i64, i64* @file_pointer, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @file_pointer, align 8
  %27 = load i64, i64* @file_pointer, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @file_pointer, align 8
  %29 = load i64, i64* @file_pointer, align 8
  %30 = add nsw i64 %29, 7
  store i64 %30, i64* @file_pointer, align 8
  %31 = load i64, i64* @file_pointer, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @file_pointer, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @read_until_end(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strncmp(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %48

45:                                               ; preds = %17
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_result_info_list, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** @test_result_info_list, align 8
  br label %53

53:                                               ; preds = %48
  br i1 true, label %6, label %54

54:                                               ; preds = %53, %9
  %55 = call i32 (...) @close_file()
  ret void
}

declare dso_local i32 @read_file(i8*) #1

declare dso_local i32 @skip_to_next_test(...) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @skip_whitespace(...) #1

declare dso_local i32 @read_until(i8 signext, i32) #1

declare dso_local i32 @read_until_end(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @close_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
