; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refdb.c_parse_ref_formats.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refdb.c_parse_ref_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_map = type { i32 }
%struct.ref_format = type { i32 }

@reference_type_map = common dso_local global %struct.enum_map* null, align 8
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_ref_formats(%struct.ref_format*** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_format***, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.enum_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ref_format*** %0, %struct.ref_format**** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.enum_map*, %struct.enum_map** @reference_type_map, align 8
  store %struct.enum_map* %9, %struct.enum_map** %6, align 8
  %10 = load %struct.ref_format***, %struct.ref_format**** %4, align 8
  %11 = load %struct.ref_format**, %struct.ref_format*** %10, align 8
  %12 = icmp ne %struct.ref_format** %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load %struct.enum_map*, %struct.enum_map** @reference_type_map, align 8
  %15 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ref_format** @calloc(i32 %16, i32 8)
  %18 = load %struct.ref_format***, %struct.ref_format**** %4, align 8
  store %struct.ref_format** %17, %struct.ref_format*** %18, align 8
  %19 = load %struct.ref_format***, %struct.ref_format**** %4, align 8
  %20 = load %struct.ref_format**, %struct.ref_format*** %19, align 8
  %21 = icmp ne %struct.ref_format** %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.ref_format***, %struct.ref_format**** %4, align 8
  %35 = load %struct.ref_format**, %struct.ref_format*** %34, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.enum_map*, %struct.enum_map** %6, align 8
  %42 = call i32 @parse_ref_format_arg(%struct.ref_format** %35, i8* %40, %struct.enum_map* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %46, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ref_format** @calloc(i32, i32) #1

declare dso_local i32 @parse_ref_format_arg(%struct.ref_format**, i8*, %struct.enum_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
