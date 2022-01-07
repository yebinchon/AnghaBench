; ModuleID = '/home/carl/AnghaBench/tmux/extr_paste.c_paste_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_paste.c_paste_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paste_buffer = type { i8*, i64, i32, i64, i64, i8* }

@.str = private unnamed_addr constant [18 x i8] c"empty buffer name\00", align 1
@paste_next_order = common dso_local global i32 0, align 4
@paste_name_tree = common dso_local global i32 0, align 4
@paste_by_name = common dso_local global i32 0, align 4
@paste_time_tree = common dso_local global i32 0, align 4
@paste_by_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paste_set(i8* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.paste_buffer*, align 8
  %11 = alloca %struct.paste_buffer*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8**, i8*** %9, align 8
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  store i32 0, i32* %5, align 4
  br label %76

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @paste_add(i32* null, i8* %26, i64 %27)
  store i32 0, i32* %5, align 4
  br label %76

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8**, i8*** %9, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i8* @xstrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = load i8**, i8*** %9, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  store i32 -1, i32* %5, align 4
  br label %76

41:                                               ; preds = %29
  %42 = call %struct.paste_buffer* @xmalloc(i32 48)
  store %struct.paste_buffer* %42, %struct.paste_buffer** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @xstrdup(i8* %43)
  %45 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %46 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %49 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %52 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %54 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @paste_next_order, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @paste_next_order, align 4
  %57 = sext i32 %55 to i64
  %58 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %59 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = call i32 @time(i32* null)
  %61 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %62 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call %struct.paste_buffer* @paste_get_name(i8* %63)
  store %struct.paste_buffer* %64, %struct.paste_buffer** %11, align 8
  %65 = icmp ne %struct.paste_buffer* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %41
  %67 = load %struct.paste_buffer*, %struct.paste_buffer** %11, align 8
  %68 = call i32 @paste_free(%struct.paste_buffer* %67)
  br label %69

69:                                               ; preds = %66, %41
  %70 = load i32, i32* @paste_name_tree, align 4
  %71 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %72 = call i32 @RB_INSERT(i32 %70, i32* @paste_by_name, %struct.paste_buffer* %71)
  %73 = load i32, i32* @paste_time_tree, align 4
  %74 = load %struct.paste_buffer*, %struct.paste_buffer** %10, align 8
  %75 = call i32 @RB_INSERT(i32 %73, i32* @paste_by_time, %struct.paste_buffer* %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %40, %25, %19
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @paste_add(i32*, i8*, i64) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.paste_buffer* @xmalloc(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.paste_buffer* @paste_get_name(i8*) #1

declare dso_local i32 @paste_free(%struct.paste_buffer*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.paste_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
