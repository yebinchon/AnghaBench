; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_ruby.c_ex_rubydo.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_ruby.c_ex_rubydo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@OK = common dso_local global i64 0, align 8
@T_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"E265: $_ must be an instance of String\00", align 1
@NOT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_rubydo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = call i64 (...) @ensure_ruby_initialized()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i64 @u_save(i64 %12, i64 %16)
  %18 = load i64, i64* @OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %76

21:                                               ; preds = %8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %69, %21
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @ml_get(i64 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @vim_str2rb_enc_str(i8* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @rb_lastline_set(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @eval_enc_string_protect(i8* %41, i32* %3)
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @error_print(i32 %46)
  br label %72

48:                                               ; preds = %31
  %49 = call i32 (...) @rb_lastline_get()
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @NIL_P(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @TYPE(i32 %54)
  %56 = load i64, i64* @T_STRING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @EMSG(i32 %59)
  br label %76

61:                                               ; preds = %53
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @StringValuePtr(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ml_replace(i64 %62, i32* %65, i32 1)
  %67 = call i32 (...) @changed()
  br label %68

68:                                               ; preds = %61, %48
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %25

72:                                               ; preds = %45, %25
  %73 = call i32 (...) @check_cursor()
  %74 = load i32, i32* @NOT_VALID, align 4
  %75 = call i32 @update_curbuf(i32 %74)
  br label %76

76:                                               ; preds = %20, %58, %72, %1
  ret void
}

declare dso_local i64 @ensure_ruby_initialized(...) #1

declare dso_local i64 @u_save(i64, i64) #1

declare dso_local i32 @vim_str2rb_enc_str(i8*) #1

declare dso_local i64 @ml_get(i64) #1

declare dso_local i32 @rb_lastline_set(i32) #1

declare dso_local i32 @eval_enc_string_protect(i8*, i32*) #1

declare dso_local i32 @error_print(i32) #1

declare dso_local i32 @rb_lastline_get(...) #1

declare dso_local i32 @NIL_P(i32) #1

declare dso_local i64 @TYPE(i32) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ml_replace(i64, i32*, i32) #1

declare dso_local i64 @StringValuePtr(i32) #1

declare dso_local i32 @changed(...) #1

declare dso_local i32 @check_cursor(...) #1

declare dso_local i32 @update_curbuf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
