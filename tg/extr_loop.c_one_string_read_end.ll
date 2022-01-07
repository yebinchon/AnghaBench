; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_one_string_read_end.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_one_string_read_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@read_one_string = common dso_local global i64 0, align 8
@one_string_prompt = common dso_local global i32* null, align 8
@one_string = common dso_local global i32 0, align 4
@one_string_results = common dso_local global i32** null, align 8
@one_string_num = common dso_local global i64 0, align 8
@one_string_total_args = common dso_local global i64 0, align 8
@TLS = common dso_local global i32 0, align 4
@string_cb_arg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @one_string_read_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_string_read_end() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fflush(i32 %3)
  store i64 0, i64* @read_one_string, align 8
  %5 = load i32*, i32** @one_string_prompt, align 8
  %6 = call i32 @tfree_str(i32* %5)
  store i32* null, i32** @one_string_prompt, align 8
  %7 = call i32 (...) @reactivate_readline()
  %8 = load i32, i32* @one_string, align 4
  %9 = call i32* @tstrdup(i32 %8)
  %10 = load i32**, i32*** @one_string_results, align 8
  %11 = load i64, i64* @one_string_num, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  store i32* %9, i32** %12, align 8
  %13 = load i64, i64* @one_string_num, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* @one_string_num, align 8
  %15 = load i64, i64* @one_string_num, align 8
  %16 = load i64, i64* @one_string_total_args, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @TLS, align 4
  %20 = call i32 @do_get_string(i32 %19)
  br label %43

21:                                               ; preds = %0
  %22 = load i32, i32* @TLS, align 4
  %23 = load i32**, i32*** @one_string_results, align 8
  %24 = bitcast i32** %23 to i8*
  %25 = load i32, i32* @string_cb_arg, align 4
  %26 = call i32 @one_string_cb(i32 %22, i8* %24, i32 %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %39, %21
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @one_string_total_args, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32**, i32*** @one_string_results, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @tfree_str(i32* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %18
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @tfree_str(i32*) #1

declare dso_local i32 @reactivate_readline(...) #1

declare dso_local i32* @tstrdup(i32) #1

declare dso_local i32 @do_get_string(i32) #1

declare dso_local i32 @one_string_cb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
