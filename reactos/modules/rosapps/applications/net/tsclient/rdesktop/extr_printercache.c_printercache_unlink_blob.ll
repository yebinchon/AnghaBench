; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_unlink_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_unlink_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s/.rdesktop/rdpdr/%s\00", align 1
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @printercache_unlink_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printercache_unlink_blob(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @False, align 4
  store i32 %9, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @False, align 4
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 18
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = add i64 %20, %23
  %25 = add i64 %24, 22
  %26 = add i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i64 @xmalloc(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @unlink(i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %16
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @xfree(i8* %38)
  %40 = load i32, i32* @False, align 4
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %16
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @rmdir(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @xfree(i8* %50)
  %52 = load i32, i32* @False, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %41
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @xfree(i8* %54)
  %56 = load i32, i32* @True, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %49, %37, %14, %8
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
