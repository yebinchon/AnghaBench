; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_get_process_exe.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_get_process_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"exe\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (deleted)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_process_exe(i64 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i8* @procfs_file_alloca(i64 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @get_process_link_contents(i8* %15, i8** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @endswith(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @procfs_file_alloca(i64, i8*) #1

declare dso_local i32 @get_process_link_contents(i8*, i8**) #1

declare dso_local i8* @endswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
