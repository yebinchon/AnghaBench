; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_get_context.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context_key = common dso_local global i32 0, align 4
@base_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to clone fz_context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_context(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @context_key, align 4
  %6 = call i32 @pthread_getspecific(i32 %5)
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @base_context, align 4
  %15 = call i32* @fz_clone_context(i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @jni_throw_oom(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @context_key, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @pthread_setspecific(i32 %22, i32* %23)
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** %2, align 8
  br label %26

26:                                               ; preds = %21, %18, %11
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

declare dso_local i32 @pthread_getspecific(i32) #1

declare dso_local i32* @fz_clone_context(i32) #1

declare dso_local i32 @jni_throw_oom(i32*, i8*) #1

declare dso_local i32 @pthread_setspecific(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
