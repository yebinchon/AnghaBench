; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpFirst.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_HDR_SIZE = common dso_local global i32 0, align 4
@LP_EOF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpFirst(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @LP_HDR_SIZE, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @LP_EOF, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
