; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_strreplace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_strreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strreplace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %13, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %90

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  %35 = call i32 @GREEDY_REALLOC(i8* %31, i64 %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %90

38:                                               ; preds = %24
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %13, align 8
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %76, %50, %38
  %42 = load i8*, i8** %14, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @startswith(i8* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %14, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %14, align 8
  %53 = load i8, i8* %51, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  store i8 %53, i8* %54, align 1
  br label %41

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %62, %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %16, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %16, align 8
  %70 = add i64 %69, 1
  %71 = call i32 @GREEDY_REALLOC(i8* %67, i64 %68, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %56
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @mfree(i8* %74)
  store i8* %75, i8** %4, align 8
  br label %90

76:                                               ; preds = %56
  %77 = load i64, i64* %16, align 8
  store i64 %77, i64* %8, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i64, i64* %15, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @stpcpy(i8* %81, i8* %82)
  store i8* %83, i8** %12, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %14, align 8
  br label %41

87:                                               ; preds = %41
  %88 = load i8*, i8** %12, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %13, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %87, %73, %37, %23
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GREEDY_REALLOC(i8*, i64, i64) #1

declare dso_local i32 @startswith(i8*, i8*) #1

declare dso_local i8* @mfree(i8*) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
