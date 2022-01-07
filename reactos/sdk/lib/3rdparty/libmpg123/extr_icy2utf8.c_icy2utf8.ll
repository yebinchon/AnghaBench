; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_icy2utf8.c_icy2utf8.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_icy2utf8.c_icy2utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tblofs = common dso_local global i64* null, align 8
@cp1252_utf8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @icy2utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @is_utf8(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @compat_strdup(i8* %23)
  store i8* %24, i8** %3, align 8
  br label %79

25:                                               ; preds = %18, %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = mul i64 %30, 3
  %32 = call i64* @malloc(i64 %31)
  store i64* %32, i64** %12, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %79

35:                                               ; preds = %25
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %41, i64 %42
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i64*, i64** @tblofs, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %58, %40
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** @tblofs, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load i64*, i64** @cp1252_utf8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %59, i64 %60
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %67, align 8
  br label %50

68:                                               ; preds = %50
  br label %36

69:                                               ; preds = %36
  %70 = load i64*, i64** %12, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i8* @realloc(i64* %70, i64 %71)
  store i8* %72, i8** %13, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64*, i64** %12, align 8
  %76 = call i32 @free(i64* %75)
  store i8* null, i8** %3, align 8
  br label %79

77:                                               ; preds = %69
  %78 = load i8*, i8** %13, align 8
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %77, %74, %34, %22
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

declare dso_local i64 @is_utf8(i8*) #1

declare dso_local i8* @compat_strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i8* @realloc(i64*, i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
