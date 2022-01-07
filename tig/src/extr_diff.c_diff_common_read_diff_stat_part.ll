; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_read_diff_stat_part.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_read_diff_stat_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_stat_context = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_stat_context*, i8, i32)* @diff_common_read_diff_stat_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_stat_context*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.diff_stat_context* %0, %struct.diff_stat_context** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 124
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %14 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %6, align 1
  %17 = call i8* @strrchr(i8* %15, i8 signext %16)
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %20 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %6, align 1
  %23 = call i8* @strchr(i8* %21, i8 signext %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i8* [ %17, %12 ], [ %23, %18 ]
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %46

29:                                               ; preds = %24
  %30 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %33 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %31 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @diff_common_add_cell(%struct.diff_stat_context* %30, i32 %38, i32 0)
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %42 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %45 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %29, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @diff_common_add_cell(%struct.diff_stat_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
