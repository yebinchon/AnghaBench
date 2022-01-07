; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_ruby.c_buffer_append.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_ruby.c_buffer_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@rb_eIndexError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NULL line\00", align 1
@OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NOT_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"line number %ld out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @buffer_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_append(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_6__* @get_buf(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @StringValuePtr(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @NUM2LONG(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @rb_eIndexError, align 4
  %21 = call i32 (i32, i8*, ...) @rb_raise(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %58

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %26, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = call i32 @aucmd_prepbuf(i32* %10, %struct.TYPE_6__* %33)
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i64 @u_inssub(i64 %36)
  %38 = load i64, i64* @OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @ml_append(i64 %41, i32* %43, i32 0, i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @appended_lines_mark(i64 %46, i64 1)
  %48 = call i32 (...) @changed()
  br label %49

49:                                               ; preds = %40, %32
  %50 = call i32 @aucmd_restbuf(i32* %10)
  %51 = load i32, i32* @NOT_VALID, align 4
  %52 = call i32 @update_curbuf(i32 %51)
  br label %57

53:                                               ; preds = %25, %22
  %54 = load i32, i32* @rb_eIndexError, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i32 (i32, i8*, ...) @rb_raise(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_6__* @get_buf(i32) #1

declare dso_local i8* @StringValuePtr(i32) #1

declare dso_local i64 @NUM2LONG(i32) #1

declare dso_local i32 @rb_raise(i32, i8*, ...) #1

declare dso_local i32 @aucmd_prepbuf(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @u_inssub(i64) #1

declare dso_local i32 @ml_append(i64, i32*, i32, i32) #1

declare dso_local i32 @appended_lines_mark(i64, i64) #1

declare dso_local i32 @changed(...) #1

declare dso_local i32 @aucmd_restbuf(i32*) #1

declare dso_local i32 @update_curbuf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
