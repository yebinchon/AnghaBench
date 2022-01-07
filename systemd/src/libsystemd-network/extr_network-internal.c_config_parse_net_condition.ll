; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_config_parse_net_condition.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_config_parse_net_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conditions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_net_condition(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %22, align 4
  %27 = load i8*, i8** %20, align 8
  %28 = bitcast i8* %27 to i32**
  store i32** %28, i32*** %23, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %19, align 8
  %38 = call i64 @isempty(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %10
  %41 = load i32**, i32*** %23, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %22, align 4
  %44 = call i32* @condition_free_list_type(i32* %42, i32 %43)
  %45 = load i32**, i32*** %23, align 8
  store i32* %44, i32** %45, align 8
  store i32 0, i32* %11, align 4
  br label %78

46:                                               ; preds = %10
  %47 = load i8*, i8** %19, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 33
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %25, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8*, i8** %19, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %19, align 8
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %22, align 4
  %60 = load i8*, i8** %19, align 8
  %61 = load i32, i32* %25, align 4
  %62 = call i32* @condition_new(i32 %59, i8* %60, i32 0, i32 %61)
  store i32* %62, i32** %24, align 8
  %63 = load i32*, i32** %24, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = call i32 (...) @log_oom()
  store i32 %66, i32* %11, align 4
  br label %78

67:                                               ; preds = %58
  %68 = load i32**, i32*** %23, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %22, align 4
  %71 = call i32* @condition_free_list_type(i32* %69, i32 %70)
  %72 = load i32**, i32*** %23, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* @conditions, align 4
  %74 = load i32**, i32*** %23, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = call i32 @LIST_PREPEND(i32 %73, i32* %75, i32* %76)
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %67, %65, %40
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32* @condition_free_list_type(i32*, i32) #1

declare dso_local i32* @condition_new(i32, i8*, i32, i32) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @LIST_PREPEND(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
