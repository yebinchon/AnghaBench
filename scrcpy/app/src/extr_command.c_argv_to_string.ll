; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_command.c_argv_to_string.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_command.c_argv_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i8*, i64)* @argv_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @argv_to_string(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  %23 = add i64 %22, 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 4
  %30 = icmp ult i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = call i32 @memcpy(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3)
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 3
  store i64 %38, i64* %7, align 8
  br label %72

39:                                               ; preds = %15
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %52

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 44, i8* %47, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 32, i8* %51, align 1
  br label %52

52:                                               ; preds = %43, %42
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 91, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  %69 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 93, i8* %69, align 1
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %4, align 8
  br label %11

72:                                               ; preds = %26, %11
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ult i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
