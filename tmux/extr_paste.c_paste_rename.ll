; ModuleID = '/home/carl/AnghaBench/tmux/extr_paste.c_paste_rename.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_paste.c_paste_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paste_buffer = type { i64, i8* }

@.str = private unnamed_addr constant [10 x i8] c"no buffer\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"new name is empty\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"no buffer %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"buffer %s already exists\00", align 1
@paste_name_tree = common dso_local global i32 0, align 4
@paste_by_name = common dso_local global i32 0, align 4
@paste_num_automatic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paste_rename(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.paste_buffer*, align 8
  %9 = alloca %struct.paste_buffer*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17, %14
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i8* @xstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  store i32 -1, i32* %4, align 4
  br label %95

29:                                               ; preds = %17
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %29
  %38 = load i8**, i8*** %7, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i8* @xstrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  store i32 -1, i32* %4, align 4
  br label %95

44:                                               ; preds = %32
  %45 = load i8*, i8** %5, align 8
  %46 = call %struct.paste_buffer* @paste_get_name(i8* %45)
  store %struct.paste_buffer* %46, %struct.paste_buffer** %8, align 8
  %47 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %48 = icmp eq %struct.paste_buffer* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i8**, i8*** %7, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @xasprintf(i8** %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %49
  store i32 -1, i32* %4, align 4
  br label %95

57:                                               ; preds = %44
  %58 = load i8*, i8** %6, align 8
  %59 = call %struct.paste_buffer* @paste_get_name(i8* %58)
  store %struct.paste_buffer* %59, %struct.paste_buffer** %9, align 8
  %60 = load %struct.paste_buffer*, %struct.paste_buffer** %9, align 8
  %61 = icmp ne %struct.paste_buffer* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8**, i8*** %7, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @xasprintf(i8** %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %62
  store i32 -1, i32* %4, align 4
  br label %95

70:                                               ; preds = %57
  %71 = load i32, i32* @paste_name_tree, align 4
  %72 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %73 = call i32 @RB_REMOVE(i32 %71, i32* @paste_by_name, %struct.paste_buffer* %72)
  %74 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %75 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @xstrdup(i8* %78)
  %80 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %81 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %83 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @paste_num_automatic, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* @paste_num_automatic, align 4
  br label %89

89:                                               ; preds = %86, %70
  %90 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %91 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @paste_name_tree, align 4
  %93 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %94 = call i32 @RB_INSERT(i32 %92, i32* @paste_by_name, %struct.paste_buffer* %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %69, %56, %43, %28
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.paste_buffer* @paste_get_name(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.paste_buffer*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.paste_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
