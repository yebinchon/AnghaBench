; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3PutVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3PutVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PutVarint(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 127
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 127
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  store i32 1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 16383
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 7
  %20 = and i32 %19, 127
  %21 = or i32 %20, 128
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 127
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  store i32 2, i32* %3, align 4
  br label %34

30:                                               ; preds = %14
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @putVarint64(i8* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %17, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @putVarint64(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
