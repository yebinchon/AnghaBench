; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"JSON field '%s' is not a string.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate string: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_dispatch_string(i8* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %10, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @assert(i8** %14)
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @assert(i8** %16)
  %18 = load i8**, i8*** %7, align 8
  %19 = call i64 @json_variant_is_null(i8** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @mfree(i8* %23)
  %25 = load i8**, i8*** %10, align 8
  store i8* %24, i8** %25, align 8
  store i32 0, i32* %5, align 4
  br label %51

26:                                               ; preds = %4
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @json_variant_is_string(i8** %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @SYNTHETIC_ERRNO(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strna(i8* %35)
  %37 = call i32 (i8**, i32, i32, i8*, ...) @json_log(i8** %31, i32 %32, i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %5, align 4
  br label %51

38:                                               ; preds = %26
  %39 = load i8**, i8*** %10, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = call i32 @json_variant_string(i8** %40)
  %42 = call i32 @free_and_strdup(i8** %39, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i8**, i8*** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i8**, i32, i32, i8*, ...) @json_log(i8** %46, i32 %47, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %45, %30, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i64 @json_variant_is_null(i8**) #1

declare dso_local i8* @mfree(i8*) #1

declare dso_local i32 @json_variant_is_string(i8**) #1

declare dso_local i32 @json_log(i8**, i32, i32, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i32 @free_and_strdup(i8**, i32) #1

declare dso_local i32 @json_variant_string(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
