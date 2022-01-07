; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_tmpfile-util.c_open_tmpfile_unlinkable.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_tmpfile-util.c_open_tmpfile_unlinkable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@O_TMPFILE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"/systemd-tmp-XXXXXX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_tmpfile_unlinkable(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = call i32 @tmp_dir(i8** %4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %11
  br label %26

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @isempty(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @O_TMPFILE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_EXCL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IRUSR, align 4
  %34 = load i32, i32* @S_IWUSR, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @open(i8* %27, i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %26
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strjoina(i8* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @mkostemp_safe(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @unlink(i8* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %48, %39, %22, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @tmp_dir(i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i32 @mkostemp_safe(i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
