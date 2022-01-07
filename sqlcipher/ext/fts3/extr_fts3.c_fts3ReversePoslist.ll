; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3ReversePoslist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3ReversePoslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @fts3ReversePoslist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3ReversePoslist(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 -2
  store i8* %9, i8** %5, align 8
  store i8 0, i8* %6, align 1
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ugt i8* %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i1 [ false, %10 ], [ %19, %14 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %10

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ugt i8* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 128
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %28, %24
  %38 = phi i1 [ false, %24 ], [ %36, %28 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %5, align 8
  %42 = load i8, i8* %40, align 1
  store i8 %42, i8* %6, align 1
  br label %24

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ true, %43 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %51
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8**, i8*** %4, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = icmp ugt i8* %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %51
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %68, %62, %58
  br label %72

72:                                               ; preds = %79, %71
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %72

80:                                               ; preds = %72
  %81 = load i8*, i8** %5, align 8
  %82 = load i8**, i8*** %4, align 8
  store i8* %81, i8** %82, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
