; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_print_extracted_file.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_print_extracted_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Extracting: %s\0A\00", align 1
@MSG_000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @print_extracted_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_extracted_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %77

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %29, %10
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 92, i8* %27, align 1
  br label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @SizeToHumanReadable(i32 %36, i32 %37, i32 %38)
  %40 = call i32 @safe_sprintf(i8* %35, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @uprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @SizeToHumanReadable(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @safe_sprintf(i8* %45, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @MSG_000, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @PrintStatus(i32 0, i32 %51, i8* %52)
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %70, %32
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 92
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i8*, i8** %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 47, i8* %68, align 1
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %54

73:                                               ; preds = %54
  %74 = load i8*, i8** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %73, %9
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @safe_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @SizeToHumanReadable(i32, i32, i32) #1

declare dso_local i32 @uprintf(i8*, i8*) #1

declare dso_local i32 @PrintStatus(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
