; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_local_getline.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_local_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @local_getline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @local_getline(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 100, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %90

14:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %14, %83
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 100
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 100
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @realloc(i8* %24, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %90

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @fgets(i8* %35, i32 %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @free(i8* %46)
  store i8* null, i8** %3, align 8
  br label %90

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  br label %84

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %61, %53
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  br label %84

83:                                               ; preds = %67, %64
  br label %15

84:                                               ; preds = %76, %48
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i8* @realloc(i8* %85, i32 %87)
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %3, align 8
  br label %90

90:                                               ; preds = %84, %45, %29, %13
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
