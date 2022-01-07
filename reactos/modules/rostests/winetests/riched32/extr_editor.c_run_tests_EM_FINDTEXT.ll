; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_run_tests_EM_FINDTEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_run_tests_EM_FINDTEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.find_s*, i32)* @run_tests_EM_FINDTEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests_EM_FINDTEXT(i32 %0, i8* %1, %struct.find_s* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.find_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.find_s* %2, %struct.find_s** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %31, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.find_s*, %struct.find_s** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.find_s, %struct.find_s* %17, i64 %19
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @check_EM_FINDTEXT(i32 %15, i8* %16, %struct.find_s* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.find_s*, %struct.find_s** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.find_s, %struct.find_s* %25, i64 %27
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @check_EM_FINDTEXTEX(i32 %23, i8* %24, %struct.find_s* %28, i32 %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local i32 @check_EM_FINDTEXT(i32, i8*, %struct.find_s*, i32) #1

declare dso_local i32 @check_EM_FINDTEXTEX(i32, i8*, %struct.find_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
