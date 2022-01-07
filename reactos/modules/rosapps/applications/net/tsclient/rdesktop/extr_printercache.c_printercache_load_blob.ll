; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_load_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_load_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @printercache_load_blob(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load i32**, i32*** %5, align 8
  store i32* null, i32** %15, align 8
  %16 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %72

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 18
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = add i64 %24, %27
  %29 = add i64 %28, 22
  %30 = add i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = call i64 @xmalloc(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i32 @open(i8* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %20
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @xfree(i8* %44)
  store i32 0, i32* %3, align 4
  br label %72

46:                                               ; preds = %20
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @fstat(i32 %47, %struct.stat* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @xfree(i8* %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @close(i32 %53)
  store i32 0, i32* %3, align 4
  br label %72

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @xmalloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32**, i32*** %5, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32**, i32*** %5, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @read(i32 %61, i32* %63, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @xfree(i8* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %55, %50, %43, %19, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
