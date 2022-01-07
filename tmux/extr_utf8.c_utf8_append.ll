; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_append.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"UTF-8 character overflow\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"UTF-8 character size too large\00", align 1
@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_ERROR = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_append(%struct.utf8_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.utf8_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.utf8_data* %0, %struct.utf8_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %9 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %12 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @fatalx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %19 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @fatalx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %27 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 192
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %36 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %35, i32 0, i32 2
  store i32 255, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %30, %25
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %40 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %43 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32 %38, i32* %47, align 4
  %48 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %49 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %52 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, i32* @UTF8_MORE, align 4
  store i32 %56, i32* %3, align 4
  br label %83

57:                                               ; preds = %37
  %58 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %59 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 255
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @UTF8_ERROR, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %57
  %65 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %66 = call i64 @utf8_combine(%struct.utf8_data* %65, i32* %6)
  %67 = load i64, i64* @UTF8_DONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @UTF8_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %83

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @utf8_width(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @UTF8_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %80 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* @UTF8_DONE, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %75, %69, %62, %55
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i64 @utf8_combine(%struct.utf8_data*, i32*) #1

declare dso_local i32 @utf8_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
