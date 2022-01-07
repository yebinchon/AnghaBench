; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mktree/extr_mktree.c_crtfile.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mktree/extr_mktree.c_crtfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"0123456789ABCDF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"open(%s, O_CREAT|O_RDWR, 0777) failed.\0A[%d]: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"write(fd, pbuf, 1024) failed.\0A[%d]: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"user.xattr\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"fsetxattr(fd, \22xattr\22, pbuf, 1024, 0) failed.\0A[%d]: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @crtfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crtfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %1
  store i32 1024, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @valloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sdiv i32 %19, %21
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = mul nsw i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @snprintf(i8* %32, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* @O_CREAT, align 4
  %44 = load i32, i32* @O_RDWR, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @open(i8* %42, i32 %45, i32 511)
  store i32 %46, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %2, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i8* @strerror(i32 %52)
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51, i8* %53)
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable

57:                                               ; preds = %41
  %58 = load i32, i32* %3, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @write(i32 %58, i8* %59, i32 1024)
  %61 = icmp slt i32 %60, 1024
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i8* @strerror(i32 %65)
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %64, i8* %66)
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @exit(i32 %68) #3
  unreachable

70:                                               ; preds = %57
  %71 = load i32, i32* %3, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @fsetxattr(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32 1024, i32 0)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %77, i8* %79)
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @exit(i32 %81) #3
  unreachable

83:                                               ; preds = %70
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @free(i8* %86)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i64 @valloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i64 @fsetxattr(i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
