; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_putn.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_putn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TERM_EARLYWRAP = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_putn(%struct.tty* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TERM_EARLYWRAP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %4
  %18 = load %struct.tty*, %struct.tty** %5, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tty*, %struct.tty** %5, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %17
  %27 = load %struct.tty*, %struct.tty** %5, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.tty*, %struct.tty** %5, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tty*, %struct.tty** %5, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %36, %26, %17, %4
  %46 = load %struct.tty*, %struct.tty** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @tty_add(%struct.tty* %46, i8* %47, i64 %48)
  %50 = load %struct.tty*, %struct.tty** %5, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.tty*, %struct.tty** %5, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %45
  %60 = load %struct.tty*, %struct.tty** %5, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.tty*, %struct.tty** %5, align 8
  %66 = getelementptr inbounds %struct.tty, %struct.tty* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load %struct.tty*, %struct.tty** %5, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.tty*, %struct.tty** %5, align 8
  %72 = getelementptr inbounds %struct.tty, %struct.tty* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.tty*, %struct.tty** %5, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %59
  %79 = load %struct.tty*, %struct.tty** %5, align 8
  %80 = getelementptr inbounds %struct.tty, %struct.tty* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %91

83:                                               ; preds = %59
  %84 = load i64, i64* @UINT_MAX, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.tty*, %struct.tty** %5, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = sext i32 %85 to i64
  %89 = load %struct.tty*, %struct.tty** %5, align 8
  %90 = getelementptr inbounds %struct.tty, %struct.tty* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %78
  br label %98

92:                                               ; preds = %45
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.tty*, %struct.tty** %5, align 8
  %95 = getelementptr inbounds %struct.tty, %struct.tty* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %92, %91
  ret void
}

declare dso_local i32 @tty_add(%struct.tty*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
