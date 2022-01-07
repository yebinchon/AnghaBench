; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpNew.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_HDR_SIZE = common dso_local global i32 0, align 4
@LP_EOF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpNew() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @LP_HDR_SIZE, align 4
  %4 = add nsw i32 %3, 1
  %5 = call i8* @lp_malloc(i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %22

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @LP_HDR_SIZE, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @lpSetTotalBytes(i8* %10, i32 %12)
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @lpSetNumElements(i8* %14, i32 0)
  %16 = load i8, i8* @LP_EOF, align 1
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @LP_HDR_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  %21 = load i8*, i8** %2, align 8
  store i8* %21, i8** %1, align 8
  br label %22

22:                                               ; preds = %9, %8
  %23 = load i8*, i8** %1, align 8
  ret i8* %23
}

declare dso_local i8* @lp_malloc(i32) #1

declare dso_local i32 @lpSetTotalBytes(i8*, i32) #1

declare dso_local i32 @lpSetNumElements(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
