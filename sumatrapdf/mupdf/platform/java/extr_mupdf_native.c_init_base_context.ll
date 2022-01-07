; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_init_base_context.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_init_base_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context_key = common dso_local global i64 0, align 8
@drop_tls_context = common dso_local global i32 0, align 4
@FZ_LOCK_MAX = common dso_local global i32 0, align 4
@mutexes = common dso_local global i32* null, align 8
@locks = common dso_local global i32 0, align 4
@FZ_STORE_DEFAULT = common dso_local global i32 0, align 4
@base_context = common dso_local global i32 0, align 4
@TLS_OUT_OF_INDEXES = common dso_local global i64 0, align 8
@load_droid_cjk_font = common dso_local global i32 0, align 4
@load_droid_fallback_font = common dso_local global i32 0, align 4
@load_droid_font = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @init_base_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_base_context(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @drop_tls_context, align 4
  %6 = call i32 @pthread_key_create(i64* @context_key, i32 %5)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FZ_LOCK_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i32*, i32** @mutexes, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @pthread_mutex_init(i32* %15, i32* null)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* @FZ_STORE_DEFAULT, align 4
  %22 = call i32 @fz_new_context(i32* null, i32* @locks, i32 %21)
  store i32 %22, i32* @base_context, align 4
  %23 = load i32, i32* @base_context, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @base_context, align 4
  %28 = call i32 @fz_register_document_handlers(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @pthread_key_create(i64*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32 @fz_register_document_handlers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
