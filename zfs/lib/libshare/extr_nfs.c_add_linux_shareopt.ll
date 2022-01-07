; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_add_linux_shareopt.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_add_linux_shareopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SA_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@SA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*)* @add_linux_shareopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_linux_shareopt(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = add i64 %22, %25
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 1, %31
  br label %34

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  %36 = sext i32 %35 to i64
  %37 = add i64 %26, %36
  %38 = add i64 %37, 1
  %39 = call i8* @realloc(i8* %20, i64 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %34
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strcat(i8* %54, i8* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcat(i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i8*, i8** %9, align 8
  %67 = load i8**, i8*** %5, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @SA_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %42
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
