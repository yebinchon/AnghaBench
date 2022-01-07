; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file.c_values_write.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file.c_values_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MAX = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s:%s%s\00", align 1
@ppsz_keys = common dso_local global i8** null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**)* @values_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @values_write(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @KEY_MAX, align 4
  %11 = zext i32 %10 to i64
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %72, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @KEY_MAX, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %72

24:                                               ; preds = %16
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @vlc_b64_encode(i8* %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %77

35:                                               ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %51, %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @KEY_MAX, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %38

54:                                               ; preds = %49, %38
  %55 = load i32*, i32** %4, align 8
  %56 = load i8**, i8*** @ppsz_keys, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @fprintf(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %61, i8* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %54
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %69, %23
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %12

75:                                               ; preds = %12
  %76 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %65, %33
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @vlc_b64_encode(i8*) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
