; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_local_href.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_local_href.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_hrefmap = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"typelib href %d mapped to local href %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sltg_hrefmap*, i32)* @local_href to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_href(%struct.sltg_hrefmap* %0, i32 %1) #0 {
  %3 = alloca %struct.sltg_hrefmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sltg_hrefmap* %0, %struct.sltg_hrefmap** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %10 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %15 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %7

29:                                               ; preds = %23, %7
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  %33 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %34 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %37 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %42 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %45 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32* @xrealloc(i32* %43, i32 %50)
  %52 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %53 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  br label %58

54:                                               ; preds = %32
  %55 = call i32* @xmalloc(i32 4)
  %56 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %57 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %54, %40
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %61 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %64 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 %59, i32* %67, align 4
  %68 = load %struct.sltg_hrefmap*, %struct.sltg_hrefmap** %3, align 8
  %69 = getelementptr inbounds %struct.sltg_hrefmap, %struct.sltg_hrefmap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %58, %29
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @chat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 2
  ret i32 %77
}

declare dso_local i32* @xrealloc(i32*, i32) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @chat(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
