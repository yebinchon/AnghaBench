; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_match.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_table_entry = type { i32* }

@options_table = common dso_local global %struct.options_table_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @options_match(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.options_table_entry*, align 8
  %9 = alloca %struct.options_table_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i8* @options_parse(i8* %12, i32* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %77

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %4, align 8
  br label %77

28:                                               ; preds = %18
  store %struct.options_table_entry* null, %struct.options_table_entry** %9, align 8
  %29 = load %struct.options_table_entry*, %struct.options_table_entry** @options_table, align 8
  store %struct.options_table_entry* %29, %struct.options_table_entry** %8, align 8
  br label %30

30:                                               ; preds = %62, %28
  %31 = load %struct.options_table_entry*, %struct.options_table_entry** %8, align 8
  %32 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.options_table_entry*, %struct.options_table_entry** %8, align 8
  %37 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strcmp(i32* %38, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load %struct.options_table_entry*, %struct.options_table_entry** %8, align 8
  store %struct.options_table_entry* %43, %struct.options_table_entry** %9, align 8
  br label %65

44:                                               ; preds = %35
  %45 = load %struct.options_table_entry*, %struct.options_table_entry** %8, align 8
  %46 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @strncmp(i32* %47, i8* %48, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %54 = icmp ne %struct.options_table_entry* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  store i32 1, i32* %56, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  store i8* null, i8** %4, align 8
  br label %77

59:                                               ; preds = %52
  %60 = load %struct.options_table_entry*, %struct.options_table_entry** %8, align 8
  store %struct.options_table_entry* %60, %struct.options_table_entry** %9, align 8
  br label %61

61:                                               ; preds = %59, %44
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.options_table_entry*, %struct.options_table_entry** %8, align 8
  %64 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %63, i32 1
  store %struct.options_table_entry* %64, %struct.options_table_entry** %8, align 8
  br label %30

65:                                               ; preds = %42, %30
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %69 = icmp eq %struct.options_table_entry* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32*, i32** %7, align 8
  store i32 0, i32* %71, align 4
  store i8* null, i8** %4, align 8
  br label %77

72:                                               ; preds = %65
  %73 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %74 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @xstrdup(i32* %75)
  store i8* %76, i8** %4, align 8
  br label %77

77:                                               ; preds = %72, %70, %55, %25, %17
  %78 = load i8*, i8** %4, align 8
  ret i8* %78
}

declare dso_local i8* @options_parse(i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
