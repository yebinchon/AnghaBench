; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lex.c_lj_lex_token2str.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lex.c_lj_lex_token2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TK_OFS = common dso_local global i64 0, align 8
@tokennames = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"char(%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lj_lex_token2str(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TK_OFS, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i8**, i8*** @tokennames, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @TK_OFS, align 8
  %13 = sub nsw i64 %11, %12
  %14 = sub nsw i64 %13, 1
  %15 = getelementptr inbounds i8*, i8** %10, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @lj_char_iscntrl(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @lj_strfmt_pushf(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i8* %26, i8** %3, align 8
  br label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i8* @lj_strfmt_pushf(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %27, %21, %9
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i32 @lj_char_iscntrl(i64) #1

declare dso_local i8* @lj_strfmt_pushf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
