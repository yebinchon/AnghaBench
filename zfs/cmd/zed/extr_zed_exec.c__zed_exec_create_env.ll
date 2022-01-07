; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_exec.c__zed_exec_create_env.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_exec.c__zed_exec_create_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*)* @_zed_exec_create_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @_zed_exec_create_env(i32* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @zed_strings_count(i32* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @zed_strings_first(i32* %19)
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %30, %1
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @zed_strings_next(i32* %31)
  store i8* %32, i8** %9, align 8
  br label %21

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @calloc(i32 1, i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8** null, i8*** %2, align 8
  br label %89

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @zed_strings_first(i32* %47)
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %71, %39
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %53, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %52
  %72 = load i32*, i32** %3, align 8
  %73 = call i8* @zed_strings_next(i32* %72)
  store i8* %73, i8** %9, align 8
  br label %49

74:                                               ; preds = %49
  %75 = load i8**, i8*** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* null, i8** %78, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8*, i8** %8, align 8
  %84 = icmp eq i8* %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i8*, i8** %6, align 8
  %88 = bitcast i8* %87 to i8**
  store i8** %88, i8*** %2, align 8
  br label %89

89:                                               ; preds = %74, %38
  %90 = load i8**, i8*** %2, align 8
  ret i8** %90
}

declare dso_local i32 @zed_strings_count(i32*) #1

declare dso_local i8* @zed_strings_first(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zed_strings_next(i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
