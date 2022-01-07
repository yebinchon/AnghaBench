; ModuleID = '/home/carl/AnghaBench/systemd/src/busctl/extr_busctl.c_json_transform_array_or_struct.c'
source_filename = "/home/carl/AnghaBench/systemd/src/busctl/extr_busctl.c_json_transform_array_or_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**)* @json_transform_array_or_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_transform_array_or_struct(i32** %0, i32** %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32** null, i32*** %7, align 8
  %9 = load i32**, i32*** %3, align 8
  %10 = call i32 @assert(i32** %9)
  %11 = load i32**, i32*** %4, align 8
  %12 = call i32 @assert(i32** %11)
  br label %13

13:                                               ; preds = %43, %2
  %14 = load i32**, i32*** %3, align 8
  %15 = call i32 @sd_bus_message_at_end(i32** %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @bus_log_parse_error(i32 %19)
  br label %51

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %46

25:                                               ; preds = %21
  %26 = load i32**, i32*** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  %30 = call i32 @GREEDY_REALLOC(i32** %26, i64 %27, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 (...) @log_oom()
  store i32 %33, i32* %8, align 4
  br label %51

34:                                               ; preds = %25
  %35 = load i32**, i32*** %3, align 8
  %36 = load i32**, i32*** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = call i32 @json_transform_one(i32** %35, i32** %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %51

43:                                               ; preds = %34
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %13

46:                                               ; preds = %24
  %47 = load i32**, i32*** %4, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @json_variant_new_array(i32** %47, i32** %48, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %42, %32, %18
  %52 = load i32**, i32*** %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @json_variant_unref_many(i32** %52, i64 %53)
  %55 = load i32**, i32*** %7, align 8
  %56 = call i32 @free(i32** %55)
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @sd_bus_message_at_end(i32**, i32) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32 @GREEDY_REALLOC(i32**, i64, i64) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @json_transform_one(i32**, i32**) #1

declare dso_local i32 @json_variant_new_array(i32**, i32**, i64) #1

declare dso_local i32 @json_variant_unref_many(i32**, i64) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
