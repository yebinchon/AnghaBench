; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_save_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_printercache.c_printercache_save_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @printercache_save_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printercache_save_blob(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %73

13:                                               ; preds = %3
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %73

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @printercache_mkdir(i8* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %73

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 18
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 %28, %31
  %33 = add i64 %32, 22
  %34 = add i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i64 @xmalloc(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* @O_WRONLY, align 4
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_TRUNC, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @open(i8* %42, i32 %47, i32 384)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %24
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @perror(i8* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @xfree(i8* %54)
  br label %73

56:                                               ; preds = %24
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @write(i32 %57, i32* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @perror(i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @unlink(i8* %66)
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @xfree(i8* %71)
  br label %73

73:                                               ; preds = %68, %51, %23, %17, %12
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printercache_mkdir(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
