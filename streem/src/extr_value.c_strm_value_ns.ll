; ModuleID = '/home/carl/AnghaBench/streem/src/extr_value.c_strm_value_ns.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_value.c_strm_value_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_misc = type { i32* }

@strm_ns_array = common dso_local global i32* null, align 8
@strm_ns_string = common dso_local global i32* null, align 8
@strm_ns_number = common dso_local global i32* null, align 8
@STRM_TAG_PTR = common dso_local global i64 0, align 8
@STRM_PTR_AUX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @strm_value_ns(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.strm_misc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @strm_array_p(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @strm_ary_ns(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %2, align 8
  br label %52

16:                                               ; preds = %9
  %17 = load i32*, i32** @strm_ns_array, align 8
  store i32* %17, i32** %2, align 8
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @strm_string_p(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** @strm_ns_string, align 8
  store i32* %23, i32** %2, align 8
  br label %52

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @strm_number_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32*, i32** @strm_ns_number, align 8
  store i32* %29, i32** %2, align 8
  br label %52

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @strm_value_tag(i32 %31)
  %33 = load i64, i64* @STRM_TAG_PTR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.strm_misc* @strm_ptr(i32 %36)
  store %struct.strm_misc* %37, %struct.strm_misc** %5, align 8
  %38 = load %struct.strm_misc*, %struct.strm_misc** %5, align 8
  %39 = icmp ne %struct.strm_misc* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32* null, i32** %2, align 8
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.strm_misc*, %struct.strm_misc** %5, align 8
  %43 = call i64 @strm_ptr_type(%struct.strm_misc* %42)
  %44 = load i64, i64* @STRM_PTR_AUX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.strm_misc*, %struct.strm_misc** %5, align 8
  %48 = getelementptr inbounds %struct.strm_misc, %struct.strm_misc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %2, align 8
  br label %52

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %30
  store i32* null, i32** %2, align 8
  br label %52

52:                                               ; preds = %51, %46, %40, %28, %22, %16, %14
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i64 @strm_array_p(i32) #1

declare dso_local i32* @strm_ary_ns(i32) #1

declare dso_local i64 @strm_string_p(i32) #1

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local i64 @strm_value_tag(i32) #1

declare dso_local %struct.strm_misc* @strm_ptr(i32) #1

declare dso_local i64 @strm_ptr_type(%struct.strm_misc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
