; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_ft_hash.c_compareFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_ft_hash.c_compareFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* (i32)* @compareFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 (i8*, i32, i8*, i32)* @compareFunction(i32 %0) #0 {
  %2 = alloca i32 (i8*, i32, i8*, i32)*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 128
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 (i8*, i32, i8*, i32)* @strCompare, i32 (i8*, i32, i8*, i32)** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 131
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  store i32 (i8*, i32, i8*, i32)* @binCompare, i32 (i8*, i32, i8*, i32)** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %2, align 8
  ret i32 (i8*, i32, i8*, i32)* %13
}

declare dso_local i32 @strCompare(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @binCompare(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
