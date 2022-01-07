; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_mkdir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%s/.rdesktop\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"/rdpdr\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @printercache_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printercache_mkdir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 18
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = add i64 %10, %13
  %15 = add i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i64 @xmalloc(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @mkdir(i8* %22, i32 448)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EEXIST, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @perror(i8* %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @xfree(i8* %32)
  %34 = load i32, i32* @False, align 4
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %25, %2
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcat(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @mkdir(i8* %38, i32 448)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EEXIST, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @perror(i8* %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @xfree(i8* %48)
  %50 = load i32, i32* @False, align 4
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %41, %35
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strcat(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strcat(i8* %54, i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @mkdir(i8* %57, i32 448)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EEXIST, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @perror(i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @xfree(i8* %67)
  %69 = load i32, i32* @False, align 4
  store i32 %69, i32* %3, align 4
  br label %74

70:                                               ; preds = %60, %51
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @xfree(i8* %71)
  %73 = load i32, i32* @True, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %64, %45, %29
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
