; ModuleID = '/home/carl/AnghaBench/systemd/src/busctl/extr_busctl.c_json_transform_dict_array.c'
source_filename = "/home/carl/AnghaBench/systemd/src/busctl/extr_busctl.c_json_transform_dict_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @json_transform_dict_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_transform_dict_array(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32** null, i32*** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32**, i32*** %5, align 8
  %16 = ptrtoint i32** %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %18

18:                                               ; preds = %91, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @sd_bus_message_at_end(i32* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @bus_log_parse_error(i32 %24)
  br label %97

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %92

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sd_bus_message_peek_type(i32* %31, i8* %11, i8** %10)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %30
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 101
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32**, i32*** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 2
  %47 = call i32 @GREEDY_REALLOC(i32** %43, i64 %44, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = call i32 (...) @log_oom()
  store i32 %50, i32* %9, align 4
  br label %97

51:                                               ; preds = %37
  %52 = load i32*, i32** %4, align 8
  %53 = load i8, i8* %11, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @sd_bus_message_enter_container(i32* %52, i8 signext %53, i8* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @bus_log_parse_error(i32 %59)
  br label %97

61:                                               ; preds = %51
  %62 = load i32*, i32** %4, align 8
  %63 = load i32**, i32*** %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = call i32 @json_transform_one(i32* %62, i32** %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %97

70:                                               ; preds = %61
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32**, i32*** %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = call i32 @json_transform_one(i32* %73, i32** %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %97

81:                                               ; preds = %70
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @sd_bus_message_exit_container(i32* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @bus_log_parse_error(i32 %89)
  br label %97

91:                                               ; preds = %81
  br label %18

92:                                               ; preds = %29
  %93 = load i32**, i32*** %5, align 8
  %94 = load i32**, i32*** %8, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @json_variant_new_object(i32** %93, i32** %94, i64 %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %92, %88, %80, %69, %58, %49, %23
  %98 = load i32**, i32*** %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @json_variant_unref_many(i32** %98, i64 %99)
  %101 = load i32**, i32*** %8, align 8
  %102 = call i32 @free(i32** %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %97, %35
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_bus_message_at_end(i32*, i32) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32 @sd_bus_message_peek_type(i32*, i8*, i8**) #1

declare dso_local i32 @GREEDY_REALLOC(i32**, i64, i64) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @json_transform_one(i32*, i32**) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

declare dso_local i32 @json_variant_new_object(i32**, i32**, i64) #1

declare dso_local i32 @json_variant_unref_many(i32**, i64) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
