; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_zero_label.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_zero_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot zero first %d bytes of '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"could only zero %d/%d bytes of '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zero_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_label(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 4096, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = load i32, i32* @O_EXCL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @open(i8* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* %16, i8* %17, i8* %19)
  store i32 -1, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 4096)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %26 = call i32 @write(i32 %24, i8* %25, i32 4096)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fdatasync(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i8* @strerror(i32 %37)
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* %35, i32 4096, i8* %36, i8* %38)
  store i32 -1, i32* %2, align 4
  br label %50

40:                                               ; preds = %21
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 4096
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* %45, i32 %46, i32 4096, i8* %47)
  store i32 -1, i32* %2, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %33, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fdatasync(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
