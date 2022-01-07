; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_br.c_read_mbr_copy_protect_bytes_explained.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_br.c_read_mbr_copy_protect_bytes_explained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"not copy protected\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"copy protected\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unknown value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_mbr_copy_protect_bytes_explained(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @read_mbr_copy_protect_bytes(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 23130, label %10
  ]

8:                                                ; preds = %1
  %9 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %2, align 8
  br label %14

12:                                               ; preds = %1
  %13 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %12, %10, %8
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

declare dso_local i32 @read_mbr_copy_protect_bytes(i32*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
