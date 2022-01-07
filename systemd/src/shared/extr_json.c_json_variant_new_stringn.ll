; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_new_stringn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_new_stringn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_EMPTY_STRING = common dso_local global %struct.TYPE_8__* null, align 8
@JSON_VARIANT_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_variant_new_stringn(%struct.TYPE_8__** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @assert_return(%struct.TYPE_8__** %10, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.TYPE_8__** @IN_SET(i64 %17, i32 0, i64 -1)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @assert_return(%struct.TYPE_8__** %18, i32 %20)
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %23 = call i32 @json_variant_new_null(%struct.TYPE_8__** %22)
  store i32 %23, i32* %4, align 4
  br label %68

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %7, align 8
  br label %39

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @memchr(i8* %31, i32 0, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @JSON_VARIANT_MAGIC_EMPTY_STRING, align 8
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %44, align 8
  store i32 0, i32* %4, align 4
  br label %68

45:                                               ; preds = %39
  %46 = load i32, i32* @JSON_VARIANT_STRING, align 4
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  %49 = call i32 @json_variant_new(%struct.TYPE_8__** %8, i32 %46, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %45
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @memcpy(i64* %57, i8* %58, i64 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %54, %52, %42, %35, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert_return(%struct.TYPE_8__**, i32) #1

declare dso_local %struct.TYPE_8__** @IN_SET(i64, i32, i64) #1

declare dso_local i32 @json_variant_new_null(%struct.TYPE_8__**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memchr(i8*, i32, i64) #1

declare dso_local i32 @json_variant_new(%struct.TYPE_8__**, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
