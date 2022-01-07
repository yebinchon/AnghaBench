; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_helpers.c_check_set.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_helpers.c_check_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.results_s = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"- entry %zu offset %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.results_s*, i64, i64, i32* (i32*, i32*)*)* @check_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_set(i32* %0, i32* %1, %struct.results_s* %2, i64 %3, i64 %4, i32* (i32*, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.results_s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32* (i32*, i32*)*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.results_s* %2, %struct.results_s** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* (i32*, i32*)* %5, i32* (i32*, i32*)** %13, align 8
  %16 = load i32*, i32** %8, align 8
  store i32* %16, i32** %14, align 8
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %58, %6
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  %21 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* %21(i32* %22, i32* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %63

28:                                               ; preds = %20
  %29 = load i64, i64* %15, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %36)
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %63

42:                                               ; preds = %28
  %43 = load %struct.results_s*, %struct.results_s** %10, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds %struct.results_s, %struct.results_s* %43, i64 %44
  %46 = getelementptr inbounds %struct.results_s, %struct.results_s* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %47, %48
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = icmp ne i64 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %72

58:                                               ; preds = %42
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %15, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %14, align 8
  br label %17

63:                                               ; preds = %41, %27, %17
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %63
  store i32 1, i32* %7, align 4
  br label %72

71:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %70, %57
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @printf(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
