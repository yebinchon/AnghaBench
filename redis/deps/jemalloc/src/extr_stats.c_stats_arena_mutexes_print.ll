; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_stats.c_stats_arena_mutexes_print.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_stats.c_stats_arena_mutexes_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex_prof_num_uint64_t_counters = common dso_local global i32 0, align 4
@mutex_prof_num_uint32_t_counters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mutexes\00", align 1
@mutex_prof_num_arena_mutexes = common dso_local global i64 0, align 8
@arena_mutex_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @stats_arena_mutexes_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_arena_mutexes_print(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @mutex_prof_num_uint64_t_counters, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @mutex_prof_num_uint32_t_counters, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = call i32 @emitter_row_init(i32* %5)
  %20 = call i32 @mutex_stats_init_cols(i32* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %15, i32* %18)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @emitter_json_dict_begin(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @emitter_table_row(i32* %23, i32* %5)
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @mutex_prof_num_arena_mutexes, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i8**, i8*** @arena_mutex_names, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @emitter_json_dict_begin(i32* %34, i8* %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @mutex_stats_read_arena(i32 %37, i64 %38, i8* %39, i32* %6, i32* %15, i32* %18)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @mutex_stats_emit(i32* %41, i32* %5, i32* %15, i32* %18)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @emitter_json_dict_end(i32* %43)
  br label %45

45:                                               ; preds = %29
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %25

48:                                               ; preds = %25
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @emitter_json_dict_end(i32* %49)
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @emitter_row_init(i32*) #2

declare dso_local i32 @mutex_stats_init_cols(i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @emitter_json_dict_begin(i32*, i8*) #2

declare dso_local i32 @emitter_table_row(i32*, i32*) #2

declare dso_local i32 @mutex_stats_read_arena(i32, i64, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @mutex_stats_emit(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @emitter_json_dict_end(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
