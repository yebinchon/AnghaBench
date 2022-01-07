; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_sanitize_filename.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_sanitize_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.sanitize_filename.unauthorized = private unnamed_addr constant [6 x i8] c"*?<>:|", align 1
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not allocate string for sanitized path\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @sanitize_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sanitize_filename(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %8, align 8
  %10 = bitcast [6 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sanitize_filename.unauthorized, i32 0, i32 0), i64 6, i1 false)
  %11 = load i32, i32* @TRUE, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @safe_strdup(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @uprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %56

19:                                               ; preds = %2
  store i64 2, i64* %6, align 8
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i64, i64* %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @safe_strlen(i8* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %27, 6
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 95, i8* %43, align 1
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %26

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %20

54:                                               ; preds = %20
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %54, %17
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @safe_strdup(i8*) #2

declare dso_local i32 @uprintf(i8*) #2

declare dso_local i64 @safe_strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
