; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_net.c_GetShortName.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_net.c_GetShortName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetShortName.short_name = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%3F\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @GetShortName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetShortName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @safe_strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %73

12:                                               ; preds = %1
  %13 = load i64, i64* %6, align 8
  %14 = sub i64 %13, 2
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %29, %12
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %5, align 8
  br label %15

32:                                               ; preds = %25, %15
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = call i32 @static_strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 0), i8* %35)
  %37 = call i8* @strstr(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %32
  %43 = call i8* @strstr(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %46, %42
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %69, %48
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 0))
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 63
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %53
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  br label %72

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %49

72:                                               ; preds = %65, %49
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @GetShortName.short_name, i64 0, i64 0), i8** %2, align 8
  br label %73

73:                                               ; preds = %72, %11
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i64 @safe_strlen(i8*) #1

declare dso_local i32 @static_strcpy(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
