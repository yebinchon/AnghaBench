; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_ruby.c_buffer_delete.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_ruby.c_buffer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@OK = common dso_local global i64 0, align 8
@NOT_VALID = common dso_local global i32 0, align 4
@rb_eIndexError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"line number %ld out of range\00", align 1
@Qnil = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @buffer_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_delete(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_6__* @get_buf(i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @NUM2LONG(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %15, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @aucmd_prepbuf(i32* %7, %struct.TYPE_6__* %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @u_savedel(i64 %24, i32 1)
  %26 = load i64, i64* @OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ml_delete(i64 %29, i32 0)
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @deleted_lines_mark(i64 %31, i64 1)
  %33 = call i32 (...) @changed()
  br label %34

34:                                               ; preds = %28, %21
  %35 = call i32 @aucmd_restbuf(i32* %7)
  %36 = load i32, i32* @NOT_VALID, align 4
  %37 = call i32 @update_curbuf(i32 %36)
  br label %42

38:                                               ; preds = %14, %2
  %39 = load i32, i32* @rb_eIndexError, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @rb_raise(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @Qnil, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @get_buf(i32) #1

declare dso_local i64 @NUM2LONG(i32) #1

declare dso_local i32 @aucmd_prepbuf(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @u_savedel(i64, i32) #1

declare dso_local i32 @ml_delete(i64, i32) #1

declare dso_local i32 @deleted_lines_mark(i64, i64) #1

declare dso_local i32 @changed(...) #1

declare dso_local i32 @aucmd_restbuf(i32*) #1

declare dso_local i32 @update_curbuf(i32) #1

declare dso_local i32 @rb_raise(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
