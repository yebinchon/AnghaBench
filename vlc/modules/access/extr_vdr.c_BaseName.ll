; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_BaseName.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_BaseName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIR_SEP_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @BaseName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @BaseName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %4, i64 %7
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ugt i8* %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @DIR_SEP_CHAR, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi i1 [ false, %9 ], [ %20, %13 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %3, align 8
  br label %9

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @DIR_SEP_CHAR, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ false, %27 ], [ %38, %31 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %43, i8** %3, align 8
  br label %27

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
