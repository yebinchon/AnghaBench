; ModuleID = '/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_main2.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_main2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"usage: %s arm_pe_file\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ok.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @main2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main2(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 1, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @load(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %38

20:                                               ; preds = %13
  %21 = call i64 (...) @read()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 3, i32* %3, align 4
  br label %38

24:                                               ; preds = %20
  %25 = call i32 @dump(i8 signext 48)
  %26 = call i64 (...) @import()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 4, i32* %3, align 4
  br label %38

29:                                               ; preds = %24
  %30 = call i32 @dump(i8 signext 49)
  %31 = call i64 (...) @reloc()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 5, i32* %3, align 4
  br label %38

34:                                               ; preds = %29
  %35 = call i32 @dump(i8 signext 50)
  %36 = call i32 (...) @call()
  %37 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %33, %28, %23, %19, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i64 @load(i8*) #1

declare dso_local i64 @read(...) #1

declare dso_local i32 @dump(i8 signext) #1

declare dso_local i64 @import(...) #1

declare dso_local i64 @reloc(...) #1

declare dso_local i32 @call(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
