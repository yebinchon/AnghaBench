; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_xmalloc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_xmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Virtual memory exhausted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ugt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i64, i64* %2, align 8
  %9 = call i8* @malloc(i64 %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @memset(i8* %15, i32 85, i64 %16)
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
