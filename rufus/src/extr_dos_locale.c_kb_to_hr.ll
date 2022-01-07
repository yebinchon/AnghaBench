; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_dos_locale.c_kb_to_hr.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_dos_locale.c_kb_to_hr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kb_hr_list = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @kb_to_hr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kb_to_hr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i8***, i8**** @kb_hr_list, align 8
  %8 = call i32 @ARRAYSIZE(i8*** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = load i8*, i8** %3, align 8
  %12 = load i8***, i8**** @kb_hr_list, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8**, i8*** %12, i64 %14
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @safe_strcmp(i8* %11, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load i8***, i8**** @kb_hr_list, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8**, i8*** %22, i64 %24
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  br label %40

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load i32, i32* %4, align 4
  %35 = load i8***, i8**** @kb_hr_list, align 8
  %36 = call i32 @ARRAYSIZE(i8*** %35)
  %37 = icmp slt i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %33, %21
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i32 @ARRAYSIZE(i8***) #1

declare dso_local i64 @safe_strcmp(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
