; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_unref_many.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_unref_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_variant_unref_many(i32** %0, i64 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = icmp ne i32** %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %25, %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32**, i32*** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @json_variant_unref(i32* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %15

28:                                               ; preds = %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @json_variant_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
