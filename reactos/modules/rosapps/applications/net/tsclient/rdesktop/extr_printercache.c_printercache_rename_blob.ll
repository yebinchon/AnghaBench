; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_rename_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_rename_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s/.rdesktop/rdpdr/%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s,%s\0A\00", align 1
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @printercache_rename_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printercache_rename_blob(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @False, align 4
  store i32 %13, i32* %3, align 4
  br label %74

14:                                               ; preds = %2
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @False, align 4
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  br label %32

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %28, %26 ], [ %31, %29 ]
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 18
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @xmalloc(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @xmalloc(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @rename(i8* %58, i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %32
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @xfree(i8* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @xfree(i8* %65)
  %67 = load i32, i32* @False, align 4
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %32
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @xfree(i8* %69)
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @xfree(i8* %71)
  %73 = load i32, i32* @True, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %62, %18, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
