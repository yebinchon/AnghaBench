; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_dirname_malloc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_dirname_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dirname_malloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @dirname(i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %2, align 8
  br label %30

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %24, %22, %13
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
