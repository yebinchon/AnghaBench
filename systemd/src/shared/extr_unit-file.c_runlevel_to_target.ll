; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_unit-file.c_runlevel_to_target.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_unit-file.c_runlevel_to_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rd.\00", align 1
@rlmap_initrd = common dso_local global i8** null, align 8
@rlmap = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @runlevel_to_target(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %53

9:                                                ; preds = %1
  %10 = call i64 (...) @in_initrd()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @startswith(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %53

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %9
  %20 = call i64 (...) @in_initrd()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8**, i8*** @rlmap_initrd, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i8**, i8*** @rlmap, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8** [ %23, %22 ], [ %25, %24 ]
  store i8** %27, i8*** %4, align 8
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = load i8**, i8*** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = load i8**, i8*** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @streq(i8* %35, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i8**, i8*** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %53

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 2
  store i64 %51, i64* %5, align 8
  br label %28

52:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %42, %17, %8
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i64 @in_initrd(...) #1

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
