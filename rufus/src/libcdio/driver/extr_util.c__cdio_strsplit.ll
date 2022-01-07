; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_util.c__cdio_strsplit.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_util.c__cdio_strsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @_cdio_strsplit(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  store i8** null, i8*** %6, align 8
  %10 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 2, i1 false)
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cdio_assert(i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8, i8* %4, align 1
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @cdio_assert(i32 %21)
  store i32 1, i32* %5, align 4
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %39, %2
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %28
  br label %24

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i8** @calloc(i32 %42, i32 8)
  store i8** %43, i8*** %6, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = icmp ne i8** %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @cdio_assert(i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %59, %40
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i8* [ null, %51 ], [ %53, %52 ]
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %57 = call i8* @strtok(i8* %55, i8* %56)
  store i8* %57, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strdup(i8* %60)
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  store i8* %61, i8** %66, align 8
  br label %48

67:                                               ; preds = %54
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8**, i8*** %6, align 8
  ret i8** %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdio_assert(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
